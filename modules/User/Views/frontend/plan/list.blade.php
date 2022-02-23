<div class="container mt-5">
  
    <div class="row">
        <div class="col-xl-12">
            <div class="row margin-bottom-50">
                @foreach($plans as $plan)
                @if($plan->title == 'partner')
               <div class="col-xl-4">
                  <div class="plan-heading"> 
                                Buy one-off job adverts
                            </div>
                         
                                                      <div class="plan-body">
                                      <div class="plan-head">Select your number of jobs </div> 
                                        <span style="font-size:12px">(up to maximum of 10)</span>
                                        <div class="d-flex quantity">
                                            <p>Quantity</p>
                                            <div class="row text-center align-items-center">
                                               
                                                <div class="col-xl-4 text-left">
                                                   <button class="minus" disabled="disabled" style=""><i class="fa fa-minus"></i></button>
                                               </div>
                                                <div class="col-xl-4 text-center" style="padding: 0">
                                                     <input type="text" class="count plan-count text-center" readonly="" value="1" min="1" max="10" style="border:1px solid #401e66 !important">
                                                </div>
                                               
                                                <div class="col-xl-4 text-right">
                                                    <button class="btn-plus" style=""><i class="fa fa-plus"></i></button>
                                                </div>
                                                
                                            </div>
                                        </div> 
                                        
                                        <div class="safety-info">
                                            <div class="text-center safety-heading" style="font-size:24px"> Safety in numbers </div>
                                            <div class="text-center fw-body lh-3">The more you get, </div>
                                            <div class="text-center fw-body lh-3">the more you save.</div>
                                            
                                        </div>
                                        
                                        <div class="discount price-div" style="display:none">
                                            <div class="py-2" hidden="">Price: £<span id="actual_price"></span></div>
                                            <div hidden="">Discount</div>
                                                <div class="discount_price">£<span id="discount" class="discount_pricespan"></span> discount </div>
                                                
                                                <div class="text-center fw-body lh-3">The more you get, </div>
                                            <div class="text-center fw-body lh-3">the more you save.</div>
                                        </div>
                                        <a href="{{ route('single-package') }}">
                                            
                                            <div class="single-feature single-packages" style="border-right: 2px solid rgb(64, 30, 102); border-bottom: 2px solid rgb(64, 30, 102);">
                                            
                                            Full features of single-use package
                                            </div>
                                            
                                        </a>
                                        
                                        
                                        
                                   
                                        <hr class="horizontal" style="border-bottom : 2px dotted  #401e66 !important">
                                        
                                        <div class="price-div">
                                            <div>Total </div>
                                                <div class="price">£<span id="total_price" class="pricespan">105</span><span> +VAT</span></div>
                                            <div class="mt-5-7">
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
                                                <button type="submit" class="button btn-price" name="Submitup" style="color: #fff !important">Buy now</button>
                                            </form>
                                            @endif
                                                                                                                                        </div>
                                          
                                            
                                        </div>
                             </div>
                                     
                         
                                           
                         
                                           
                    
               </div>
               @endif
                    @endforeach
                    
                     @foreach($plans as $plan)
                @if($plan->title == 'monthly-yearly')
                <div class="col-xl-8">
                    <div class="plan-mheading">
                               <div class="text-left w-50 pl-2">Become a partner</div>
                               <div class="text-right ml-auto"> 
                                    <div class="container switch-div">
                                        <label class="switch">
                                      <input type="checkbox" checked="" onchange="toggleMonthlyYearly()">
                                      <span class="slider round"></span>
                                    </label>
                                        </div>
                               </div>
                    </div>
                    <div class="row">
                      <div class="col-xl-6 monthly" style="opacity: 0.5;">
                            <div class="plan-body">
                                        <ul class="plan-list">
                                <li><img src="{{ asset('images/patchwork/Tick.png') }}" alt="Patchwork Images"> Unlimited number of job posts</li>
                                <li><img src="{{ asset('images/patchwork/Tick.png') }}" alt="Patchwork Images"> Your logo on our home page</li>
                                <li><img src="{{ asset('images/patchwork/Tick.png') }}" alt="Patchwork Images"> Public company profile page</li>
                                <li><img src="{{ asset('images/patchwork/Tick.png') }}" alt="Patchwork Images"> 1 free featured job per month</li>
                                <li><img src="{{ asset('images/patchwork/Tick.png') }}" alt="Patchwork Images"> Discounted add-ons</li>

                            </ul>
                            
                                <div  href="{{ route('monthly-package') }}" class="single-feature mt-7" style="border-right: 2px solid rgb(64, 30, 102); border-bottom: 2px solid rgb(64, 30, 102);">
                                            Full features of monthly package
                             </div>

                             
                                        
                                        <hr class="horizontal" style="border-bottom : 2px dotted  #401e66 !important">
                                        
                                <div class="price-div">
                                    <div>Per month </div>
                                        <div class="price">£<span class="price_value month_price">{{ $plan->price }}</span> <span>+VAT</span></div>
                                    <div class="plan-paid">(paid monthly)</div>
                                    <div class="mt-2">
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
                                        <input name="amount" value="{{ $plan->price}}" hidden>
                                        <input id="vat-month" name="vat" type="hidden" >
                                        <button type="submit" class="button btn-price" name="Submitup" style="color: #fff !important">Start free trial</button>
                                    </form>
                                    @endif
                                                                      
                                                                                                    </div>                
                                </div>
                            
                            </div>
                    
                        </div>
                                                
                                                 
                         
                                                  
                      <div class="col-xl-6 yearly">
                            
                            <div class="plan-body">
                                    <ul class="plan-list">
                                <li><img src="{{ asset('images/patchwork/Tick.png') }}" alt="Patchwork Images"> Unlimited number of job posts</li>
                                <li><img src="{{ asset('images/patchwork/Tick.png') }}" alt="Patchwork Images"> Your logo on our home page</li>
                                <li><img src="{{ asset('images/patchwork/Tick.png') }}" alt="Patchwork Images"> Public company profile page</li>
                                <li><img src="{{ asset('images/patchwork/Tick.png') }}" alt="Patchwork Images"> 2 free featured jobs per month</li>
                                <li><img src="{{ asset('images/patchwork/Tick.png') }}" alt="Patchwork Images"> Discounted add-ons</li>
                                <li><img src="{{ asset('images/patchwork/Tick.png') }}" alt="Patchwork Images"> Free Disability Awareness session</li>
                            </ul>
                            
                            <a href="{{ route('annual-package') }}">
                                <div class="single-feature mt-3" style="border-right: 2px solid rgb(64, 30, 102); border-bottom: 2px solid rgb(64, 30, 102);">
                                            Full features of annual package
                             </div>
                            </a>
                             
                                        
                                        <hr class="horizontal" style="border-bottom : 2px dotted  #401e66 !important">
                                        
                                <div class="price-div">
                                    <div>Per month </div>
                                        <div class="price">£<span class="price_value annual_price">{{ intVal($plan->annual_price)/ 12 }}</span> <span>+VAT</span></div>
                                    <div class="plan-paid">(paid annually)</div>
                                    <div class="mt-2">
                                        @if($user and $user_plan = $user->user_plan and $user_plan->plan_id == $plan->id)
                                        @if($user_plan->is_valid)
                                            <a href="#" class="theme-btn btn-style-one">{{__("Current Plan")}}</a>
                                        @else
                                            <a href="{{route('user.plan.buy',['id'=>$plan->id])}}" class="theme-btn btn-style-two">{{__('Renew')}}</a>
                                        @endif
                                    @else
                                    <form name="form1" method="post" action="{{route('user.plan.buy',['id'=>$plan->id])}}">
                                        @csrf
                                        <input class="signup cursor" name="upgrade" type="hidden" value="{{ $plan->id }}">
                                        <input id="vat-annual" name="vat" type="hidden" >
                                        <input  name="amount" type="hidden" value="{{ intVal($plan->annual_price)/ 12 }}">
                                        <button type="submit" class="button btn-price" name="Submitup" style="color: #fff !important">Start free trial</button>
                                    </form>
                                    @endif
                                         
                                                                                                                
                                        </div>
                                    <div class="text-center save"> SAVE &nbsp;  £1,200</div>
                                            
                                </div>
                            </div>
                                                               
                              
                        </div>
                                                
                         
                    </div>
                </div>   
                
                 @endif
                    @endforeach
                
            </div>
            
            <div class="text-center clrPurple" style="margin-bottom:30px; ">    <a href="" class="button welcome-offer clrPurple" style="color: #401e66 !important">See Welcome Offer</a></div>
            
            <hr class="horizontal" style="border-bottom : 2px dotted  #401e66 !important">
            
            <div class="text-center" style="padding:20px 0; font-weight:bold">
                <p class="text-center safety-heading">Want us to set you up? As a welcome offer to our new Partners. we will set up your account and post your jobs on your behalf for your first 12 months with us. We know your time matters.</p>   
                <p class="text-center safety-heading">Discuss your membership options or find out more about our services.</p>
                <a href="" class="button btn-contact" style="">Contact Us</a>
            </div>
        </div>
    </div>
</div>

