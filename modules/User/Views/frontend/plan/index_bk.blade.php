@extends('layouts.app')
@section('head')

@endsection
@section('content')
    <section>
        <div id="titlebar">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 style="color:#3F2666 !important">Advertise a job today and attract the best talent</h2>
                        
                        <div class="offer" style="border-right: 9px solid rgb(64, 30, 102); border-bottom: 9px solid rgb(64, 30, 102);">
                            <p class="" style="font-weight:bold"> New to Patchwork Hub? Post your first job and get your second free! </p>
                            <div class="text-right"><a href="" class="button gray btn-offer" style="">Get the New Member Welcome Offer </a></div>
                        </div>
        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="pricing-section">
        <div class="auto-container">
            @include('admin.message')
            @include('User::frontend.plan.list')
        </div>
    </section>
@endsection
@section('footer')
@endsection
