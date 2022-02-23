@extends('layouts.app')

@section('content')

<!--Page Title-->
<section class="page-title">
    <div class="auto-container">
        <div class="title-outer">
            <h1>Work Experience</h1>
            <ul class="page-breadcrumb">
                <li><a href="{{ home_url() }}">{{ __("Home") }}</a></li>
                <li>Work Experience</li>
            </ul>
        </div>
        
      
    </div>
</section>

<div class="section gray padding-bottom-50 contact-card">
    <div class="container">
        <div class="row">
             @include('Layout::parts.dashboard-sidebar')
            
            <div class="col-lg-9 col-md-12">
                <div class="dashboard-box margin-top-0">
                    <!-- Headline -->
                    <div class="headline">
                        <h3><i class="fas fa-award"></i> Work Experience - <a href="">Add New Experience</a></span></h3>
                    </div>
                    <div class="content with-padding">
                        
                        
                        @include('admin.message')
                          @if($rows)
                       
                      @else
                               
                                
                            <div class="text-center">
                                No active jobs found.
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection