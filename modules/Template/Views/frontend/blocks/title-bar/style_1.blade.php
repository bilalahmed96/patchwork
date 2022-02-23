<section id="about-header" class="about-header" style="background-image:url(https://patchworkhub.org/templates/classic-theme/images/2/Young-woman-with-prosthetic-hand-sitting-on-sofa-working-on-laptop.png);min-height: 450px;background-size: cover;background-position: center center;margin: 60px 0 0;padding: 0 0;">
	<div class="container">
		<div class="row">
			<div id="about-overlay" class="col-md-8 overlay contact-card light-card" style="background: rgba(255, 255, 255, 0.9);padding: 50px;border-top-right-radius: 30px;border-bottom-right-radius: 30px;margin: 80px 0 !important;">
					
					<h1 class="myHeading about-header-text" style="margin-bottom: 30px;line-height: 1.1;">{{ $title ?? '' }}</h1>
					{{-- <p class="myPara about-header-text" style="line-height: 1.5;margin-bottom: 20px;font-weight: 500;">Patchwork Hub is an accessible employment platform.</p>
					<p class="myPara about-header-text" style="line-height: 1.5;margin-bottom: 20px;font-weight: 500;">We connect employers to highly-skilled professionals who are looking for work opportunities outside the conventional 9 to 5 office job.</p>
					<p class="myPara about-header-text" style="line-height: 1.5;margin-bottom: 20px;font-weight: 500;">Our platform enables a hidden talent pool, from disabled people through to carers and parents, to find work and thrive.</p>
					
					<a id="about-header-btn" class="purple-btn" href="{{ route('register') }}" style="background: rgba(63, 38, 102);color: #FFF !important;font-size: 18px;padding: 10px 30px;display: block;float: left;border-radius: 30px;">Join for Free Today</a>
					 --}}
					 {!! clean($content ?? '') !!}
			</div>
		</div>
	</div>    
	</section>