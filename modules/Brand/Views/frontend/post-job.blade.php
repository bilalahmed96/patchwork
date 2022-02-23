@extends('layouts.app')

@section('head')
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.18/css/bootstrap-select.min.css" integrity="sha512-ARJR74swou2y0Q2V9k0GbzQ/5vJ2RBSoCWokg4zkfM29Fb3vZEQyv0iWBMW/yvKgyHSR/7D64pFMmU8nYmbRkg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/simditor/2.3.28/styles/simditor.min.css" integrity="sha512-pd+Kd8Fy67R2dffVn3Agbd/IJ+n+an76N0GTxFhCigquamk4PZ8zS7RjDeeFEDy0Fqba+9uW323tsfw4jDeN2g==" crossorigin="anonymous" referrerpolicy="no-referrer" />-->
@endsection

@section('content')
<section class="page-title">
    <div class="auto-container">
        <div class="title-outer">
            <h1>Post Job</h1>
            <ul class="page-breadcrumb">
                <li><a href="{{ home_url() }}">{{ __("Home") }}</a></li>
                <li>Post Job</li>
            </ul>
        </div>
        
      
    </div>
</section>


<div class="section gray contact_content light-card">

    <div class="container">

        <div class="row">

            <div class="col-xl-8 col-md-12">

                <div id="post_error"></div>

                <div class="payment-confirmation-page dashboard-box margin-top-0 padding-top-0 margin-bottom-50 contact-card light_content" style="display: none">

                    <div class="headline">

                        <h3 class="light-title">Success</h3>

                    </div>

                    <div class="content with-padding padding-bottom-10">

                        <i class="la la-check-circle"></i>



                        <h2 class="margin-top-30 class=" light-title""="" style="color:#3F2666 !important">Success</h2>



                        <p class="light-title">Your job successfully uploaded. Please wait for approval. Thanks</p>

                    </div>

                </div>

                <form id="post_job_form" class="hak-form-3" action="https://patchworkhub.org/post-job?action=post_job" method="post" enctype="multipart/form-data" accept-charset="UTF-8">

                    
                    <div class="dashboard-box margin-top-0 margin-bottom-30 contact-card light_content">

                        <!-- Headline -->

                        <div class="headline">

                            <h3 class="light-title"><i class="la la-building light-title"></i> Tell us about your Company</h3>

                        </div>

                        <div class="content with-padding padding-bottom-10">

                            <div class="row">

                                <div class="col-xl-12">

                                    <div class="submit-field">

                                        <h5 class="light-title">Company *</h5>

                                        
                                            <select id="company-select" class="selectpicker with-border" title="Select Company" data-size="7" name="company" tabindex="-98"><option class="bs-title-option" value="">Select Company</option>
                                        
                                                                        
                                    
                                    

                                        <option value="0">[+] New Company</option> 

        
                                                                            </select></div>

                                    </div>
                                    
                                    <div class="col-xl-12 new-company" style="">

                                    <div class="submit-field">

                                        <h5 class="light-title">Company Name *</h5>

                                        <input type="text" class="with-border" name="company_name" style="font-family: 'comfortaa !important; ">

                                    </div>

                                    <div class="submit-field">

                                        <h5 class="light-title">Logo</h5>



                                        <div class="uploadButton">

                                            <input class="uploadButton-input" type="file" accept="image/*" id="upload" name="company_logo">

                                            <label class="uploadButton-button ripple-effect light-title" for="upload" style="border: 1px solid #401e66 !important">Upload Logo</label>

                                            <span class="uploadButton-file-name light-title">Use a 200x200pt or square image for best fit.</span>

                                        </div>

                                    </div>

                                    <div class="submit-field">

                                        <h5 class="light-title">Company Description *</h5>

                                        <textarea cols="30" rows="5" class="with-border" name="company_desc" style="font-family: 'comfortaa !important; "></textarea>

                                    </div>

                                </div>

                                </div>

                                

                            </div>

                        </div>

                    <!--</div>-->

                    
                    <div class="dashboard-box margin-top-0 contact-card light_content">

                        <!-- Headline -->

                        <div class="headline">

                            <h3 class="light-title"><i class="icon-feather-briefcase light-title"></i> Create your Job Post</h3>

                        </div>

                        <div class="content with-padding padding-bottom-10">

                            <div class="row">

                                <div class="col-xl-12">

                                   

                                    <div class="submit-field">

                                        <h5 class="light-title">Job Title *</h5>

                                        <input type="text" class="with-border" name="title" style="font-family: 'comfortaa !important; ">

                                    </div>

                                    
                                    <div class="submit-field">

                                        <h5 class="light-title">Image</h5>

                                        <div class="uploadButton">

                                            <input class="uploadButton-input" type="file" accept="image/*" id="job_image" name="job_image">

                                            <label class="uploadButton-button ripple-effect light-title" for="job_image" style="border: 1px solid #401e66 !important">Upload Image</label>

                                            <span class="uploadButton-file-name light-title">Use a 200x200pt or square image for best fit.</span>

                                        </div>

                                    </div>

                                    
                                    <div class="submit-field">

                                        <h5 class="light-title">Job Description *</h5>

                                        <textarea cols="30" rows="5" class="with-border text-editor"

                                                  name="content"></textarea>

                                    </div>
                                    
                                    
                                 

                                    <div class="submit-field">

                                        <h5 class="light-title">Job Type *</h5>

                                       <select class="selectpicker with-border" data-size="7" name="job_type" tabindex="-98">

                                            

                                                <option value="4">Full-time</option>

                                            

                                                <option value="5">Part-time</option>

                                            

                                                <option value="6">Fixed-term contract</option>

                                            

                                                <option value="7">Permanent</option>

                                            

                                                <option value="8">Internship </option>

                                            

                                                <option value="9">Freelance</option>

                                            

                                                <option value="10">Apprenticeship</option>

                                            

                                                <option value="11">Temporary</option>

                                            

                                                <option value="12">Training Opportunity</option>

                                            

                                        </select></div>

                                   

                                    <div class="submit-field">

                                        <h5 class="light-title">Salary</h5>



                                        <div class="row">

                                            <div class="col-xl-4 col-md-12">

                                                <div class="input-with-icon">

                                                    <input class="with-border" type="text" placeholder="Min" name="salary_min" style="font-family: 'comfortaa !important; ">

                                                    <i class="currency">£</i>

                                                </div>

                                            </div>

                                            <div class="col-xl-4 col-md-12">

                                                <div class="input-with-icon">

                                                    <input class="with-border" type="text" placeholder="Max" name="salary_max" style="font-family: 'comfortaa !important; ">

                                                    <i class="currency">£</i>

                                                </div>

                                            </div>

                                            <div class="col-xl-4 col-md-12">

                                              <select class="selectpicker with-border margin-bottom-16" data-size="7" name="salary_type" tabindex="-98">

                                                    

                                                        <option value="4">Per Hour</option>

                                                    

                                                        <option value="5">Per Day</option>

                                                    

                                                        <option value="6">Per Month</option>

                                                    

                                                        <option value="7">Per Year</option>

                                                    

                                                </select></div>

                                          

                                            <div class="col-xl-12">

                                                <div class="checkboxes square">

                                                    <input type="checkbox" id="check-b0" name="negotiable" value="1">

                                                    <label for="check-b0"><span class="checkbox-icon"></span> Negotiable</label>

                                                </div>
                                                

                                            </div>
                                            
                        <div class="col-xl-12">
