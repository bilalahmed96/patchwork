@extends('layouts.app')
@section('head')

@endsection
@section('content')
   @include('admin.message')
        <div class="container mt-5">
  
    <div class="row">
        <div class="col-xl-12">
            <div class="row margin-bottom-50 justify-content-center single-package">
                @foreach($plans as $plan)
                @if($plan->title == 'partner')
               <div class="col-xl-10">
                  <h3 class="plan-heading"> 
                               Single Use Package Features
                            </h3>
                    
                                             <div class="plan-body">
                                
                        <div class="feature-list">
               
                            <ul class="">
                                <li>
                                    <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Tick.png" alt="Patchwork Images">
                                    <span style="">2 post for just   £105!</span>
                                </li>
                                
                                <li>
                                    <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Tick.png" alt="Patchwork Images">
                                    <span style=""> Job <span class="fw-bold"> live for at least 6 weeks</span> </span>
                                </li>
                                
                                <li>
                                    <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Tick.png" alt="Patchwork Images">
                                    <span class="fw-bold" style="">Bespoke public company profile </span> <span style="">to demonstrate yuor brands commitment  to accessibility</span>
                                </li>
                                
                                <li>
                                    <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Tick.png" alt="Patchwork Images">
                                   <span style=""> Your advert included in <span class="fw-bold"> job alert email</span> </span>
                                </li>
                                
                                <li>
                                    <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Tick.png" alt="Patchwork Images">
                                   <span class="fw-bold" style=""> Manage application easily <span> on our platform</span> </span>
                                </li>
                                
                                <li>
                                    <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Tick.png" alt="Patchwork Images">
                                   <span class="fw-bold" style=""> Link to your application form</span> 
                                </li>
                                
                                 <li>
                                    <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Tick.png" alt="Patchwork Images">
                                    <span style=""> add   <span class="fw-bold"> screening questions </span> to recruit faster </span>
                                </li>
                                
                                
                                 <li>
                                    <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Tick.png" alt="Patchwork Images">
                                    <span style=""> Get applications sent   <span class="fw-bold"> straight to your inbox </span>  </span>
                                </li>
                                
                                 <li>
                                    <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Tick.png" alt="Patchwork Images">
                                    <span style=""> Use in your own time -   <span class="fw-bold"> 12 months to use </span>  </span>
                                </li>
                            </ul>
                        </div>
                        
                        <div class="pt-3">
                            <h5>Job Upgrades Available</h5>
                            <p>Use job boosters to increase the quantity and relevance of your applications</p>
                        </div>
                        
                        <div class="price-list">
                            <ul>
                                <li>
                                    <i class="fas fa-plus"></i>
                                    <span class="fw-bold" style="">Featured ad</span> fee <span class="fw-bold" style="">£30 </span> for 7 days
                                </li>
                                
                                <li>
                                    <i class="fas fa-plus"></i>
                                    <span class="fw-bold" style="">Urgent ad</span> fee <span class="fw-bold" style="">£15 </span> for 14 days
                                </li>
                                
                                <li>
                                    <i class="fas fa-plus"></i>
                                    <span class="fw-bold" style="">Highlight ad</span> fee <span class="fw-bold" style="">£9 </span> for 7 days
                                </li>
                            </ul>
                        </div>
                        
                        <div class="row py-4">
                            <div class="col-md-4 col-sm-12">
                                        <div class="fw-bold">Select your number of jobs </div> 
                                        <span style="font-size:12px">(up to maximum of 10)</span>
                            </div>
                            
                            <div class="col-md-4 col-sm-12">
                                 <div class="d-flex quantity">
                                            <p>Quantity</p>
                                            <div class="row text-center align-items-center">
                                                 <div class="col-xl-4 text-left">
                                                   <button class="minus" disabled="disabled" style=""><i class="fa fa-minus"></i></button>
                                               </div>
                                              
                                                <div class="col-xl-4 text-center" style="padding: 0">
                                                     <input type="text" class="count plan-count" readonly="" value="1" style="border:1px solid #401e66 !important">
                                                </div>
                                              
                                                  <div class="col-xl-4 text-right">
                                                    <button class="btn-plus" style=""><i class="fa fa-plus"></i></button>
                                                </div>
                                            </div>
                                        </div> 
                            </div>
                            
                            <div class="col-md-4 col-sm-12">
                                <div class="price-div">
                                    <div>Total </div>
                                        <div class="price">£<span id="total_price" class="price">105</span><span style="font-weight: normal">+VAT</span> </div>
                                    <div class="mt-2"></div>
                                </div>
                            
                            </div>
                        </div>
                        
                        <div class="row pb-4">
                            <div class="col-md-6">
                                <a href="" class="button btn-membership" style="">Back to membership options</a>
                            </div>
                            <div class="col-md-6">
                                 
                                                @if($user and $user_plan = $user->user_plan and $user_plan->plan_id == $plan->id)
                                                      @if($user_plan->is_valid)
                                                            <a href="#" class="theme-btn btn-style-one button btn-price">{{__("Current Plan")}}</a>
                                                        @else
                                                            <a href="{{route('user.plan.buy',['id'=>$plan->id])}}" class="theme-btn btn-style-two button btn-price">{{__('Renew')}}</a>
                                                        @endif
                                                 @else
                                            <form name="form1" method="post" action="{{route('user.plan.buy',['id'=>$plan->id])}}">
                                                @csrf
                                                <input class="signup cursor" name="plan_id" type="hidden" value="{{$plan->id}}">
                                                <input id="amount" name="amount" type="hidden" value="105">
                                                <input id="qty" name="quantity" type="hidden" value="1">
                                                <input id="vat-qty" name="vat" type="hidden" value="21">
                                                <button type="submit" class="button btn-membership" name="Submitup" style="color: #fff !important">Buy now</button>
                                            </form>
                                            @endif
                                                                                                                    </div>
                        </div>
                        
                                       
                                        
                                     
                             </div>
                                       
                         
                                           
                         
                                           
                    
               </div>
                    
                   @endif
                    @endforeach      
                
            </div>
            
           <div>
               <p class="text-center fw-bold">
                   Sponsorship opportunities are also available for inclusive companies <br>
                   committed to supporting our work - <a href="" style="text-decoration: underline"> get in touch</a> for details
               </p>
           </div>
        </div>
    </div>
