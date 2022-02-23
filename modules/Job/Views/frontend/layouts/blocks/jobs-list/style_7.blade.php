<!-- Job Section -->
<section class="job-section-five padding-top-80 padding-bottom-80">
    <div class="auto-container ">
        <div class="sec-title text-center">
            <h2>{{ $title }}</h2>
            <div class="text">{{ $sub_title }}</div>
        </div>

        <div style="width: 860px; margin: 0 auto">
              <div class="row wow fadeInUp featured-jobs">
            @foreach($rows as $row)
                <div class="job-block-five col-lg-4 col-md-6 col-sm-12">
                    @include("Job::frontend.layouts.loop.job-item-6")
                </div>
            @endforeach
        </div>
        </div>
      
        @if($load_more_url)
        <div class="btn-box">
            <a href="{{ $load_more_url }}" class="theme-btn btn-style-one bg-blue"><span class="btn-title">{{ __("Load More Listing") }}</span></a>
        </div>
        @endif
    </div>
</section>
<!-- End Job Section -->
