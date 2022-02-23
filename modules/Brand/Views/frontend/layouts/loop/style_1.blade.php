<section>
	<div id="our_supporters_section" class="section padding-top-100 padding-bottom-100 contact-card"
		style="background-image: url({{ asset('images/background-imgs/our-supporters.png') }}); background-size: 100%; background-repeat: no-repeat;">
		<div class="container">

			<div class="section-headline centered margin-bottom-25" style="margin-bottom:40px;">
				<h2 id="our_supporters_heading" style="">{{$title??""}}</h2>
			</div>
			<div class="row align-items-center logo-image " style="border-radius: 15px;">
			    
			    @foreach($row as $item)
				<div class="col-lg-3 support-logo">

					<div class="h-100">
						<img src="{!! \Modules\Media\Helpers\FileHelper::url( $row->image) !!}"
							alt="support" area-label="OUR_SUPPORT.image" width="100%">
					</div>
				</div>
				
				@endforeach
			
			</div>
		</div>
	</div>
</section>