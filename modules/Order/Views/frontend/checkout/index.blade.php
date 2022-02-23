@extends("Layout::app")
@section('head')
    <link rel="stylesheet" href="{{asset('dist/frontend/module/order/css/checkout.css?_v='.config('app.asset_version'))}}">
@endsection
@section('content')
    <section class="page-title">
        <div class="auto-container">
            <div class="title-outer">
                <h1>{{__('Checkout')}}</h1>
                <ul class="page-breadcrumb">
                    <li><a href="{{route('home')}}">{{__('Home')}}</a></li>
                    <li>{{__('Checkout')}}</li>
                </ul>
            </div>
        </div>
    </section>
    
  
<div class="container" style="padding-bottom: 50px" id="bravo-checkout-page" v-cloak>
    <div class="row py-2">
        <div class="col-xl-4 col-lg-4 content-right-offset">
                <h5 class="heading">Products Summary</h5>
                <p>Membership <span style="">Annually</span></p>
                
              
        </div>
        
        <div class="col-xl-4 col-lg-4 quantity">
                 <h5 class="heading text-center">Quantity</h5>
                 <div class="row text-center align-items-center" style="display: none">
                                                 <div class="col-xl-3 text-left" style="max-width: 20% !important">
                                                   <button class="minus" disabled="disabled" style=""><i class="fa fa-minus"></i></button>
                                               </div>
                                              
                                                <div class="col-xl-3 text-center" style="padding: 0">
                                                     <input type="text" class="count plan-count" readonly="" value="1" style="border:1px solid #401e66 !important">
                                                </div>
                                              
                                                  <div class="col-xl-3 text-left">
                                                    <button class="btn-plus" style=""><i class="fa fa-plus"></i></button>
                                                </div>
                                            </div>
                   <div class="text-center" style="padding: 0">
                                                     <input type="text" class="count plan-count" readonly="" value="1" style="border:1px solid #401e66 !important">
                     </div>
        </div>
        
        <div class="col-xl-4 col-lg-4">
            <h5 class="text-right"> Price</h5>
            <p class="text-right fw-bold">
                £<span id="total_price" style="">600.00 GBP</span> 
            </p>
        </div>

    </div>
    
    <div class="row py-2 promo-row justify-content-end">
        <div class="col-xl-6 col-lg-6" hidden="">
            <p>Have a <a href="" class="promo-link">promo code?</a></p>
        </div>
        <div class="col-xl-6 col-lg-6">
            <div class="total-box">
                    <p class="pb-0 text-right"> <span class="fw-bold" style="">Total (excluding VAT):</span> <span style="" id="total_cost" class="fw-bold"> £ <span id="cost">600.00</span> </span> </p>
                    <p class="text-right fw-bold pb-0"><span class="fw-bold" style="">VAT: </span> <span style=""> £ <span id="vat" class="fw-bold"> 120 </span></span> </p>    
            </div>
            <div>
                <p class="fw-bold text-right"><span style="">Total:</span> <span style=""> £ <span id="total-with-vat">720</span></span></p>
            </div>
            
        </div>
    </div>
    
    <div class="row">
            
                            <div class="col-xl-12 col-lg-12">
                               
            @foreach($gateways as $k=>$gateway)
           
            <p class="text-right d-flex align-items-center justify-content-end"> <span class="mr-3 fw-bold" style="">
               
                <input type="hidden" name="first_name" value="{{Auth::user()->name}}">
                <input type="hidden" name="last_name" value="{{Auth::user()->last_name}}">
                <input type="hidden" name="phone" value="{{Auth::user()->phone}}">
                <input type="hidden" name="country" value="{{Auth::user()->country}}">
                <input type="hidden" name="state" value="{{Auth::user()->state}}">
                <input type="hidden" name="city" value="{{Auth::user()->city}}">
                <input type="hidden" name="zip_code" value="{{Auth::user()->zip_code}}">
                  <input checked id="payment-{{ $k }}" name="payment_gateway" type="radio" value="{{ $k }}"  style="display:none">
                Checkout:</span> <button @click="doCheckout" class="paypal button" style="color: #fff !important">Pay with  
             
               <img class="payment-logo paypal" src="https://stagging.patchworkhub.org/includes/payments/paypal/logo/logo.png" alt="Paypal" style="height:34px">
                </button></p>
              
                 @endforeach
            <p class="text-right"> <a class="button card" href="" style="">Pay with card </a></p>
            <p> </p><div class="card" style="margin-left: auto"> 
                <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Mastercard-Download-PNG.png" width="50" alt="Patchwork Images">
                <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Logo-Visa-Card-PNG.png" width="50" alt="Patchwork Images">
                <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/amex.jpg" width="50" alt="Patchwork Images">
            </div> <p></p>
                </div>
                                                                                                    
                 
    
    </div>
    
    <div class="row py-2">
        <div class="col-xl-12">
            <p class="text-right" style="margin-bottom: 2px !important"> Need some help? Call us on <a href="" class="fw-bold">020 3916 5773</a></p>
            <p class="text-right"> Monday-Friday, 9:00 am - 5:30 pm GMT </p>
        </div>
    </div>
</div>


@endsection

@section('footer')
    <script src="{{ asset('module/order/js/checkout.js') }}"></script>
    <script type="text/javascript">

    </script>
@endsection