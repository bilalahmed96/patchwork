@extends('layouts.app')

@section('head')
    <Style>
      .dashboard-page  .dashboard-sidebar {
            padding-top: 0 !important;
        }
        
    </Style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.20/summernote-bs5.min.css" integrity="sha512-ngQ4IGzHQ3s/Hh8kMyG4FC74wzitukRMIcTOoKT3EyzFZCILOPF0twiXOQn75eDINUfKBYmzYn2AA8DkAk8veQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
@endsection

@section('content')
<section class="page-title">
    <div class="auto-container">
        <div class="title-outer">
            <h1>Dashboard</h1>
            <ul class="page-breadcrumb">
                <li><a href="{{ home_url() }}">{{ __("Home") }}</a></li>
                <li>Dashboard</li>
            </ul>
        </div>
        
      
    </div>
</section>

<section class="dashboard-content  dashboard-page">
    <div class="auto-container">
        <div class="row">
             @include('Layout::parts.dashboard-sidebar')
            <div class="col-lg-9 col-md-12">
               <div class="dashboard-box margin-top-0 contact-card">
                    <div class="content with-padding contact-card">
                        <div class="row dashboard-profile">
                            <div class="col-xl-6 col-md-6 col-sm-12">
                                <div class="dashboard-avatar-box">
                                    
             <img src="https://stagging.patchworkhub.org/storage/profile/small_default_user.png" alt="Name">
                                                                        
                                    <div>
                                        <h2 style="color:#3F2666 !important">{{ Auth::user()->anme }}</h2>
                                        <small>You last logged in at: 18 Feb 2022 09:24</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6 col-md-6 col-sm-12 text-right">
                                                                                                            <span class="dashboard-badge"><strong style="font-family:comfortaa !important;">0</strong><i class="icon-feather-paperclip"></i> My CVs/Resumes</span>
                                                                            <span class="dashboard-badge"><strong style="font-family:comfortaa !important;">0</strong><i class="icon-feather-heart"></i> Saved Jobs</span>
                                                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="dashboard-box js-accordion-item">
                    <!-- Headline -->
                    <div class="headline js-accordion-header contact-card">
                        <h3><i class="icon-feather-user"></i> Account Details</h3>
        
                    </div>
                    <div class="content with-padding js-accordion-body contact-card" >
                     <form method="post" accept-charset="UTF-8" enctype="multipart/form-data" acttion="{{ route('user.account') }}">
                         @csrf
                            <div class="row">
                                <div class="col-xl-6 col-md-12">
                                    <div class="submit-field">
                                        <h5>Name *</h5>

                                        <div class="input-with-icon-left">
                                            <i class="la la-user"></i>
                                            <input type="text" class="with-border" name="first_name" value="{{ $dataUser->first_name }}" style="font-family: 'comfortaa !important; ">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-md-12">
                                    <div class="submit-field">
                                        <h5>Username *</h5>

                                        <div class="input-with-icon-left">
                                            <i class="la la-user"></i>
                                            <input type="text" class="with-border" id="name" name="user_name" value="{{ $dataUser->name }}" onblur="checkAvailabilityUsername()" style="font-family: 'comfortaa !important; ">
                                        </div>
                                        <span id="user-availability-status">
                                            </span>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-md-12">
                                    <div class="submit-field">
                                        <h5>Email address *</h5>

                                        <div class="input-with-icon-left">
                                            <i class="la la-envelope"></i>
                                            <input type="text" class="with-border" id="email" name="email" value="{{ $dataUser->email }}" onblur="checkAvailabilityEmail()" style="font-family: 'comfortaa !important; ">
                                        </div>
                                        <span id="email-availability-status">
                                            </span>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-md-12">
                                    <div class="submit-field">
                                        <h5>Phone Number</h5>

                                        <div class="input-with-icon-left">
                                            <i class="la la-phone"></i>
                                            <input type="text" name="phone" class="with-border margin-bottom-0" value="{{ $dataUser->phone }}" style="font-family: 'comfortaa !important; ">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="submit-field">
                                        <h5>Profile Picture</h5>

                                        <div class="uploadButton">
                                            <input class="uploadButton-input" type="file" accept="images/*" id="avatar" name="avatar">
                                            <label class="uploadButton-button ripple-effect" for="avatar" style="background-color: #fff !important; border: 1px solid #401e66 !important">Upload image</label>
                                            <span class="uploadButton-file-name">we recommend using a square image for best fit</span>
                                        </div>
                                        <span id="email-availability-status">
                                     </span>
                                    </div>
                                     
                                @if(Auth::user()->role_id != 1 && Auth::user()->role_id != 2)                                        
                                    <div class="submit-field gender">
                                        <h5>Gender</h5>
                                        <div class="radio margin-right-20">
                                            <input class="with-gap" type="radio" name="gender" id="Man" value="Man">
                                            <label for="Man"><span class="radio-label"></span>Man</label>
                                        </div>
                                        <div class="radio margin-right-20">
                                            <input class="with-gap" type="radio" name="gender" id="Woman" value="Woman">
                                            <label for="Woman"><span class="radio-label"></span>Woman</label>
                                        </div>
                                        
                                        <div class="radio margin-right-20">
                                            <input class="with-gap" type="radio" name="gender" id="Non-Binary" value="Non-Binary">
                                            <label for="Non-Binary"><span class="radio-label"></span>Non-Binary</label>
                                        </div>
                                        
                                        <div class="radio margin-right-20">
                                            <input class="with-gap" type="radio" name="gender" id="Not-listed" value="Not listed" checked="">
                                            <label for="Not-listed"><span class="radio-label"></span>Other</label>
                                        </div>
                                           <div class="radio margin-right-20">
                                            <input class="with-gap" type="radio" name="gender" id="Prefer-not-to-disclose" value="Prefer not to disclose">
                                            <label for="Prefer-not-to-disclose"><span class="radio-label"></span>Prefer not to disclose</label>
                                        </div>
                                        
                                        
                                    </div>
                                    <div id="other" style="margin-bottom: 5px"><input type="text" name="other" value="" class="with-border margin-bottom-0" style="font-family: 'comfortaa !important; "></div>
                                    
                                    
                                    <div class="submit-field">
                                        <h5>City *</h5>
                                        <select id="jobcity" class="with-border select2-hidden-accessible" name="city" data-size="7" title="Select City" data-select2-id="jobcity" tabindex="-1" aria-hidden="true">
                                            
                                            <option value="0" selected="selected" data-select2-id="2">Select City</option>
                                                                                    </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="1" style="width: auto;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" title="Select City" tabindex="0" aria-disabled="false" aria-labelledby="select2-jobcity-container"><span class="select2-selection__rendered" id="select2-jobcity-container" role="textbox" aria-readonly="true" title="Select City">Select City</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                        
                                          <span id="user-availability-status">
                                            </span>
                                    </div>
                                    <div class="submit-field">
                                        <h5>Address</h5>
                                        <textarea class="with-border" name="address" style="font-family: 'comfortaa !important; "></textarea>
                                    </div>
                                
                                    <div class="submit-field">
                                        <h5>Professional Headline</h5>
                                        <small>This will be shown on your profile and help employers know what type of role you're looking for.</small>
                                        <input type="text" name="tagline" class="with-border margin-bottom-0" value="" style="font-family: 'comfortaa !important; ">
                                    </div>
                                </div>
                                <div class="col-xl-6 col-md-12">
                                    <div class="submit-field">
                                        <h5>Category</h5>
                                        <div class="btn-group bootstrap-select with-border">
                                            <select class="selectpicker with-border" name="category" id="category" data-subcat="" tabindex="-98">
                                            <option>Select</option>
                                            
                                            @foreach($categories as $category)
                                                <option value="{{ $category->id}}">{{ $category->name }}</option>
                                            @endforeach
                                            
                                            
                                        </select></div>
                                        <small>It will be used for job seeker search.</small>
                                    </div>
                                </div>
                                
                                <div class="col-xl-6 col-md-12">
                                    <div class="submit-field">
                                        <h5>Expected Salary</h5>
                                        <div class="input-with-icon">
                                            <input class="with-border margin-bottom-0" type="number" placeholder="Min" name="salary_min" value="{{ ($dataUser->salary_min)? $dataUser->salary_min : 0 }}">
                                            <i class="currency">₨</i>
                                        </div>
                                        <small>Salary per month.</small>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-md-12">
                                    <div class="submit-field">
                                        <h5>&nbsp;</h5>
                                        <div class="input-with-icon">
                                            <input class="with-border margin-bottom-0" type="number" placeholder="Max" name="salary_max" value="{{ ($dataUser->salary_max)? $dataUser->salary_max : 0 }}">
                                            <i class="currency">₨</i>
                                        </div>
                                    </div>
                                </div>
                               <!-- <div class="col-xl-4 col-md-12">
                                    <div class="submit-field">
                                        <h5>Date of Birth</h5>
                                        <input type="text" class="with-border margin-bottom-0" data-provide="datepicker" data-date-format="yyyy-mm-dd" data-date-autoclose="true" data-date-language="en" name="dob" value="" >
                                    </div>
                                </div>-->
                                <div class="col-md-12">
                                    
                                    <div class="submit-field">
                                        <h5>About Me</h5>
                                       <textarea class="with-border" id="pageContent" name="aboutme" style="font-family: 'comfortaa !important; ">{{ $dataUser->bio }}</textarea></div>
                                    <div class="submit-field">
                                        <h5>Website</h5>
                                        <div class="input-with-icon-left">
                                            <i class="la la-link"></i>
                                            <input type="url" name="website" class="with-border margin-bottom-0" value="{{ $dataUser->website }}">
                                        </div>
                                    </div>
                                    <div class="submit-field">
                                        <h5>Facebook</h5>
                                        <div class="input-with-icon-left">
                                            <i class="fa fa-facebook"></i>
                                            <input type="url" name="facebook" class="with-border margin-bottom-0" value="{{ $dataUser->facebook }}">
                                        </div>
                                    </div>
                                    <div class="submit-field">
                                        <h5>Twitter</h5>
                                        <div class="input-with-icon-left">
                                            <i class="fa fa-twitter"></i>
                                            <input type="url" name="twitter" class="with-border margin-bottom-0" value="{{ $dataUser->twitter }}">
                                        </div>
                                    </div>
                                    <div class="submit-field">
                                        <h5>Instagram</h5>
                                        <div class="input-with-icon-left">
                                            <i class="fa fa-instagram"></i>
                                            <input type="url" name="instagram" class="with-border margin-bottom-0" value="{{ $dataUser->instagram }}">
                                        </div>
                                    </div>
                                    <div class="submit-field">
                                        <h5>Linkedin</h5>
                                        <div class="input-with-icon-left">
                                            <i class="fa fa-linkedin"></i>
                                            <input type="url" name="linkedin" class="with-border margin-bottom-0" value="{{ $dataUser->linkedin }}">
                                        </div>
                                    </div>
                                    <div class="submit-field">
                                        <h5>Youtube</h5>
                                        <div class="input-with-icon-left">
                                            <i class="fa fa-youtube-play"></i>
                                            <input type="url" name="youtube" class="with-border margin-bottom-0" value="{{ $dataUser->youtube }}">
                                        </div>
                                    </div>
                                    
                                </div>
                               @endif
                                                            </div>
                            <button type="submit" name="submit" class="button ripple-effect" style="color: #fff !important">Save Changes</button>
                        </form>
                       </div>
                </div>
                
                
                
                <div class="dashboard-box js-accordion-item">
                    <!-- Headline -->
                    <div class="headline js-accordion-header">
                        <h3><i class="icon-feather-lock"></i> Password</h3>
                    </div>

                    <div class="content with-padding js-accordion-body" style="display: none;">
                        <form method="post" accept-charset="UTF-8">
                            <div class="row">
                                <div class="col-xl-6">
                                    <div class="submit-field">
                                        <h5>New Password</h5>
                                        <input type="password" id="password" name="password" class="with-border" onkeyup="checkAvailabilityPassword()">
                                    </div>
                                </div>

                                <div class="col-xl-6">
                                    <div class="submit-field">
                                        <h5>Repeat New Password</h5>
                                        <input type="password" id="re_password" name="re_password" class="with-border" onkeyup="checkRePassword()">
                                    </div>
                                </div>
                            </div>
                            <span id="password-availability-status">  </span>
                            <button type="submit" name="password-submit" class="button ripple-effect" style="color: #fff !important">Update</button>
                        </form>
                    </div>
                </div>
            </div>
          
            
        </div>
        
       
    </div>
</section>


@endsection

@section('footer')
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.20/summernote.min.js" integrity="sha512-6rE6Bx6fCBpRXG/FWpQmvguMWDLWMQjPycXMr35Zx/HRD9nwySZswkkLksgyQcvrpYMx0FELLJVBvWFtubZhDQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.20/summernote-bs5.min.js" integrity="sha512-6F1RVfnxCprKJmfulcxxym1Dar5FsT/V2jiEUvABiaEiFWoQ8yHvqRM/Slf0qJKiwin6IDQucjXuolCfCKnaJQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script>
     $(document).ready(function(){
      
         $(document).on('click', '.js-accordion-header', function(){
             alert()
              $('.js-accordion-body').attr('style', 'display: none')
             $(this).toggleClass('active')
             console.log($(this).parent('.js-accordion-item').find('.js-accordion-body'))
          
            $('.js-accordion-header.active').parent('.js-accordion-item').find('.js-accordion-body').attr('style', 'display: block')
         });
   })
</script>
  
   
@endsection