<br>
                            <h5 class="light-title">Job Locations</h5>
                            <div class="row">
                                
                                <div class="col-xl-12">
                                    <div class="submit-field">
                                        <div class="input-with-icon-left">
                                        <input type="radio" name="workLocations[]" class="checkbox" value="Fully-remote" style="height: 15px; width: 15px; position: absolute; margin-top:5px; margin-left: 4px;"> <p style="margin-left:25px; " class="light-title">Fully remote - a job where the employee can work from home for all working hours.</p>
                                        </div>
                                    </div>
                                </div>


                                <div class="col-xl-12">
                                    <div class="submit-field">
                                        <div class="input-with-icon-left">
                                        <input type="radio" name="workLocations[]" value="Remote-based" style="height: 15px; width: 15px; position: absolute; margin-top:5px; margin-left: 4px;"> <p style="margin-left:25px;" class="light-title">Remote-based - a ‘hybrid’ job where the employee can work from home, but may be required to visit the office or site locations at least some of the time.</p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-12">
                                    <div class="submit-field">
                                        <div class="input-with-icon-left">
                                        
                                        <input type="radio" name="workLocations[]" value="Office-based" checked="checked" style="height: 15px; width: 15px; position: absolute; margin-top:5px; margin-left: 4px;">
                                        <p style="margin-left:25px;" class="light-title">Onsite or Office-based - a job where the employee is required to work in-person.</p>
                                        
                                        </div>
                                    </div>
                                </div>

                       
                                <div class="col-xl-12">
                                    <div class="submit-field">
                                        <div class="input-with-icon-left">
                                        
                                            <input type="radio" name="workLocations[]" value="Remote and/or Onsite - to be determined with the candidate" style="height: 15px; width: 15px; position: absolute; margin-top:5px; margin-left: 4px;">
                                            <p style="margin-left:25px;" class="light-title">Remote and/or Onsite - a job where working patterns are flexible to candidates preferences and needs.</p>
                                            
                                        </div>
                                    </div>
                                </div>


                            </div>

                        </div>


                                        </div>

                                    </div>

                                    <div id="ResponseCustomFields">

                                    

                                    </div>

                                    <div class="submit-field">

                                        <h5 class="light-title">Phone Number</h5>



                                        <div class="row">

                                            <div class="col-xl-6 col-md-12">

                                                <div class="input-with-icon-left">

                                                    <i class="flag-img"><img src="https://patchworkhub.org/templates/classic-theme/images/flags/uk.png" alt="uk"></i>

                                                    <input type="text" class="with-border" name="phone" style="font-family: 'comfortaa !important; ">

                                                </div>

                                            </div>

                                            <div class="col-xl-6 col-md-12">

                                                <div class="checkboxes square margin-top-12">

                                                    <input type="checkbox" name="hide_phone" id="phone" value="1">

                                                    <label for="phone"><span class="checkbox-icon light-title"></span> Hide from users

                                                    </label>

                                                </div>

                                            </div>

                                        </div>

                                    </div>

                                    <div class="submit-field">

                                        <h5 class="light-title">City *</h5>

                                        <select id="jobcity" class="with-border select2-hidden-accessible" name="city" data-size="7" title="Select City" required="" data-select2-id="jobcity" tabindex="-1" aria-hidden="true">

                                            <option value="0" selected="selected" data-select2-id="2">Select City</option>

                                        </select><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="1" style="width: 634.656px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" title="Select City" tabindex="0" aria-disabled="false" aria-labelledby="select2-jobcity-container"><span class="select2-selection__rendered" id="select2-jobcity-container" role="textbox" aria-readonly="true" title="Select City">Select City</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>

                                    </div>

                                    



 <div class="form-group text-center">
                                        
                                        <h5 class="light-title">Please select the category that best describes your job</h5>

                                        <a href="#categoryModal" id="choose-category" class="button popup-with-zoom-anim dark-btn dark-title" style="font-family: 'comfortaa !important; "><i class="icon-feather-check-circle"></i>

                                            &nbsp;Choose Category</a>

                                    </div>

                                    <div class="form-group selected-product" id="change-category-btn" style="display: none">

                                        <ul class="select-category list-inline">

                                            <li id="main-category-text"></li>

                                            <li id="sub-category-text"></li>

                                            <li class="active"><a href="#categoryModal" class="popup-with-zoom-anim"><i class="icon-feather-edit"></i> Edit</a></li>

                                        </ul>



                                        <input type="hidden" id="input-maincatid" name="catid" value="">

                                        <input type="hidden" id="input-subcatid" name="subcatid" value="">

                                    </div>


                                    <div class="submit-field form-group">

                                        <h5 class="light-title">Provide URL</h5>



                                        <div class="input-with-icon">

                                            <input class="with-border" type="text" placeholder="http://" name="application_url" style="font-family: 'comfortaa !important; ">

                                            <i class="la la-link"></i>

                                        </div>

                                        <small class="light-title">Candidates will follow this URL address to apply for the job rather than applying on Patchwork Hub.</small>

                                    </div>

                                    
                                    <div class="submit-field form-group">

                                        <h5 class="light-title">Tags</h5>

                                        <input class="with-border" type="text" name="tags" style="font-family: 'comfortaa !important; ">

                                        <small>Enter the tags separated by commas.</small>

                                    </div>

                                    
                                </div>

                            </div>

                        </div>

                    </div>

