@extends('layouts.app')

@section('head')
        <style>
            .show-box{
                display: block !important;
            }
        </style>
@endsection

@section('content')

<!--Page Title-->
<section class="page-title">
    <div class="auto-container">
        <div class="title-outer">
            <h1>My Resumes</h1>
            <ul class="page-breadcrumb">
                <li><a href="{{ home_url() }}">{{ __("Home") }}</a></li>
                <li>My Resumes</li>
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
                        <h3>
                            <i class="icon-feather-paperclip">
                            </i>
                            Add New Resume
                        </h3>
                    </div>
                    <div class="content with-padding">
                    <form method="post" accept-charset="UTF-8" enctype="multipart/form-data" action="{{ route('resume.update', $id) }}">
                        @csrf
                            <div class="submit-field">
                              <h5>Name</h5>
                                <input type="text" class="with-border" id="name" name="name" value="{{Auth::user()->id}}">
                            </div>
                            <div class="submit-field">
                              <h5>File *</h5>
                              <div class="uploadButton">
                                  <input class="uploadButton-input" type="file" id="resume" name="resume">
                                  <label class="uploadButton-button ripple-effect" for="resume">Upload Resume</label>
                                  <span class="uploadButton-file-name">Only pdf, doc, docx, rtf, rtx, ppt, pptx, jpeg, jpg, bmp, png file types allowed.</span>
                                </div>
                            </div>
                                                        <button type="submit" name="submit" class="button ripple-effect">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('footer')
    
 
@endsection