</div>

<section id="started_section" class="py-5">
    <h2 class="text-center" style="color:#3F2666 !important"> Get started today</h2> 
    <p class="text-center py-4">Call us on <a href="tel:02039165773" class="fw-bold" style="text-decoration:underline">020 3916 5773</a> or email <a href="maito:hello@pachworkhub.org" style="text-decoration:underline" class="fw-bold">hello@pachworkhub.org</a></p>
    
    <a href="">
    <div class="img-btn" style="margin-bottom:10px; margin-top:10px"> 
                         
                            <img class=" _2" src="https://patchworkhub.org/templates/classic-theme/images/Employer-no-text.png" style="" alt="Employer">
                            <h5 class="text-center mt-1">Employer FAQs</h5>
                            
                        </div>
                        </a>
</section>
@endsection

@section('footer')

<script>
var data="yearly";
        $(document).ready(function(){
                $('.monthly').css({'opacity': '0.5'})
                $('.monthly a').attr('href', 'javascript:void(0)')
                
                
     
                if($('.plan-count').val() == 1){
                    $('.minus').attr('disabled', true).css({'opacity': '0.5'})
                }
                else{
                    $('.minus').attr('disabled', false).css({'opacity': '1'})
                }
                
                 $('#amount').val($('#total_price').text())
                 $('#vat').val($('#total_price').text() * (20/100))
                 $('#qty').val($('.plan-count').val())
                 console.log( $('#amount').val())
                 
                $('.btn-plus').on('click', function(){
                    
                    $('.plan-count').val(  parseInt($('.plan-count').val()) + 1)
                     
                        $('.minus').attr('disabled', false).css({'opacity': '1'})
                        if($('.plan-count').val() == 2){
                            $('.discount').show();
                            $('#actual_price').text(105*2);
                            $('#discount').text(50);
                            $('#total_price').text((105*2)-50)
                        }
                        else if($('.plan-count').val() == 3){
                           
                            $('#actual_price').text(105*3);
                            $('#discount').text(75);
                            $('#total_price').text((105*3)-75)
                        }
                         else if($('.plan-count').val() == 4){
                           
                            $('#actual_price').text(105*4);
                            $('#discount').text(100);
                            $('#total_price').text((105*4)-100)
                        }
                          else if($('.plan-count').val() == 5){
                           
                            $('#actual_price').text(105*5);
                            $('#discount').text(135);
                            $('#total_price').text((105*5)-135)
                        }
                           else if($('.plan-count').val() == 6){
                           
                            $('#actual_price').text(105*6);
                            $('#discount').text(190);
                            $('#total_price').text((105*6)-190)
                        }
                        
                        else if($('.plan-count').val() == 7){
                           
                            $('#actual_price').text(105*7);
                            $('#discount').text(215);
                            $('#total_price').text((105*7)-215)
                        }
                          else if($('.plan-count').val() == 8){
                           
                            $('#actual_price').text(105*8);
                            $('#discount').text(240);
                            $('#total_price').text((105*8)-240)
                        }
                        else if($('.plan-count').val() == 9){
                           
                            $('#actual_price').text(105*9);
                            $('#discount').text(305);
                            $('#total_price').text((105*9)-305)
                        }
                        else if($('.plan-count').val() == 10){
                           
                            $('#actual_price').text(105*10);
                            $('#discount').text(350);
                            $('#total_price').text((105*10)-350)
                        }
                        
                 $('#amount').val($('#total_price').text())
                 $('#qty').val($('.plan-count').val())
                 $('#vat').val($('#total_price').text() * (20/100))
                 console.log( $('#amount').val())

                })
                
                $('.minus').on('click', function(){
                   
                    $('.plan-count').val( ($('.plan-count').val() - 1))
                        if( $('.plan-count').val() == 1){
                           $('.minus').attr('disabled', true).css({'opacity': '0.5'})
                                $('.discount').hide();
                      ;
                            $('#total_price').text(105)
                        }
                         else{
                            $('.minus').attr('disabled', false).css({'opacity': '1'})
                            if($('.plan-count').val() == 2){
                            $('.discount').show();
                            $('#actual_price').text(105*2);
                            $('#discount').text(50);
                            $('#total_price').text((105*2)-50)
                        }
                        else if($('.plan-count').val() == 3){
                           
                            $('#actual_price').text(105*3);
                            $('#discount').text(85);
                            $('#total_price').text((105*3)-85)
                        }
                         else if($('.plan-count').val() == 4){
                           
                            $('#actual_price').text(105*4);
                            $('#discount').text(110);
                            $('#total_price').text((105*4)-110)
                        }
                          else if($('.plan-count').val() == 5){
                           
                            $('#actual_price').text(105*5);
                            $('#discount').text(155);
                            $('#total_price').text((105*5)-155)
                        }
                           else if($('.plan-count').val() == 6){
                           
                            $('#actual_price').text(105*6);
                            $('#discount').text(190);
                            $('#total_price').text((105*6)-190)
                        }
                        
                        else if($('.plan-count').val() == 7){
                           
                            $('#actual_price').text(105*7);
                            $('#discount').text(225);
                            $('#total_price').text((105*7)-225)
                        }
                          else if($('.plan-count').val() == 8){
                           
                            $('#actual_price').text(105*8);
                            $('#discount').text(250);
                            $('#total_price').text((105*8)-250)
                        }
                        else if($('.plan-count').val() == 9){
                           
                            $('#actual_price').text(105*9);
                            $('#discount').text(285);
                            $('#total_price').text((105*9)-285)
                        }
                        else if($('.plan-count').val() == 10){
                           
                            $('#actual_price').text(105*10);
                            $('#discount').text(320);
                            $('#total_price').text((105*10)-320)
                        }
                        }
                        
                 $('#amount').val($('#total_price').text())
                 $('#vat').val($('#total_price').text() * (20/100))
                 $('#qty').val($('.plan-count').val())
                 console.log( $('#amount').val())
                    
                })
                
                
        })



function toggleMonthlyYearly(){
    
    if(data == "yearly"){
 $('.yearly').css({'opacity': '0.5'})
    $('.yearly a').attr('href', 'javascript:void(0)')
    
        $('.monthly').css({'opacity': '1'})
    $('.monthly a').attr('href', '')
    data = 'monthly';
        
    }else if(data == "monthly"){
  $('.monthly').css({'opacity': '0.5'})
    $('.monthly a').attr('href', 'javascript:void(0)')
    
     $('.yearly').css({'opacity': '1'})
    $('.yearly a').attr('href', '')
    data = 'yearly';
        // alert("no");
    }
    // alert(data);
} 


</script>

@endsection