<!--
                    <div class="dashboard-box">

                        <div class="headline">

                            <h3><i class="icon-feather-location"></i>Work Locations</h3>

                        </div>

                        <div class="content with-padding padding-bottom-10">

                            <div class="row">

                                <div class="col-xl-12 col-md-12">
                                    <div class="submit-field">
                                        <div class="input-with-icon-left">
                                        <h5>Remote <input type="checkbox" name="workLocations[]" value="Remote"  style="height: 15px; width: 15px; position: absolute; margin-top:6px; margin-left: 4px;"> </h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-12 col-md-12">
                                    <div class="submit-field">
                                        <div class="input-with-icon-left">
                                        <h5>Remote Or Office-Based<input type="checkbox"  name="workLocations[]"  value="Remote Or Office-Based" style="height: 15px; width: 15px; position: absolute; margin-top:6px; margin-left: 4px;"> </h5>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-12 col-md-12">
                                    <div class="submit-field">
                                        <div class="input-with-icon-left">
                                        <h5>Office-Based
                                        <input type="checkbox"  name="workLocations[]" value="Office-Based" checked="checked" style="height: 15px; width: 15px; position: absolute; margin-top:6px; margin-left: 4px;">
                                        </h5>
                                        </div>
                                    </div>
                                </div>

                       

                            </div>

                        </div>

                    </div>


