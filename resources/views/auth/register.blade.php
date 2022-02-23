@extends('Layout::auth.app')

@section('content')
<div id="titlebar">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="title-heading">Sign up</h2>
                <!-- Breadcrumbs -->
                <nav id="breadcrumbs">
                    <ul>
                        <li><a href="https://patchworkhub.org/" class="title-text">Home</a></li>
                        <li class="title-text">Sign up</li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>
    <div class="login-section">
        {{-- <div class="image-layer" style="background-image: url(module/superio/images/background/12.jpg);"></div> --}}
        <div class="outer-box">
            <!-- Login Form -->
            <div class="login-form default-form bravo-login-form-page bravo-login-page ">
                @if($site_title = setting_item("site_title"))
                <div class="text-center">
                    <h3>Lets create your account!</h3>
                    <span class="light-title">Already have an account? <a href="" class="light-title">Log in!</a></span>
                </div>
                @else
                    <h3>{{ __("Register") }}</h3>
                @endif
                @include('Layout::auth.register-form',['captcha_action'=>'register_normal'])
            </div>
        </div>
    </div>
@endsection
