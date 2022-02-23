@if(setting_item('facebook_enable') or setting_item('google_enable') or setting_item('twitter_enable'))
<div class="bottom-box">
    
    <div class="btn-box row">
        @if(setting_item('facebook_enable'))
            <div class="col-lg-6 col-md-12">
                <a href="{{url('/social-login/facebook')}}" class="theme-btn social-btn-two facebook-btn btn_login_fb_link"><i class="fab fa-facebook-f"></i>{{__('Facebook')}}</a>
            </div>
        @endif
        @if(setting_item('google_enable'))
            <div class="col-lg-6 col-md-12">
                <a href="{{url('social-login/google')}}" class="theme-btn social-btn-two google-btn btn_login_gg_link"><i class="fab fa-google"></i>{{__('Google')}}</a>
            </div>
        @endif
    </div>

    <div class="divider"><span>or</span></div>
</div>
@endif
<form class="form bravo-form-register" method="post">
    @csrf
    <form method="post" action="#">
        <div class="form-group">
           

            <div class="account-type">
                <div class="img-btn" style="margin-bottom:10px; margin-top:10px">
                    <input type="radio" name="type" id="freelancer-radio" class="account-type-radio " value="1">
                    
                    <label hidden="" for="freelancer-radio" class="ripple-effect-dark dark-btn"><i class="la la-user"></i>Job Seeker</label>
                     <img class=" _1" src="{{ asset('images/patchwork/Job seeker-no-text.png') }}" style="" alt="Patchworker">
                    <h5 class="text-center mt-1">Job Seeker</h5>


                </div>
                <div class="img-btn" style="margin-bottom:10px; margin-top:10px"> 
                    <input type="radio" name="type" id="employer-radio" class="account-type-radio" value="2">
                    
                    <label hidden="" for="employer-radio" class="ripple-effect-dark dark-btn"><i class="la la-suitcase"></i> Employer</label>
                    <img class=" _2" src="{{ asset('images/patchwork/Employer-no-text.png') }}" style="" alt="Employer">
                    <h5 class="text-center mt-1">Employer</h5>
                    
                </div>
            </div>
            <span class="invalid-feedback error error-type"></span>
        </div>

        <div class="form-group">
            <label>Enter your first name:</label>
            <div class="input-group">
                <span class="input-group-text" id="basic-addon1"><i class="fas fa-user"></i></span>
                <input type="text" name="first_name" placeholder="First Name" required>
            </div>
              
            
            <span class="invalid-feedback error error-f_name"></span>
        </div>

        <div class="form-group">
            <label>Enter your last name:</label>
            <div class="input-group">
                <span class="input-group-text" id="basic-addon1"><i class="fas fa-user"></i></span>
                <input type="text" name="last_name" placeholder="Last Name" required>
            </div>
            <span class="invalid-feedback error error-;_name"></span>
        </div>

        <div class="form-group">
            <label>Enter your email:</label>
            <div class="input-group">
                <span class="input-group-text" id="basic-addon1"><i class="fas fa-envelope"></i></span>
                <input type="email" name="email" placeholder="{{__('Email address')}}" required>
            </div>
            
            <span class="invalid-feedback error error-email"></span>
        </div>

        <div class="form-group">
            <label>Enter your password</label>
            <div class="input-group">
                <span class="input-group-text" id="basic-addon1"><i class="fas fa-key"></i></span>
                <input class="password-field" id="password-field" type="password" name="password" value="" placeholder="{{ __("Password") }}">
                <span class="input-group-text right btn-show" id="basic-addon1"><i class="fas fa-eye"></i></span>
            </div>
            
            <span class="invalid-feedback error error-password"></span>
        </div>

        <div class="form-group">
            <label>Confirm your password</label>
            <div class="input-group">
                <span class="input-group-text" id="basic-addon1"><i class="fas fa-key"></i></span>
                <input class="password-field" id="password-field" type="password" name="cpassword" value="" placeholder="Confirm {{ __("Password") }}">
                <span class="input-group-text right btn-show" id="basic-addon1"><i class="fas fa-eye"></i></span>
            </div>
            
            <span class="invalid-feedback error error-cpassword"></span>
        </div>

        @if(setting_item("recaptcha_enable"))
            <div class="form-group">
                {{recaptcha_field($captcha_action ?? 'register')}}
                <span class="invalid-feedback error error-recaptcha"></span>
            </div>
        @endif

        <div class="form-group ">
            <div class="checkboxes square">
                <input type="checkbox" id="terms" name="terms" value="1">
                <label for="terms" id="terms-label"><span class="checkbox-icon"></span> By signing up, I have read and agree to the <a href="{{ route('page.detail', 'privacy-policy') }}">Privacy Policy</a> and <a href="{{ route('page.detail', 'terms-and-conditions') }}">Terms and Condition</a></label>
            </div>
        </div>
        
        
        <div class="form-group">
            <button class="theme-btn btn-style-one " type="submit" name="Register">{{ __('Sign Up') }}
                <span hidden class="spinner-grow spinner-grow-sm icon-loading" role="status" aria-hidden="true"></span>
            </button>
        </div>
    </form>
   
</form>


