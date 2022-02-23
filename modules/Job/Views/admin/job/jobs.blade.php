@extends('layouts.app')

@section('content')

<!--Page Title-->
<section class="page-title">
    <div class="auto-container">
        <div class="title-outer">
            <h1>{{ $title??'' }}</h1>
            <ul class="page-breadcrumb">
                <li><a href="{{ home_url() }}">{{ __("Home") }}</a></li>
                <li>{{ $title??'' }}</li>
            </ul>
        </div>
        
      
    </div>
</section>

<div class="section gray padding-bottom-50 contact-card">
    <div class="container">
        <div class="row">
             @include('Layout::parts.dashboard-sidebar')
            
            <div class="col-lg-9 col-md-12">
                <div class="dashboard-box margin-top-0">
                    <!-- Headline -->
                    <div class="headline">
                        <h3><i class="icon-feather-briefcase"></i> {{ $title??'' }}</h3>
                    </div>
                    <div class="content with-padding">
                        <div class="row margin-bottom-10">
                            <div class="col-xl-4">
                                <form method="get" action="{{ route('job.admin.index') }}">
                                <div class="input-with-icon">
                                     @if(is_admin())
                                        <?php
                                        $company = \Modules\Company\Models\Company::find(Request()->input('company_id'));
                                        \App\Helpers\AdminForm::select2('company_id', [
                                            'configs' => [
                                                'ajax'        => [
                                                    'url' => route('company.admin.getForSelect2'),
                                                    'dataType' => 'json'
                                                ],
                                                'allowClear'  => true,
                                                'placeholder' => __('-- Select Company --')
                                            ]
                                        ], !empty($company->id) ? [
                                            $company->id,
                                            $company->name . ' (#' . $company->id . ')'
                                        ] : false)
                                        ?>
                                    @endif
                                    <input class="with-border" name="s" value="{{ Request()->input('s') }}" type="text" placeholder="Search..." style="font-family: 'comfortaa !important; ">
                                    <i class="icon-feather-search"></i>
                                </div>
                                </form>
                            </div>
                        </div>
                        
                        @include('admin.message')
                        <div class="table-responsive">
                            <table id="js-table-list" class="basic-table dashboard-box-list">
                                <tbody><tr>
                                    <th class="big-width">jobs</th>
                                    <th class="small-width">Status</th>
                                    <th class="small-width">Actions</th>
                                </tr>
                             
                                 @if(count($rows) > 0)
                                 
                                 @foreach($rows as $row)
                                    <tr class="ajax-item-listing" data-item-id="352">
                                    <td>
                                        <div class="job-listing">
                                            <div class="job-listing-details">
                                                <div class="job-listing-description">
                                                <h4 class="job-listing-company">{{$row->company->name ?? ''}}</h4>
                                                <h3 class="job-listing-title margin-bottom-5">
                                                        <a href="{{ $row->getEditUrl() }}">{{$row->title}}</a>
                                                        <label class="label-wrap hidden-sm hidden-xs">
                                                                                                                                                                                                                                            </label>
                                                    </h3>
                                                    <div class="job-listing-footer">
                                                        <ul>
                                                            <li><i class="la la-map-marker"></i> {{$row->location->name ?? ''}}</li>
                                                                                                                        <li><i class="la la-credit-card"></i> {{ $row->getSalary() }} </li>
                                                                                                                        <li><i class="la la-clock-o"></i> {{ $row->timeAgo() }}</li>
                                                            <li><i class="la la-suitcase"></i> {{ $row->jobType->name ?? '' }}</li>
                                                            <li><i class="la la-calendar-times-o"></i> Expiring:{{ date('d F, Y', strtotime($row->expiration_date)) }}</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                         <span class="badge  badge-{{ $row->status }}">{{ $row->status }}</span>                                                                                                                                                                                                    </td>
                                    <td>
                                        <a href="{{ route('job.admin.allApplicants', $row->id) }}" class="button gray ripple-effect ico" data-tippy-placement="top" title="Your Applicants" style=""><i class="fas fa-users " style="color: #fff !important"></i></a>
                                        <a href="{{ $row->getEditUrl() }}" class="button gray ripple-effect ico" data-tippy-placement="top" title="Edit" style=""><i class="fas fa-edit" style="color: #fff !important"></i></a>
                                                                                <a href="{{ $row->getDetailUrl()  }}" data-ajax-action="hideItem" class="button gray ripple-effect ico item-js-hide" data-tippy-placement="top" title="Hide" style=""><i class="fas fa-eye" style="color: #fff !important"></i></a>
                                                                                <a href="{{ route('job.admin.delete', $row->id)}}" data-ajax-action="deleteMyAd" class="button gray ripple-effect ico item-js-delete" data-tippy-placement="top" title="Delete" style=""><i class="fas fa-trash-alt" style="color: #fff !important"></i></a>
                                    </td>
                                </tr>
                                @endforeach
                                 @else
                                <tr>
                                    <td colspan="3" class="text-center">No active jobs found.</td>
                                </tr>
                                @endif
                                
                                
                                
                                                            </tbody></table>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <!-- Pagination -->
                                <div class="pagination-container margin-top-20">
                                    <nav class="pagination">
                                       {{$rows->appends(request()->query())->links()}}
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection