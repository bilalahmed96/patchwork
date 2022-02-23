@extends('layouts.app')

@section('head')
    <Style>
      .dashboard-page  .dashboard-sidebar {
            padding-top: 0 !important;
        }
    </Style>
@endsection

@section('content')
<section class="page-title">
    <div class="auto-container">
        <div class="title-outer">
            <h1>My Companies</h1>
            <ul class="page-breadcrumb">
                <li><a href="{{ home_url() }}">{{ __("Home") }}</a></li>
                <li>My Companies</li>
            </ul>
        </div>
        
      
    </div>
</section>

<section class="dashboard-content  dashboard-page">
    <div class="auto-container">
        <div class="row">
            @include('Layout::parts.dashboard-sidebar')
            <div class="col-lg-9 col-md-12">
                 <div class="dashboard-box margin-top-0">
                    <!-- Headline -->
                    <div class="headline">
                        <h3><i class="icon-feather-box"></i> My Company</h3>
                    </div>
                    <div class="content with-padding">
                                             
                                                <div class="row">
                            <div class="col-xl-4">
                                <form method="get" action="">
                                <div class="input-with-icon">
                                    <input class="with-border" type="text" name="keywords" value="" placeholder="Search...">
                                    <i class="icon-feather-search"></i>
                                </div>
                                </form>
                            </div>
                            <div class="col-xl-8 text-right">
                                                                
                              
                                <a href="https://stagging.patchworkhub.org/create-company" class="button ripple-effect">Create New Company</a>
                                                              
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table id="js-table-list" class="basic-table dashboard-box-list">
                                <tbody><tr>
                                    <th class="big-width">Name</th>
                                    <th class="small-width">jobs</th>
                                    <th class="small-width">Actions</th>
                                </tr>
                                                               
                                 @if(!empty($rows))
                                    @foreach($rows as $row)
                                            <tr class="company-row">
                                    <td>
                                        <div class="job-listing">
                                            <div class="job-listing-details">
                                                <div class="job-listing-company-logo">
                                                    <img src="https://stagging.patchworkhub.org/storage/products/164396557961fcec8b471cc.png" alt="Patchwork Images">
                                                </div>
                                                <div class="job-listing-description">
                                                    <a href=""><h3 class="job-listing-title">{{ $row->name }}</h3></a>
                                                    <p class="job-listing-text">TEST</p>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td><a href=""><strong>0</strong></a></td>
                                    <td>
                                        <a href="{{ route('company.admin.edit', $row->id) }}" class="button gray ripple-effect ico" data-tippy-placement="top" title="Edit"><i class="fas fa-edit"></i></a>
                                        <a href="#" class="button gray ripple-effect ico ajax-delete-company" data-tippy-placement="top" title="Delete"><i class="fas fa-trash-alt"></i></a>
                                    </td>
                                </tr>
                                    @endforeach
                                 @else
                                     <tr>
                                        <td colspan="3" class="text-center">No Active Company Found</td>
                                     </tr>
                                 @endif
                                
                                                            </tbody></table>
                        </div>
                       
                    </div>
                </div>  
            </div>
          
            
        </div>
        
       
    </div>
</section>


@endsection