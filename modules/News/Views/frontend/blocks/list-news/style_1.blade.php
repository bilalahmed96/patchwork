<!-- News Section -->
<section class="news-section" id="blog">
    <div class="auto-container">
        <div class="sec-title text-center">
            <h2>{{ $title }}</h2>
            @if(!empty($sub_title))
                <div class="text">{{ $sub_title }}</div>
            @endif
        </div>

        <div class="row wow fadeInUp">
        @foreach($rows as $row)
            <!-- News Block -->
                <div class="news-block col-lg-4 col-md-6 col-sm-12">
                    @include('News::frontend.blocks.list-news.loop')
                </div>
            @endforeach
            
              @if(!empty($content))
            <div class="col-lg-12 text-center">
                {!! clean($content) !!}
            </div>
            @endif
        </div>
    </div>
</section>
<!-- End News Section -->
