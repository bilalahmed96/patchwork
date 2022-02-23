<section class="news-section style_4">
    <div class="auto-container">
        <div class="sec-title text-center">
            <h2>{{ $title }}</h2>
            @if(!empty($sub_title))
                <div class="text">{{ $sub_title }}</div>
            @endif
        </div>

        <div class="row wow fadeInUp">
           
            
                   
                @foreach($rows as $key => $row)
                           
                                
                     <div class="news-block-two col-lg-6 col-md-6 col-sm-12">
                        <div class="row">
                           
                          
                             
                            <div class="col-lg-12 col-md-12 col-sm-12">
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
        <h3 class="job-listing-title"><a href="{{$row->getDetailUrl()}}" class="blog-body-title">{{$row->title}}</a></h3>
        <p class="text blog-body-desc">{!! \Illuminate\Support\Str::words(strip_tags($row->content), 12, '....') !!}</p>
        <a hidden href="{{$row->getDetailUrl()}}" class="read-more">{{ __("Read More") }} <i class="fa fa-angle-right"></i></a>
    </div>
</div>
                            </div>
                           
            
                        </div>
                    </div>
               @endforeach
        </div>
    </div>
</section>
