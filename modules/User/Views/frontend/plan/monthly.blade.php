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
                @if($plan->title == 'monthly-yearly')
              <div class="col-xl-10">
                  <h3 class="plan-heading"> 
                               Monthly Partner Package Features
                            </h3>
                              
                                                  
                         
                                                  
                         
                                                  
                         
                                                  
                         
                                                  
                         
                                                  
                         
                                                  
                         
                                             <div class="plan-body">
                                
                        <div class="feature-list">
               
                            <h5>Advertising and Marketing</h5>
                            <ul class="">
                                <li>
                                    <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Tick.png" alt="Patchwork Images">
                                    <span style="">Unlimited number of job posts</span>
                                </li>
                                
                                <li>
                                    <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Tick.png" alt="Patchwork Images">
                                    <span style=""> Your  <span class="fw-bold"> job is live for 12 weeks</span> </span>
                                </li>
                                
                                <li>
                                    <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Tick.png" alt="Patchwork Images">
                                    <span class="fw-bold" style="">Bespoke public company profile </span> <span style="">to demonstrate your brands commitment  to accessibility</span>
                                </li>
                                
                                <li>
                                    <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Tick.png" alt="Patchwork Images">
                                   <span style=""> Your company's logo on our home page </span>
                                </li>
                                
                                <li>
                                    <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Tick.png" alt="Patchwork Images">
                                   <span class="fw-bold" style=""> 1 free featured job<span> per month</span> </span>
                                </li>
                                
                                <li>
                                    <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Tick.png" alt="Patchwork Images">
                                   <span style=""> Your adverts included in the<span class="fw-bold"> job alert emails</span> </span>
                                </li>
                                
                               
                                
                               
                                 <li>
                                    <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Tick.png" alt="Patchwork Images">
                                    <span class="fw-bold" style=""> Manage applications easily   <span> on our platform or </span> link to your own application form  </span>
                                </li>
                                
                                <li>
                                    <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Tick.png" alt="Patchwork Images">
                                    <span style=""> Use  <span class="fw-bold"> screening questions </span> to help you recruit faster  </span>
                                </li>
                                
                                 <li>
                                    <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Tick.png" alt="Patchwork Images">
                                    <span style=""> Get the applications sent   <span class="fw-bold"> straight to your inbox</span> </span>
                                </li>
                                
                                  <li>
                                    <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Tick.png" alt="Patchwork Images">
                                    <span class="fw-bold" style=""> Free Company Spotlight   <span> and publicity across our platforms and networks.</span> </span>
                                </li>
                                
                                 <li>
                                    <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Tick.png" alt="Patchwork Images">
                                    <span style=""> Use of Logo -  </span> use our badged Partner logo on your correspondence and websites to showcase your commitment to accessibility 
                                </li>

                            </ul>
                            
                            <h5 class="pt-1-5">Training and Support</h5>
                            <ul>
                                 <li>
                                    <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Tick.png" alt="Patchwork Images">
                                    <span style=""> Quality for  <span class="fw-bold"> free In-House Disability Awareness Training session</span> after 6 months</span>
                                </li>
                                
                                 <li>
                                    <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Tick.png" alt="Patchwork Images">
                                     <span class="fw-bold" style=""> Exclusive Partner discount across our training and consultancy services</span> 
                                </li>
                                
                                 <li>
                                    <img src="https://stagging.patchworkhub.org/templates/classic-theme/images/Tick.png" alt="Patchwork Images">
                                    <span class="fw-bold" style=""> Dedicated support,</span>  <span style=""> with twice yearly meetings with your account manager and access to email and phone advice</span>
                                </li>
                            </ul>
                            
                        </div>
                        
                        <div class="pt-3">
                            <h5>Enjoy Discounted Job Upgrades </h5>
                            <p>Use job boosters to increase the quantity and relevance of your applications</p>
                        </div>
                        
                        <div class="price-list">
                            <ul>
                                <li>
                                    <i class="fas fa-plus"></i>
                                    <span class="fw-bold" style="">Featured ad</span> fee <span class="fw-bold" style="">£20 </span> for 10 days
                                </li>
                                
                                <li>
                                    <i class="fas fa-plus"></i>
                                    <span class="fw-bold" style="">Urgent ad</span> fee <span class="fw-bold" style="">£12 </span> for 14 days
                                </li>
                                
                                <li>
                                    <i class="fas fa-plus"></i>
                                    <span class="fw-bold" style="">Highlight ad</span> fee <span class="fw-bold" style="">£7 </span> for 7 days
                                </li>
                            </ul>
                        </div>
                        
                      
                        
                        <div class="row pb-4">
                            <div class="col-md-6">
                                <a href="" class="button btn-membership" style="">Back to membership options</a>
                            </div>
                            <div class="col-md-6">
                                 @if($user and $user_plan = $user->user_plan and $user_plan->plan_id == $plan->id)
                                        @if($user_plan->is_valid)
                                            <a href="#" class="theme-btn btn-style-one">{{__("Current Plan")}}</a>
                                        @else
                                            <a href="{{route('user.plan.buy',['id'=>$plan->id])}}" class="theme-btn btn-style-two">{{__('Renew')}}</a>
                                        @endif
                                    @else
                                          <form name="form1" method="post" action="{{route('user.plan.buy',['id'=>$plan->id])}}">
                                              @csrf
                                        <input class="signup cursor" name="plan_id" type="hidden" value="{{$plan->id}}">
                                        <input name="amount" value="{{ $plan->price}}" type="hidden">
                                        <input id="vat-month" name="vat" type="hidden" >
                                        <button type="submit" class="button btn-membership" name="Submitup" style="color: #fff !important">Start free trial</button>
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


@endsection