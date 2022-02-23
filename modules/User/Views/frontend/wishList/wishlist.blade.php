@extends('layouts.app')

@section('content')

<!--Page Title-->
<section class="page-title">
    <div class="auto-container">
        <div class="title-outer">
            <h1>Favourite Patchworkers</h1>
            <ul class="page-breadcrumb">
                <li><a href="{{ home_url() }}">{{ __("Home") }}</a></li>
                <li>Favourite Patchworkers</li>
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
                        <h3><i class="fas fa-heart"></i> Favourite Patchworkers</h3>
                    </div>
                    
                    @if(count($rows) == 0)
                    <div class="text-center content with-padding">
                        No Data Found
                    </div>
                    @endif
                </div>
                @if(count($rows) > 0 )
                
                    @foreach($rows as $row)
                        <div class="listings-container margin-top-30">
                    
                        <div class="job-listing fav-listing">
                            <div class="job-listing-details">
                                <div class="job-listing-company-logo">
                                    
                                    @php
                                    $url = '';
                                        if($row->service->avatar_id){
                                            $url = \Modules\Media\Models\MediaFile::find($row->service->avatar_id);
                                            $url = asset('uploads/'. $url->file_path);
                                        }
                                    @endphp
                                    <a href="">
                                        <img src="{{ $url }}" alt="User">
                                    </a>
                                </div>
                                <div class="job-listing-description">
                                    
                                    
                                    <h3 class="job-listing-title"><a href="">{{ $row->service->name }}</a>
                                                                            </h3>
                                    <p class="job-listing-text"></p>
                                </div>
                               
                                    <form method="get" action="{{ route('user.wishList.remove') }}">
                                        <input type="hidden" name="id" value="{{ $row->object_id }}">
                                        <input type="hidden" name="type" value="{{ $row->object_model }}">
                                         <button ><span class="fav-icon set-user-fav added" data-favuser-id="3" data-userid="1" data-action="setFavUser"></span></button>
                                    </form>
                                    
                                   
                                
                                    
                                                            </div>
                            <div class="job-listing-footer">
                                <ul>
                                    <li><i class="la la-map-marker"></i>{{ $row->service->country }} </li>
                                                                                                        </ul>
                            </div>
                        </div>
                    
                    <div class="clearfix"></div>
                                        <div class="row">
                        <div class="col-md-12">
                            <!-- Pagination -->
                            <div class="pagination-container margin-top-20 margin-bottom-60">
                                <nav class="pagination">
                                   
                                        
                                          {{$rows->appends(request()->query())->links()}}                                          
                                                                                
                                    
                                </nav>
                            </div>
                        </div>
                    </div>
                                    </div>
                    @endforeach
               
                    
                @endif
            </div>
        </div>
    </div>
</div>
@endsection