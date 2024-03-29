@php
    $translation = $row->translateOrOrigin(app()->getLocale());
@endphp
<div class="inner-box job-listing">
    <div class="image-box">
        <a href="{{$row->getDetailUrl()}}">
            <figure class="image">
                @if($row->image_id)
                    @if(!empty($disable_lazyload))
                        <img src="{{get_file_url($row->image_id,'medium')}}" alt="{{$translation->name ?? ''}}">
                    @else
                        {!! get_image_tag($row->image_id,'medium',['alt'=>$row->title]) !!}
                    @endif
                @endif
            </figure>
        </a>
    </div>
    <div class="lower-content blog-body">
        <ul class="post-meta">
            <li hidden>{{ display_date($row->updated_at)}}</li>
            @if($row->getReviewEnable())
                <li ><a href="{{ $row->getDetailUrl().'#reviews' }}">{{ $row->reviewsCount(true) }}</a></li>
            @endif
        </ul>
        <h3 class="job-listing-title"><a href="{{$row->getDetailUrl()}}" class="blog-body-title">{{$translation->title}}</a></h3>
        <p class="text blog-body-desc">{!! \Illuminate\Support\Str::words(strip_tags($translation->content), 12, '....') !!}</p>
        <a hidden href="{{$row->getDetailUrl()}}" class="read-more">{{ __("Read More") }} <i class="fa fa-angle-right"></i></a>
    </div>
</div>
