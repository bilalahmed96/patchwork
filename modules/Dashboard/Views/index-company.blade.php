@extends('layouts.app')

@section('content')
<section class="dashboard-banner" style="background-image: url('{{ asset('images/background-imgs/Cover photo image.png') }}')">
   
    
    
</section>

<section class="dashboard-content  dashboard-page">
    <div class="auto-container">
        <div class="row">
              <div class="col-lg-3  col-md-12">
             <div class="profile" style="background-image: url({{ asset('images/patchwork/Employer-profile-top-leftt.png') }})">
                                <div class="profile-inner">
                                    <img src="{{ asset('images/patchwork/photo.png') }}">
                                    <p class="name">St. james Places <br> Wealth Management</p>
                                    <p class="grey-tag">Conventry HD</p>
                                </div>
                                <p>Informational Technologies <br> 750+ Employees</p>
                            </div>
            @include('Layout::parts.dashboard-sidebar')
            </div>
            <div class="col-lg-7 col-md-12">
                 <div class="dashboard-box margin-top-10 padding-20 job-seeker">
                   
                            <h6>Welcome Back {{Auth::user()->first_name}}</h6>
                            <p>This is your personalized dashboard where you'll receive updates about your account. You can apply for an open job position or sell your services. Enjoy your new workspace!</p>
                            <div class="dashboard-box-btn">
                                <a href="">Complete account setup</a>
                                <a href="">Complete my free public profile</a>
                            </div>
                 </div>  
                  <div class="dashboard-box margin-top-10 padding-20">
                        <h6>My Jobs: 
                        <a href="" class="action-btn">Action <i class="fas fa-chevron-down"></i>
                            <ul>
                                <li>All</li>
                                <li>Pending Approval</li>
                                <li>Active</li>
                                <li>Draft</li>
                                <li>Expired</li>
                                <li>Resubmitted</li>
                            </ul>
                        </a></h6>
                         <div class="table-responsive">
                            <table id="js-table-list" class="basic-table dashboard-box-list">
                                <tbody><tr>
                                    <th class="big-width">jobs</th>
                                    <th class="small-width">Status</th>
                                    <th class="small-width">Actions</th>
                                </tr>
                               
                                 @if(!empty($rows))
                                 
                                 @foreach($rows as $row)
                                    <tr class="ajax-item-listing" data-item-id="">
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
                  </div>
                  
                   <div class="dashboard-box margin-top-10 padding-20">
                   
                            <h6>Get Inclusive</h6>
                           
                            <div class="inclusive-box">
                                <a href="">Book a call</a>
                                <a href="">Patchworker Placement Scheme</a>
                                <a href="">Exploare Services</a>
                            </div>
                 </div>  
                  <div class="dashboard-box margin-top-10 padding-20">
                   
                            <h6>Membership Credits:</h6>
                           
                            <div class="inclusive-box">
                               <div class="row">
                                   <div class="col-lg-6 col-sm-6 col-left">
                                       Membership:
                                   </div>
                                    <div class="col-lg-6 col-sm-6">
                                      Free/Credits/Partner Monthly
                                   </div>
                                    <div class="col-lg-6 col-sm-6 col-left">
                                       Remaining Job Credit:
                                   </div>
                                    <div class="col-lg-6 col-sm-6">
                                     2/Unlimited
                                   </div>
                                    <div class="col-lg-6 col-sm-6 col-left">
                                      Active Jobs:
                                   </div>
                                    <div class="col-lg-6 col-sm-6">
                                     1
                                   </div>
                                   <div class="col-lg-12 col-sm-12 padding-top-10 paddinh-bottom-10 text-right">
                                       <a href=""> Puchase more job credits</a>
                                   </div>
                               </div>
                            </div>
                 </div>  
            </div>
            <div class="col-lg-2 col-md-12">
                <div class="dashboard-btns">
                    <a href="{{ route('job.post') }}"> Post Job</a>
                    <a href="" class="donate"> Donate to Patchworktogether</a>
                    <a href="{{ route('faqs.index') }}"> Employer FAQ</a>
                </div>
            
               
                    
                </div>
            
        </div>
        
        <div class="row padding-top-30 padding-bottom-30">
            <div class="col-xl-10 content-inner">
                <div class="row justify-content-center">
                    <div class="col-xl-4 col-sm-12">
                        <div class="card">
                            <img src="{{ asset('images/patchwork/How-to-design-accessible-job-roles-photo-only.png') }}">
                            <div class="card-body">
                                <h6>How to design accessible job roles</h6>
                                <p>Essenbtial tips on making sure you are attracting the right talent.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-sm-12">
                        <div class="card">
                            <img src="{{ asset('images/patchwork/How to post a job advert on Patchwork Hub photo only.png') }}">
                            <div class="card-body">
                                <h6>How to post a job advert on Patchwork Hub</h6>
                                <p>A step-by-step guide on setting up an effective job advert.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-sm-12">
                        <div class="card">
                            <img src="{{ asset('images/patchwork/Essential checks for your job description photo only.png') }}">
                            <div class="card-body">
                                <h6>Essential checks for your job description</h6>
                                <p>Make sure your job adverts meet our accessibility standards.</p>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</section>


@endsection