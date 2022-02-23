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
                            <p class="" style="font-weight:500"> New to Patchwork Hub? Post your first job and get your second free! </p>
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
    
    <section id="disability">
    <div class="container">
        <h2 style="color: #401e66 !important">Looking to become Disability Confident</h2>
        <div class="row" style="padding: 37px 0">
            <div class="col-xl-7">
                <p>Our disabled -led enterprise works with employers to lead a culture change in work and accessibility</p>
                <p>We understand that every organisation is at a difficult stage in their 'D &amp; I' journey. We can help you to integrate disability inclusion into the heart of your business</p>
                <p>We offer a range of services to help you progress in your journey to becoming an accredited Disability Confident employer</p>
                <p>Book a call today to find out more about how we can help </p>
                <a href="" class="button btn-book" style="">Book a call</a>
            </div>
            <div class="col-xl-5">
                <div class="text-right">
                    <img src="{{ asset('images/patchwork/Disability.png') }}" style="width: 400px; height: 400px" alt="Patchwork Images">
                </div>
            </div>
        </div>
    </div>
</section>

<section id="brand" class="padding-top-50 padding-bottom-50">
    <div class="container">
        <h2 class="text-center mb-4" style="color:#3F2666 !important">Some brands that trust us</h2>  
        <div class="row" style="padding: 50px;">
            <div class="col-xl-3">
                <img src="https://technostaging.com/storage/products/1620902700609d032c42a1d.png" alt="Patchwork Images">
            </div>
            
            <div class="col-xl-3">
                <img src="https://technostaging.com/storage/products/162326338660c1089ae6391.jpeg" alt="Patchwork Images">
            </div>
            
            <div class="col-xl-3">
                <img src="https://technostaging.com/storage/products/162375465760c887a12bf23.png" alt="Patchwork Images">
            </div>
            
             <div class="col-xl-3">
                <img src="https://technostaging.com/storage/products/1628073009610a6c3112ed1.png" alt="Patchwork Images">
            </div>
        </div>
        
    </div>
</section>

<section id="intern">
    <div class="container">
        <h2 class="mb-4" style="color: #401e66 !important">Looking for a summer intern?</h2>
        <p>Back by popular demand, We are running our Summer Internship Patchworker Placement programme and are currently looking for employers to join us in 2022.</p>
        <p>Our award winning <span style="">'Patchworker Placement' programme </span>, offers a bespoke recuirmentservice and does all the work for you. We design and manage an end to end inclusive recuirment campaign to source highly-skilled disabled candidates and onboard them into their role.</p>
        <div style="margin-top:30px">
            <a href="" class="button btn-book" style="">Register Interest</a>
            <a href="" class="button btn-book ml-3" style="">Find out more</a>
            
        </div>
    </div>
</section>
@endsection
@section('footer')

<script>
var data="yearly";
        $(document).ready(function(){
            $.each($('.price_value'), function(key, value){
                var price = $('.price_value').eq(key).text();
                $('.price_value').eq(key).text(Math.floor(parseFloat(price)))
            })
                
           
                $('.monthly').css({'opacity': '0.5'})
                $('.monthly a').attr('href', 'javascript:void(0)')
                 
     
                if($('.plan-count').val() == 1){
                    $('.minus').attr('disabled', true).css({'opacity': '0.5'})
                }
                else{
                    $('.minus').attr('disabled', false).css({'opacity': '1'})
                }
                
                 $('#amount').val($('#total_price').text())
                   $('#qty').val($('.plan-count').val())
                   $('#vat-qty').val( parseInt($('#total_price').text() * (20/100) ))
                   $('#vat-annual').val( parseInt($('.annual_price').text() * (20/100)))
                   $('#vat-month').val( parseInt($('.month_price').text() * (20/100)))
                 console.log( $('#amount').val())
                 console.log( $('#vat-qty').val())
                 console.log( $('#vat-month').val())
                 console.log( $('#vat-annual').val())
                $('.btn-plus').on('click', function(){
                    
                    
                    
                    //  alert($('.plan-count').val());
                    var c  = $('.plan-count').val(); 
                     
                     if(c == 9){
                         
                         $( ".btn-plus" ).prop( "disabled", true );
                         
                        //  alert('ewf');
                     }
                    
                    $('.plan-count').val(  parseInt($('.plan-count').val()) + 1)
                     
                        $('.minus').attr('disabled', false).css({'opacity': '1'})
                        if($('.plan-count').val() == 2){
                            $('.discount').show();
                            $('.safety-info').hide()
                            $('.single-feature').attr('style', 'margin-top: 0 !important')
                            $('.single-feature.mt-7').attr('style', 'margin-top: 95 !important')
                            $('.single-feature.mt-3').attr('style', 'margin-top: 53 !important')
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
                 $('#vat-qty').val( parseInt($('#total_price').text() * (20/100) ))
                  $('#qty').val($('.plan-count').val())
                 console.log( $('#amount').val())

                })
                
                $('.minus').on('click', function(){
                    
                    $( ".btn-plus" ).prop( "disabled", false );
                   
                    $('.plan-count').val( ($('.plan-count').val() - 1))
                        if( $('.plan-count').val() == 1){
                           $('.minus').attr('disabled', true).css({'opacity': '0.5'})
                                $('.discount').hide();
                                $('.safety-info').show()
                                $('.single-feature').attr('style', 'margin-top: 87 !important')
                            $('.single-feature.mt-7').attr('style', 'margin-top: 95 !important')
                            $('.single-feature.mt-3').attr('style', 'margin-top: 53 !important')
                            $('#total_price').text(105)
                        }
                         else{
                            $('.minus').attr('disabled', false).css({'opacity': '1'})
                            if($('.plan-count').val() == 2){
                            $('.discount').show();
                            $('.safety-info').hide()
                            $('.single-feature').attr('style', 'margin-top: 0 !important')
                            $('.single-feature.mt-7').attr('style', 'margin-top: 95 !important')
                            $('.single-feature.mt-3').attr('style', 'margin-top: 53 !important')
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
                        }
                        
                 $('#amount').val($('#total_price').text())
                 $('#vat-qty').val( parseInt($('#total_price').text() * (20/100) ))
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
