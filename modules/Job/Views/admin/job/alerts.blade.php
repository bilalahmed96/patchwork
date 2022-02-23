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
            <h1>Job Alerts</h1>
            <ul class="page-breadcrumb">
                <li><a href="{{ home_url() }}">{{ __("Home") }}</a></li>
                <li>Job Alerts</li>
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
                        <h3><i class="fas fa-bell"></i> Job Alerts</h3>
                    </div>
                    <div class="content with-padding">
                        
                        
                        @include('admin.message')
                         <form method="post" action="{{ route('job.admin.alert')}}">
                             @csrf
                    <div class="form-group">
                        <div class="checkboxes square">
                          <input type="checkbox" id="notify" name="notify" value="1" onchange="NotifyValueChanged()">
                          <label for="notify"><span class="checkbox-icon"></span> Notify me by e-mail when a job gets posted that is relevant to my choice.</label>
                        </div>
                      <ul class="skills margin-left-20" style="display: none;">
                        @foreach($categories as $category)
                                 <li>
                                         <div class="checkboxes square">
                                          <input type="checkbox" id="{{ $category->id }}" name="choice[]" value="{{$category->id}}" {category.selected}="">
                                          <label for="{{ $category->id }}"><span class="checkbox-icon"></span> {{ $category->name }}</label>
                                      </div>
                                  </li>
                        @endforeach
                       
                  
            
                  
              </ul>
          </div>
          <button type="submit" id="saveAlert" name="submit" class="button ripple-effect">Save Changes</button>
          </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('footer')
    <script>
           $(document).ready(function(){
            $('#notify').on('click', function(){
                $('.skills').toggleClass('show-box');
            })
    })  
    </script>
 
@endsection