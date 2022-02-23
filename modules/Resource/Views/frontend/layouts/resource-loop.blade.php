<div class="inner-box">
        <div class="image-box">
            <div class="image">
                @if($image_tag = get_image_tag($row->image,'full',['alt'=>$row->title,'class'=>'img-fluid rounded-xs w-100']))
                    <a class="d-block" href="{{$row->getDetailUrl()}}">
                        {!! $image_tag !!}
                    </a>
                @endif
            </div>
        </div>
        <div class="lower-content">
            <ul class="post-meta">
                <li><a href="#">{{ display_date($row->updated_at)}}</a></li>
            </ul>
            <h3>
                <a href="{{$row->link }}">{{ $row->title}}</a>
            </h3>
            <p class="text-lh-lg mb-3">
                {!! get_exceprt($row->content,80,'...') !!}
            </p>
            <a href="{{$row->link }}" class="read-more">{{ __('Read More') }} <i class="fa fa-angle-right"></i></a>
        </div>
    </div>