-->
                        @if(!Auth::user())
                    
                    <div class="dashboard-box contact-card light_content">

                        <!-- Headline -->

                        <div class="headline">

                            <h3 class="light-title"><i class="icon-feather-user light-title"></i> Your Details</h3>

                        </div>

                        <div class="content with-padding padding-bottom-10">

                            <div class="row">

                                <div class="col-xl-6 col-md-12">

                                    <div class="submit-field">

                                        <h5 class="light-title">Full Name *</h5>



                                        <div class="input-with-icon-left">

                                            <i class="la la-user"></i>

                                            <input type="text" class="with-border" name="user_name" style="font-family: 'comfortaa !important; ">

                                        </div>

                                    </div>

                                </div>

                                <div class="col-xl-6 col-md-12">

                                    <div class="submit-field">

                                        <h5 class="light-title">Email address *</h5>



                                        <div class="input-with-icon-left">

                                            <i class="la la-envelope"></i>

                                            <input type="email" class="with-border" name="user_email">

                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>
                        @endif

                    
                    
                    <div class="dashboard-box contact-card light_content">

                        <!-- Headline -->

                        <div class="headline">

                            <h3 class="light-title"><i class="icon-feather-user light-text"></i>Add Screening Questions <input style="height: 15px; width: 15px; position: absolute; margin-top:6px; margin-left: 4px;" type="checkbox" name="askQuestion" id="questions">
                            
                            
                            </h3>

                        </div>

                        
                        
                        <div class="content with-padding padding-bottom-10" id="askQ" style="display: none;">

                            <div class="row">

                                <div class="col-xl-12 col-md-12">

                                    
                                        <table style="width: 100%">
                                            <thead>
                                                <tr>
                                                    <th style="width:70%; " class="light-title">Questions</th>
                                                    <th style="width:30%;text-align: center;" class="light-title">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody id="questionBody" class="light-title">
                                                
                                            </tbody>
                                        </table>
                     
                                        <a href="javascript:void(0)" class="addQuestion">Add Question</a>


                                    

                                </div>



                            </div>

                        </div>

                    </div>


                    
                    <div class="dashboard-box contact-card light_content">

                        <div class="headline">

                            <h3 class="light-title"><i class="icon-feather-zap light-title"></i> Make your Job Premium

                                <small class="light-title">(Optional)</small>

                            </h3>

                        </div>

                        <div class="content with-padding">

                            <div class="payment contact-card">



                                <div class="payment-tab payment-tab-active">

                                    <div class="payment-tab-trigger">

                                        <input checked="" id="free" name="make_premium" type="radio" value="0">

                                        <label for="free" class="light-title">Free Job (Welcome Offer)</label>

                                    </div>

                                    <div class="payment-tab-content">

                                        <!--p>Your job will go live once it’s been checked and approved.</p-->
                                        <p class="light-title">Your job will go live once it’s been checked and approved.</p>   

                                    </div>

                                </div>



                                <div class="payment-tab">

                                    <div class="payment-tab-trigger">

                                        <input type="radio" name="make_premium" id="make_premium" value="1">

                                        <label for="make_premium" class="light-title">Premium <span class="badge green hak-badge-dark pull-right">Recommended</span></label>

                                    </div>



                                    <div class="payment-tab-content">

                                        <p class="light-title">Select an add-on for your job post to get the best results.</p>



                                        <div class="row premium-plans">

                                            <div class="col-lg-3">

                                                <div class="checkbox">

                                                    <input type="checkbox" id="featured" name="featured" value="1" onchange="fillPrice(this,45.00);">

                                                    <label for="featured"><span class="checkbox-icon"></span> <span class="badge blue">Featured</span></label>

                                                </div>

                                            </div>

                                            <div class="col-lg-6 premium-plans-text light-title">

                                                Featured jobs are displayed at the top of search results and in the Featured Jobs section of our home page and emails.

                                            </div>

                                            <div class="col-lg-3 premium-plans-price light-title">

                                                £45.00 for 10 days

                                            </div>

                                        </div>

                                        <div class="row premium-plans">

                                            <div class="col-lg-3">

                                                <div class="checkbox">

                                                    <input type="checkbox" id="urgent" name="urgent" value="1" onchange="fillPrice(this,25.00);">

                                                    <label for="urgent"><span class="checkbox-icon"></span> <span class="badge yellow">Urgent</span></label>

                                                </div>

                                            </div>

                                            <div class="col-lg-6 premium-plans-text light-title">

                                                Make your job stand out and let candidates know that your job is time-sensitive.

                                            </div>

                                            <div class="col-lg-3 premium-plans-price light-title">

                                                £25.00 for 14 days

                                            </div>

                                        </div>

                                        <div class="row premium-plans">

                                            <div class="col-lg-3">

                                                <div class="checkbox">

                                                    <input type="checkbox" id="highlight" name="highlight" value="1" onchange="fillPrice(this,9.00);">

                                                    <label for="highlight"><span class="checkbox-icon"></span> <span class="badge red">Highlight</span></label>

                                                </div>

                                            </div>

                                            <div class="col-lg-6 premium-plans-text light-title">

                                                Get your job highlighted with a border in our search results and listings. Helps your job post stand out to prospective applicants.

                                            </div>

                                            <div class="col-lg-3 premium-plans-price light-title">

                                                £9.00 for 7 days

                                            </div>

                                        </div>

                                    </div>

                                </div>



                            </div>

                        </div>

                    </div>

                    

 
                    <div class="dashboard-box contact-card light_content">

