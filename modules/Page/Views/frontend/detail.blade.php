@extends ('layouts.app')

@section('head')
    <style>
        .slick-next {
            background-image: url("{{ asset('images/icons/svg/chevron-right-solid.svg') }}") !important;
        }

        .slick-prev {
            background-image: url("{{ asset('images/icons/svg/chevron-left-solid.svg') }}") !important;
        }

    </style>
@endsection

@section('content')
    @if ($row->template_id)
        <div class="page-template-content page-{{ $row->slug }}">
            {!! $row->getProcessedContent() !!}

        
    @else
        <section class="tnc-section">
            <div class="auto-container">
                <div class="sec-title text-center">
                    <h2>{{ $translation->title }}</h2>
                    <div class="text"><a href="{{ home_url() }}">{{ __('Home') }}</a> 
                        {{ $translation->title }}</div>
                </div>
                <div class="blog-content">
                    {!! $translation->content !!}
                </div>
            </div>
        </section>
    @endif
@endsection
