@extends('layouts.app')
@section('head')
    <link href="{{ asset('dist/frontend/module/news/css/news.css?_ver='.config('app.version')) }}" rel="stylesheet">
    <link href="{{ asset('dist/frontend/css/app.css?_ver='.config('app.version')) }}" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{ asset("libs/daterange/daterangepicker.css") }}">
    <link rel="stylesheet" type="text/css" href="{{ asset("libs/ion_rangeslider/css/ion.rangeSlider.min.css") }}"/>
    <link rel="stylesheet" type="text/css" href="{{ asset("libs/fotorama/fotorama.css") }}"/>
@endsection
@section('content')
    <div class="bravo-news">
       <section class="page-title bg_color" style="background-color: transparent">
    <div class="auto-container">
        <div class="title-outer">
            <h1>Resources</h1>
            <ul class="page-breadcrumb">
                <li><a href="http://technostaging.com/patchworkhub-laravel">Home</a></li>
                <li>Resources</li>
            </ul>
        </div>
    </div>
</section>
        <div class="sidebar-page-container">
            <div class="auto-container">
                <div class="row">
                    <div class="content-side col-lg-12 col-md-12 col-sm-12">
                        <div class="blog-grid">
                            <div class="row">
                                @if($rows->count() > 0)
                                    @foreach($rows as $row)
                                        <div class="news-block col-lg-3 col-md-6 col-sm-12">
                                        @include('Resource::frontend.layouts.resource-loop')
                                        </div>
                                    @endforeach
                                @else
                                    <div class="alert alert-danger">
                                        {{__("Sorry, but nothing matched your search terms. Please try again with some different keywords.")}}
                                    </div>
                                @endif
                            </div>
                        </div>
                        {{$rows->appends(request()->query())->links('vendor.pagination.news-pagination')}}
                    </div>
                   
                </div>
            </div>
        </div>
    </div>
@endsection