<div class="headline">
                                <h3 class="light-title"><i class=""></i> Add an accessibility statement to your job post</h3>
                        </div>                
                        

                        <div class="content with-padding padding-bottom-10">

                            <div class="row">
                                <div class="col-xl-1 col-md-1">
                                    <div class="submit_field">
                              <input type="checkbox" name="addText" style="height: 15px; width: 15px;" required="">
                                </div>
                                </div>
                                <div class="col-xl-11 col-md-11">

                                         <p class="light-title"> 
                                         We are committed to ensuring that our recruitment processes are barrier-free and as inclusive as possible for everyone. We particularly welcome applications from disabled applicants. This includes making adjustments for people who have a disability or long-term health condition. If you would like us to do anything differently during the application process, such as apply in an alternative format, please let us know before you apply or contact our hiring manager through the details provided above.
                                    </p>

                                </div>



                            </div>

                        </div>

                    </div>
                    
                    
                    

                    <input type="hidden" name="submit">



                    <div class="row margin-top-30 margin-bottom-80" style="align-items: center;">

                        <div class="col-md-6 col-sm-12">

                            <button type="submit" id="submit_job_button" name="Submit" class="button ripple-effect big light_content card-btn" style="color: #fff !important">

                                <i class="icon-feather-plus"></i> Post a Job</button>

                        </div>

                        <div class="col-6">

                            <div id="ad_total_cost_container" class="text-right" style="display: none">

                                <strong style="font-family:comfortaa !important;">

                                    Total:

                                    <span class="currency-sign">£</span>

                                    <span id="totalPrice">0</span>

                                    <span class="currency-code">GBP</span>

                                </strong>

                            </div>

                        </div>

                    </div>

                </form>

            </div>

            <div class="col-xl-4 hide-under-992px">

                <div class="dashboard-box margin-top-0 contact-card light_content">

                    <!-- Headline -->

                    <div class="headline">

                        <h3 class="light-title"><i class="icon-feather-alert-circle light-title"></i> Accessibility<br>&nbsp;&nbsp;&nbsp;&nbsp;best practice!</h3>

                    </div>

                    <div class="content with-padding padding-bottom-10">

                        <ul class="list-2 hak-list-2">
                            
                            <li class="light-title">When filling in your public profile, don’t forget to show our professionals and partners your company’s commitment to inclusion and accessibility. Show candidates that you’re a company welcoming disabled applicants by ticking our examples of support you can offer.</li>
                            <li class="light-title">We recommend your job description clearly follows the following structure:</li>
                            <ul class="light-title">
                                <li>Introduction</li>
                                <li>Role Purpose</li>
                                <li>About You</li>
                             
                                <ul class="light-title">
                                    <li>Essential Criteria and Desirable Criteria, stated separately</li>
                                    <li>Main Tasks and Responsibilities</li>
                                    
                                      </ul>
                                <li> Recruitment process (including contact details)</li>
                                <li> Accessibility Statement</li>
                               
                            </ul>
                            <li class="light-title">Please ensure that you have provided a phone number and email address, so candidates can contact you with any accessibility needs. These can be listed in the job post or your <a href="https://patchworkhub.org/dashboard">hiring manager profile.</a></li>
                            <li class="light-title">To find out more about improving your recruitment processes, we have a range of support articles for you to explore. See <a href="https://patchworkhub.org/help-and-support/115/how-to-design-accessible-job-roles">Designing accessible job roles</a>, <a href="https://patchworkhub.org/help-and-support/84/common-templates">How to write an accessible job description</a> and <a href="https://patchworkhub.org/help-and-support/91/our-standards-for-job-descriptions">Patchwork Hub's standards for job descriptions</a> or head to our <a href="https://patchworkhub.org/help-and-support">Help and Support Centre</a>.</li>
                            <li class="light-title">Want to take your commitment to accessibility further but not sure what to do next? <a href="https://patchworkhub.org/membership">Become a member </a>of Patchwork Hub today. Our expert mentors are experienced in creating an accessible workplace, and our team all have lived experience of disability. <a href="https://patchworkhub.org">Contact us</a> to arrange your introductory training session.</li>


                            <!--<li>Fill in your public profile and show our professionals and partners your company’s commitment to inclusion and accessibility.</li>-->

                            <!--<li>Briefly describe your company’s commitment towards employees, your values and any benefits of working for you.</li>-->

                            <!--<li>Show candidates that you’re a company welcoming disabled applicants by ticking our examples of reasonable adjustments.</li>-->

                            <!--<li>Check again before submitting the job.</li>-->
                            
                            

                        </ul>

                    </div>

                </div>

            </div>

        </div>

    </div>

</div>
@endsection

@section('footer')
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.18/js/bootstrap-select.min.js" integrity="sha512-yDlE7vpGDP7o2eftkCiPZ+yuUyEcaBwoJoIhdXv71KZWugFqEphIS3PU60lEkFaz8RxaVsMpSvQxMBaKVwA5xg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!--<script src="https://cdnjs.cloudflare.com/ajax/libs/simditor/2.3.28/lib/simditor.min.js" integrity="sha512-G78rFv6PGOcbDy6Gl+6MyFPfzJN/uQW9FPoRp/5zTOUC320Q/5Ua3EKK5bYx/VypCVKNn4DVvT03jUVN78x+UA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>-->


 
   <script>
   $(document).ready(function(){
        $(".selectpicker").selectpicker();
        
        $(document).on('click', '.payment-tab-trigger input', function(){
            $('.payment-tab').removeClass('payment-tab-active');
            $(this).parents('.payment-tab').addClass('payment-tab-active');
        }) 
   })
       
   </script> 
@endsection