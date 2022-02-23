
@if(Auth::user()->role_id == 2)

 
 
    
                <div class="dashboard-sidebar ">
                    <div class="dashboard-nav-container">
                          <!-- Responsive Navigation Trigger -->
                            <a  class="dashboard-responsive-nav-trigger">
                                <i class="fas fa-bar"></i>
                                <span class="trigger-title">Dashboard Navigation</span>
                            </a>
                       
                            <div class="dashboard-nav">
                                <div class="dashboard-nav-inner">
                                    <h6>Employer:</h6>
                                    <ul>
                                        <li>
                                            <a  href="{{ url('/admin') }}">
                                                <i class="fas fa-th-large"></i> Dashboard
                                            </a>
                                        </li>
                                        <li>
                                            <a  href="{{ route('company.admin.index') }}" >
                                                <i class="fas fa-cube"></i> My Company 
                                            </a>
                                        </li>
                                        <li>
                                            <a  href="" hidden>
                                                <i class="fas fa-cube"></i> View Company Profile
                                            </a>
                                        </li>
                                        <li>
                                            <a  href="" hidden>
                                                <i class="fas fa-cube"></i> Edit Company Profile
                                            </a>
                                        </li>
                                         <li>
                                            <a  href="{{ route('plan') }}">
                                                <i class="fas fa-gift"></i> Membership
                                            </a>
                                        </li>
                                    </ul>
                                    <h6>My Jobs:</h6>
                                    <ul>
                                  
                                        
                                        <li>
                                            <a  href="{{ route('job.admin.index')}}">
                                                <i class="fas fa-briefcase"></i> My jobs
                                            </a>
                                        </li>
                                         <li>
                                            <a  href="{{ route('job.admin.pending')}}">
                                                <i class="fas fa-clock"></i> Pending jobs
                                            </a>
                                        </li>
                                        <li>
                                            <a  href="" hidden>
                                                <i class="fas fa-eye-slash"></i> Hidden jobs
                                            </a>
                                        </li>
                                        <li>
                                            <a  href="{{ route('job.admin.expired')}}">
                                                <i class="fas fa-calendar"></i> Expired jobs
                                            </a>
                                        </li>
                                        <li>
                                            <a  href="" hidden>
                                                <i class="fas fa-sync"></i> Resubmitted jobs
                                            </a>
                                        </li>
                                        <li>
                                            <a  href="{{ route('user.wishList.index') }}">
                                                <i class="fas fa-heart"></i> Favourite Patchworkers
                                            </a>
                                        </li>
                                    </ul>
                                    <h6>Account:</h6>
                                    <ul>
                                  
                                        <li>
                                            <a  href="{{ route('user.account') }}">
                                                <i class="fas fa-file-alt"></i> Account Details
                                            </a>
                                        </li>
                                        <li>
                                            <a  href="{{ route('user.order') }}">
                                                <i class="fas fa-wallet"></i> Billing
                                            </a>
                                        </li>
                                         <li>
                                            <a  href=""  onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                                <i class="fas fa-sign-out-alt"></i> Logout
                                            </a>
                                            
                                            <form id="logout-form" action=" {{route('auth.logout')}} " method="POST" style="display: none;">
                                                @csrf
                                            </form>
                                        </li>
                                       
                                    </ul>
                                </div>
                            </div>     
                                 
                    </div>
                </div>
            
            
@endif

@if(Auth::user()->role_id == 3)
     <div class="col-lg-3  col-md-12">
                <div class="dashboard-sidebar ">
                    <div class="dashboard-nav-container">
                          <!-- Responsive Navigation Trigger -->
                            <a  class="dashboard-responsive-nav-trigger">
                                <i class="fas fa-bar"></i>
                                <span class="trigger-title">Dashboard Navigation</span>
                            </a>
                            
                            <div class="dashboard-nav">
                                <div class="dashboard-nav-inner">
                                   
                                    <ul>
                                        <li>
                                            <a  href="" class="purple-item dash">
                                                 Dashboard
                                            </a>
                                        </li>
                                        <li>
                                            <a  href="" class="purple-item">
                                                Edit my profile
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript(void);">
                                                Profile Completion
                                                <div class="d-flex align-items-center">
                                                    <div class="progress">
                                                        <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    <span class="pl-3">25%</span>
                                                    
                                                </div>
                                            </a>
                                        </li>
                                         <li>
                                            <a  href="">
                                                <i class="fas fa-cube"></i> View my profile
                                            </a>
                                        </li>
                                        
                                        <li>
                                            <a  href="">
                                                <i class="fas fa-eye-slash"></i> Hide my profile
                                            </a>
                                        </li>
                                    </ul>
                                    <h6>My Jobs:</h6>
                                    <ul>
                                  
                                        <li>
                                            <a  href="{{ route('my-company') }}">
                                                <i class="fas fa-search"></i> Browse Jobs
                                            </a>
                                        </li>
                                        <li>
                                            <a  href="{{ route('job.admin.index')}}">
                                                <i class="fas fa-heart"></i> Saved jobs
                                            </a>
                                        </li>
                                         <li>
                                            <a  href="">
                                                <i class="fas fa-bell"></i>  job alerts
                                            </a>
                                        </li>
                                        <li>
                                            <a  href="">
                                                <i class="fas fa-briefcase"></i> Application History
                                            </a>
                                        </li>
                                       
                                    </ul>
                                    <h6>Account:</h6>
                                    <ul>
                                         <li>
                                            <a  href="{{ route('user.account') }}">
                                               <i class="fas fa-gear"></i> Settings
                                            </a>
                                        </li>
                                        <li>
                                            <a  href="{{ route('user.account') }}">
                                                <i class="fas fa-user"></i> My Details
                                            </a>
                                        </li>
                                        <li>
                                            <a  href="{{ route('user.order') }}">
                                                <i class="fas fa-wallet"></i> Billing
                                            </a>
                                        </li>
                                         <li>
                                            <a  href=""  onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                                <i class="fas fa-sign-out-alt"></i> Logout
                                            </a>
                                            
                                            <form id="logout-form" action=" {{route('auth.logout')}} " method="POST" style="display: none;">
                                                @csrf
                                            </form>
                                        </li>
                                       
                                    </ul>
                                </div>
                            </div>     
                                 
                    </div>
                </div>
            </div>
@endif