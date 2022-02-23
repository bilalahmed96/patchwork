@php
    $translation = $row->translateOrOrigin(app()->getLocale());
@endphp

<a href="{{$row->getDetailUrl()}}" class="company contact-card light_content">
	<div class="company-inner-alignment">
		<span class="company-logo">
			@if($image_tag = get_image_tag($row->avatar_id,'full',['alt'=>$translation->title]))
			{!! $image_tag !!}
		@endif
		</span>
		<h4 class="light-title">{{ $translation->name }}</h4>
	</div>
</a>