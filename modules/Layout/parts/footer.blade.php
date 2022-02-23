@if(!is_api())
    <!-- Main Footer -->
    @php
        $footer_style = $row->footer_style ?? '';
        if(empty($footer_style)) $footer_style = setting_item_with_lang('footer_style');
    @endphp
    <footer class="main-footer {{ $footer_style }} @if($footer_style == 'style_1' && empty($is_home)) alternate5 @endif">
        <div id="footer" style="">
			<div class="footer-middle-section">
				<div class="container"> 
					<div class="row">
						<div class="col-xl-3 col-lg-3 col-md-3">
							<div class="footer-logo">
								<img src="https://patchworkhub.org//templates/classic-theme/images/classic-theme_logo-white.png" alt="Footer Logo">
							</div>
							<!-- <p>Where talent meets accessible working. </p> -->
										<ul class="footer-social-links">
																			<li>
											<a href="https://www.facebook.com/patchworkforce/" rel="nofollow" style="">
												<i class="fab fa-facebook-f"></i>
											</a>
										</li>
																										<li>
											<a href="https://twitter.com/Patchworkhub" rel="nofollow" style="">
												<i class="fab fa-twitter"></i>
											</a>
										</li>
																										<li>
											<a href="https://www.instagram.com/patchworkhub/" rel="nofollow" style="">
												<i class="fab fa-instagram"></i>
											</a>
										</li>
																										<li>
											<a href="https://www.linkedin.com/company/patchworkhub/" rel="nofollow" style="">
												<i class="fab fa-linkedin-in"></i>
											</a>
										</li>
																																	</ul>
						</div>
						
						@if($list_widget_footers = setting_item_with_lang("list_widget_footer"))
						<?php $list_widget_footers = json_decode($list_widget_footers);?>
						@foreach($list_widget_footers as $key=>$item)
						<div class="col-xl-3 col-lg-3 col-md-3">
							<div class="footer-links">
								<h3 style="">{{$item->title}}</h3>
								{!! clean($item->content) !!}
							
							</div>
						</div>

						@endforeach
						@endif
					
			
			
			
			<div class="footer-bottom-section">
				<div class="container">
					<div class="row">
						<div class="col-xl-12">
							<div class="footer-rows-left">
								<div class="footer-row">
									<span class="footer-copyright-text" style="color: #fff !important; font-size: 19px !important"> {!! @clean(setting_item_with_lang('copyright')) !!}</span>
								</div>
							</div>
						   <div class="footer-rows-right">
							{!! @clean(setting_item_with_lang('footer_socials')) !!}
							</div>
						</div>
					</div>
				</div>
			</div>
		
		</div>

        <!-- Scroll To Top -->
        <div class="scroll-to-top scroll-to-target" data-target="html"><span class="fas fa-arrow-up"></span></div>
    </footer>
    <!-- End Main Footer -->
@endif

@include('Layout::parts.login-register-modal')
@include('Layout::parts.chat')
@include('Job::frontend.layouts.details.apply-job-popup')
@if(Auth::id())
	@include('Media::browser')
@endif

@if(!is_candidate() || empty($candidate))
    <div class="bc-alert-popup">
        <div class="message-box warning"></div>
    </div>
@endif


    

<link rel="stylesheet" href="{{asset('libs/flags/css/flag-icon.min.css')}}">

{!! \App\Helpers\Assets::css(true) !!}

{{--Lazy Load--}}
<script src="{{asset('libs/lazy-load/intersection-observer.js')}}"></script>
<script async src="{{asset('libs/lazy-load/lazyload.min.js')}}"></script>
<script>
    // Set the options to make LazyLoad self-initialize
    window.lazyLoadOptions = {
        elements_selector: ".lazy",
        // ... more custom settings?
    };

    // Listen to the initialization event and get the instance of LazyLoad
    window.addEventListener('LazyLoad::Initialized', function (event) {
        window.lazyLoadInstance = event.detail.instance;
    }, false);
</script>
<script src="{{ asset('libs/jquery-3.6.0.min.js') }}"></script>
<script src="{{ asset('libs/jquery-migrate/jquery-migrate.min.js') }}"></script>
<script src="{{ asset('libs/header.js') }}"></script>
<script>
    $(document).on('ready', function () {
        $.superioHeader.init($('#header'));
    });
</script>
<script src="{{ asset('libs/lodash.min.js') }}"></script>
<script src="{{ asset('libs/vue/vue'.(!env('APP_DEBUG') ? '.min':'').'.js') }}"></script>
<script src="{{ asset('libs/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
<script src="{{ asset('libs/bootbox/bootbox.min.js') }}"></script>

@if(Auth::id())
	<script src="{{ asset('module/media/js/browser.js?_ver='.config('app.asset_version')) }}"></script>
@endif


<script src="{{ asset('js/functions.js?_ver='.config('app.asset_version')) }}"></script>

<script src="{{ asset('module/superio/js/popper.min.js') }}"></script>
<script src="{{ asset('module/superio/js/jquery-ui.min.js') }}"></script>
<script src="{{ asset('module/superio/js/chosen.min.js') }}"></script>
<script src="{{ asset('module/superio/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('module/superio/js/jquery.fancybox.js') }}"></script>
<script src="{{ asset('module/superio/js/jquery.modal.min.js') }}"></script>
<script src="{{ asset('module/superio/js/mmenu.polyfills.js') }}"></script>
<script src="{{ asset('module/superio/js/mmenu.js') }}"></script>
<script src="{{ asset('module/superio/js/appear.js') }}"></script>
<script src="{{ asset('module/superio/js/anm.min.js') }}"></script>
<script src="{{ asset('module/superio/js/owl.js') }}"></script>
<script src="{{ asset('module/superio/js/wow.js') }}"></script>
<script src="{{ asset('module/superio/js/script.js') }}"></script>

<script src="{{ asset('libs/pusher.min.js') }}"></script>
<script src="{{ asset('js/home.js?_ver='.config('app.asset_version')) }}"></script>

@if(!empty($is_user_page))
	<script src="{{ asset('module/user/js/user.js?_ver='.config('app.asset_version')) }}"></script>
@endif
@if(setting_item('cookie_agreement_enable')==1 and request()->cookie('booking_cookie_agreement_enable') !=1 and !is_api()  and !isset($_COOKIE['booking_cookie_agreement_enable']))
	<div class="booking_cookie_agreement p-3 fixed-bottom">
		<div class="container d-flex ">
            <div class="content-cookie">{!! setting_item_with_lang('cookie_agreement_content') !!}</div>
            <button class="btn save-cookie">{!! setting_item_with_lang('cookie_agreement_button_text') !!}</button>
        </div>
	</div>
	<script>
        var save_cookie_url = '{{route('core.cookie.check')}}';
	</script>
	<script src="{{ asset('js/cookie.js?_ver='.config('app.asset_version')) }}"></script>
@endif

{!! \App\Helpers\Assets::js(true) !!}

@yield('footer')

@php \App\Helpers\ReCaptchaEngine::scripts() @endphp
