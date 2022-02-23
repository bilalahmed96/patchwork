@extends('layouts.app')

@section('content')

<!--Page Title-->
<section class="page-title">
    <div class="auto-container">
        <div class="title-outer">
            <h1>{{ Auth::user()->name }} </h1>
            <ul class="page-breadcrumb">
                <li><a href="{{ home_url() }}">{{ __("Home") }}</a></li>
                <li>{{ Auth::user()->name }}</li>
            </ul>
        </div>
        
      
    </div>
</section>

<div class="section gray padding-bottom-50 contact-card">
    <div class="container">
        <div class="row">
             <div class="col-xl-8 col-lg-8">
            <div class="single-page-section">
                <div class="single-page-inner">
                    <div class="single-page-image">
                                                    <img src="https://patchworkhub.org/storage/profile/default_user.png" alt="Demo User">
                                            </div>
                    <div class="single-page-details">
                        <h3>{{ Auth::user()->name }}</h3>
                        <ul>
                            <li>
                                <i class="fas fa-location-dot"></i>
                                <span style="">{{(Auth::user()->city)? Auth::user()->city.',' : ''}}{{ Auth::user()->country}}</span>
                            </li>
                            @if(Auth::user()->role_id == 2)
                            <li>
                                                            
                                <i class="fas fa-clock"></i>
                                <span style="">Member Since: 24 Aug 2019</span>
                            </li>
                            @endif
                        </ul>
                        <ul class="social-icons">
                                                                                                                                                                    </ul>
                    </div>
                </div>
            </div>
            <div class="single-page-section">
                
            </div>
            
        </div>
        
             <div class="col-xl-4 col-lg-4">
            <div class="dashboard-box small-box margin-top-0 margin-bottom-30">
                <!-- Headline -->
                <div class="headline">
                    <h3><i class="fas fa-circle-exclamation"></i> Details</h3>
                </div>
                <div class="content with-padding">
                    <table>
                                                                                                <tbody><tr>
                            <td>Email address</td>
                            <td><a href="mailto:demouser@gmail.com" rel="nofollow">demouser@gmail.com</a></td>
                        </tr>
                                                                                                                                                                                            </tbody></table>
                </div>
            </div>
            <div class="sidebar-container">
                <div class="sidebar-widget">
                    <h3>Bookmark or Share</h3>
                                                            
                    <!-- Share Buttons -->
                    <ul class="share-buttons-icons">
                        <li><a href="mailto:?subject={{ Auth::user()->name }}" data-button-color="#dd4b39" title="Share on Email" data-tippy-placement="top" rel="nofollow" target="_blank" style="background-color: rgb(221, 75, 57);"><i class="fa fa-envelope"></i></a></li>
                        <li><a href="" data-button-color="#3b5998" title="Share on Facebook" data-tippy-placement="top" rel="nofollow" target="_blank" style="background-color: rgb(59, 89, 152);"><i class="fab fa-facebook"></i></a></li>
                        <li><a href="https://twitter.com/share?url=https://patchworkhub.org/profile/demo&amp;text=Demo User" data-button-color="#1da1f2" title="Share on Twitter" data-tippy-placement="top" rel="nofollow" target="_blank" style="background-color: rgb(29, 161, 242);"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="https://www.linkedin.com/shareArticle?mini=true&amp;url=https://patchworkhub.org/profile/demo" data-button-color="#0077b5" title="Share on LinkedIn" data-tippy-placement="top" rel="nofollow" target="_blank" style="background-color: rgb(0, 119, 181);"><i class="fab fa-linkedin"></i></a></li>
                        <li><a href="https://pinterest.com/pin/create/bookmarklet/?&amp;url=https://patchworkhub.org/profile/demo&amp;description=Demo User" data-button-color="#bd081c" title="Share on Pinterest" data-tippy-placement="top" rel="nofollow" target="_blank" style="background-color: rgb(189, 8, 28);"><i class="fab fa-pinterest-p"></i></a></li>
                        <li><a href="https://web.whatsapp.com/send?text=https://patchworkhub.org/profile/demo" data-button-color="#25d366" title="Share on WhatsApp" data-tippy-placement="top" rel="nofollow" target="_blank" style="background-color: rgb(37, 211, 102);"><i class="fab fa-whatsapp"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
        </div>
    </div>
</div>
@endsection