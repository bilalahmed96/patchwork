@extends('layouts.app')

@section('head')
    <style>
        .dashboard-banner{
            height: 500px;
        }
    </style>
@endsection

@section('content')
<section class="dashboard-banner" style="background-image: url('{{ asset('images/background-imgs/Example cover image.png') }}');">

    
    <div class="profile" style="background-image: url({{ asset('images/patchwork/Employer-profile-top-leftt.png') }})">
        <div class="profile-inner">
            <img src="{{ asset('images/patchwork/photo.png') }}">
            <p class="name">St. james Places <br> Wealth Management</p>
            <p class="grey-tag">Conventry HD</p>
        </div>
        <p>Informational Technologies <br> 750+ Employees</p>
    </div>
    
</section>

<section class="dashboard-content  dashboard-page">
    <div class="auto-container">
        <div class="row">
            @include('Layout::parts.dashboard-sidebar')
            <div class="col-lg-7 col-md-12">
                 <div class="dashboard-box margin-top-10 padding-20 job-seeker">
                   
                            <h6>Welcome Back {{Auth::user()->first_name}}</h6>
                            <p>This is where you'll receive updates about your account. Select an option below to get started</p>
                            <div class="dashboard-box-btn">
                                <a href="">Complete my profile</a>
                                <a href="">Take our survey</a>
                            </div>
                 </div>  
                  <div class="dashboard-box margin-top-10 padding-20">
                        <div class="d-flex">
                            <div>
                             <h6>Find a job vacancy</h6>
                            <p>Explore job opportunities from employers hiring on Patchwork Hub</p>
                            </div>
                             <a href="" class="search-dash-jobs">
                            Search all jobs
                            </a>
                        </div>
                       
                        <div class="suggested-jobs py-4">
                            <h6>Suggested Jobs</h6>
                            <div class="py-2 row">
                                @foreach($rows as $row)
                                    <div class="col-lg-6 col-md-12">
                                        <div class="job-item">
                                            <div class="job-type"> {{ $row->jobType->name }}</div>
                                            <div class="job-info d-flex">
                                               <img src=" {!! \Modules\Media\Helpers\FileHelper::url($row->thumbnail_id) !!}" width ="40" height="40">
                                                <div>
                                                    <h6>{{ $row->title }}</h6> 
                                                    @if($row->is_urgent == 1)
                                                    <div class="badge yellow">
                                                        Urgent
                                                    </div>
                                                    @endif
                                                </div>
                                            </div>
                                           
                                            
                                        </div>
                                    </div>
                                    
                                @endforeach
                            </div>
                        </div>
                        
                  </div>
                  
                   <div class="dashboard-box margin-top-10 padding-20">
                    <h6>Find training</h6>
    
                <div class="row justify-content-center training content-inner">
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
                  <div class="dashboard-box margin-top-10 padding-20">
                   
                            <h6>Find support and community</h6>
                           <div class="text-center py-4">
                               <img src="{{ asset('images/patchhub-logo.png') }}" width="305">
                           </div>
                           
                           <div class="community-btns text-center">
                               <a href="" class="button rounded"> Get involved</a>
                               <a href="" class="button rounded"> Workshops and events</a>
                               <a href="" class="button rounded"> Explore our blogs</a>
                           </div>
                           
                          
                 </div>  
                 
                  <div class="dashboard-box margin-top-10 padding-20">
                   
                            <h6>Find work as a Patchworker Seller</h6>
                       
                           
                           <div class="community-btns text-center">
                               <a href="" class="button rounded">Become a Seller </a>
                               
                           </div>
                           
                          
                 </div>  
                 
                 <div class="google-plugin-box">
                     <p class="text-center"> GOOGLE ADVERTIZE PLUGIN </p>
                     <div class="row">
                         <div class="col-lg-6 col-sm-12">
                             <div class="google-plugin"> 
                                 <small> myInterview </small>
                                 <h6>Power Your Hiring with Video Interviews </h6>
                             </div>
                             
                         </div>
                         <div class="col-lg-6 col-sm-12">
                             <div class="google-plugin right text-right ">
                                 <p class="font-weight-bold">Free one month trial</p>
                                 <p>for reed.co.uk customers</p>
                                 
                                 <a href class="button">Try free for 30 days</a>
                             </div>
                         </div>
                     </div>
                     
                 </div>
            </div>
            <div class="col-lg-2 col-md-12">
                <div class="dashboard-btns">
                    <a href="">Sell Your services</a>
                    <a href="" class="donate"> Donate to Patchworktogether</a>
                    <a href=""> Patchworker FAQ</a>
                </div>
            
               
                    
                </div>
            
        </div>
        
        
    </div>
</section>


@endsection

@section('footer')
    <script>
        $(document).ready(function(){
            setTimeout(function(){
                  $('.slick-next.slick-arrow').html('<i class="fas fa-caret-right"></i>')
                  $('.slick-prev.slick-arrow').html('<i class="fas fa-caret-left"></i>')
            }, 1000)
          
         })
    </script>
    
@endsection