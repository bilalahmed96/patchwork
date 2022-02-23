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
                            <i class="fas fa-file"></i>
                            My CVs/Resumes
                        </h3>
                    </div>
                    <div class="content with-padding">
                        <div class="row justify-content-end">
                            <div class="col-xl-4" hidden>
                                <form method="get" action="">
                                <div class="input-with-icon">
                                    <input class="with-border" type="text" name="keywords" value="" placeholder="Search...">
                                    <i class="icon-feather-search"></i>
                                </div>
                                </form>
                            </div>
                            <div class="col-xl-8 text-right">
                                <a href="https://stagging.patchworkhub.org/add-resume" class="button ripple-effect">Add New Resume</a>
                            </div>
                        </div>
                        @if($rows)
                        <div class="table-responsive">
                            <table class="basic-table dashboard-box-list">
                                <tbody><tr>
                                    <th>File</th>
                                    <th class="big-width">Name</th>
                                    <th class="small-width">Actions</th>
                                </tr>
                                                               
                            @foreach($rows as $row)
                                    @php
                                            $url = \Modules\Media\Helpers\FileHelper::url($row->file_id);
                                            $name = explode('/', $url);
                                            $name = $name[count($name) - 1];
                                    @endphp 
                                    <tr>
                                        <td>
                                            <a href="{{ $url }}"> {{$name}}</a>
                                        </td>
                                        <td>{{ Auth::user()->first_name }}</td>
                                        <td>
                                            <a href="{{ route('resume.edit', $row->id) }}"><i class="fas fa-edit"></i></a>
                                            <a href="{{ route('resume.delete', $row->id)}}"><i class="fas fa-trash-alt"></i></a>
                                        </td>
                                    </tr>
                            @endforeach
                                                            </tbody></table>
                        </div>
                        @else
                        
                        <div class="text-center">
                            No result found.
                        </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('footer')
  
 
@endsection