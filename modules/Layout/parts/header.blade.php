<!-- Preloader -->
@php $site_favicon = setting_item('site_favicon') @endphp
@if (setting_item('enable_preloader'))
    <div class="preloader bc-preload">
        <span class="text">{{ __('LOADING') }}</span>
        @if ($site_favicon)
            <img class="icon" src="{{ get_file_url($site_favicon, 'full') }}"
                alt="{{ setting_item('site_title') }}" />
        @endif
    </div>
@endif

@php
$header_class = $header_style = $row->header_style ?? 'normal';
$logo_id = setting_item('logo_id');
if ($header_style == 'header-style-two') {
    $logo_id = setting_item('logo_white_id');
}
if (empty($is_home) && $header_style == 'normal' && empty($disable_header_shadow)) {
    $header_class .= ' header-shaddow';
}

@endphp
@if ($header_style == 'normal')
    <!-- Header Span -->
    <span class="header-span"></span>
@endif

<div class="top-bar">
    <div class="container">
        <div class="row">
            <div class="column col-md-3 col-sm-3 hak-nav-class-1 top-header-company-link"
                style="line-height: 0;display: grid;align-items: center;">
                <a href="{{ route('page.detail', 'accessibility-statement') }}" class="accessibility top-header-text-color-dark"
                    style="">Accessibility</a>

            </div>
            <div class="column col-md-5 col-sm-5 hak-nav-class-2" style="line-height: 0;">
                <nav class="navigation" style="float: left;">
                    <ul>
                        <li hidden>
                            <a href="#countryModal" class="country-flag popup-with-zoom-anim tip-dark clrDark"
                                data-tippy-placement="right" data-tippy="" data-original-title="Change Country"
                                style="font-family: 'comfortaa !important; ">

                                <img src="https://patchworkhub.org/templates/classic-theme/images/flags/uk.png"
                                    alt="Patchwork Hub | Accessible Job Search for the New Normal">
                            </a>
                        </li>
                        <li class="d-none d-lg-block top-header-company-link">
                            <a href="{{ url('job?_layout=v2') }}" style=""
                                class="clrDark"><i class="icon-feather-list"></i> Browse Jobs</a>
                        </li>
                        <li class="d-none d-lg-block top-header-company-link">
                            <a href="{{ route('page.detail', 'companies') }}" style=""
                                class="clrDark">Companies</a>
                        </li>
                         <li class="d-none d-lg-block top-header-company-link">
                            <a href="http://technostaging.com/patchworkhub-laravel/gig" style=""
                                class="clrDark">Gigs</a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="column col-md-4 col-sm-4 hak-nav-class-3" style="line-height: 0;display: grid;">
                <nav class="navigation">
                    <div class="header-widget d-none d-lg-block" style="float: right;">
                        <nav class="navigation">
                            <ul>
                                   @if (!Auth::id())
                                <li>
                                    <a href="#" style="" area-label="Login"
                                        class="bc-call-modal login "><i class="fas fa-sign-in-alt"></i> Log
                                        in</a>
                                </li>
                                
                                <li><a href="{{ route('register') }}" style=""
                                        class="">Sign up</a></li>
                                 <li><a href="{{ route('job.post') }}"
                                        class="button ripple-effect post-job clrDark" style="">Post
                                        a Job</a>
                                </li>
                                    @else
                                    
                                       @php
                            $editProfile = route('user.admin.detail', ['id' => Auth::id()]);
                        @endphp
                         <li><a href="{{ route('job.post') }}"
                                        class="button ripple-effect post-job clrDark" style="">Post
                                        a Job</a>
                                </li>
                        <div class="login-item dropmenu-right dropdown show">
                            <a href="#" class="is_login dropdown-toggle" id="dropdownMenuUser" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                @if ($avatar_url = Auth::user()->getAvatarUrl())
                                    <img class="avatar" src="{{ $avatar_url }}"
                                        alt="{{ Auth::user()->getDisplayName() }}">
                                @else
                                    <span
                                        class="avatar-text">{{ ucfirst(Auth::user()->getDisplayName()[0]) }}</span>
                                @endif
                                <span
                                    class="full-name">{{ __('Hi, :Name', ['name' => Auth::user()->getDisplayName()]) }}</span>
                                <i class="fa fa-angle-down"></i>
                            </a>
                            <ul class="dropdown-menu text-left" aria-labelledby="dropdownMenuUser">
                                  <li class="menu-hr">
                                    <a href="{{ url('/admin') }}">
                                        @if (is_admin())
                                            {{ __('Admin Dashboard') }}
                                        @elseif(is_candidate())
                                            {{ __('Candidate Dashboard') }}
                                        @else
                                            {{ __('Employer Dashboard') }}
                                        @endif
                                    </a>
                                </li>
                                
                                
                                
                                @if (Modules\Gig\Models\Gig::isEnable())
                                    <li >
                                        @has_permission('gig_manage')
                                        <a href="{{ route('seller.dashboard') }}">{{ __('Seller Dashboard') }}</a>
                                        <a href="{{ route('seller.orders') }}">{{ __('Gig Orders') }}</a>
                                    @else
                                        <a href="{{ route('buyer.orders') }}">{{ __('Gig Orders') }}</a>
                                        @end_has_permission
                                    </li>
                                @endif
                                
                                <li class="@if (Auth::user()->hasPermission('dashboard_vendor_access')) menu-hr @endif" hidden>
                                    <a href="{{ route('user.account') }}">{{ __('My profile') }}</a>
                                </li>
                                @if (setting_item('inbox_enable'))
                                    <li class="menu-hr" hidden><a
                                            href="{{ route('user.chat') }}">{{ __('Messages') }}</a></li>
                                @endif
                                <li class="menu-hr" hidden><a
                                        href="{{ route('user.admin.password', ['id' => auth()->id()]) }}">{{ __('Change password') }}</a>
                                </li>
                                @if (is_employer()  && !is_admin())
                                  <li class="menu-hr">
                                    <a href="{{ route('my-company') }}">
                                       My Company
                                    </a>
                                </li>
                                    <li class="menu-hr"><a
                                            href="{{ route('job.admin.index') }}">{{ __('My Jobs') }}</a></li>
                                    <li class="menu-hr"><a
                                            href="{{ route('job.admin.pending') }}">Pending Jobs</a>
                                    </li>
                                    <li class="menu-hr"><a
                                            href="{{ route('user.plan') }}">Membership</a></li>
                                    <li class="menu-hr"><a
                                            href="{{ route('user.order') }}">Transaction</a></li>
                                    <li class="menu-hr" hidden><a
                                            href="{{ route('company.admin.myContact') }}">{{ __('My Contact') }}</a>
                                    </li>
                                @endif
                                @if (is_candidate() && !is_admin())
                                    <li class="menu-hr"><a
                                            href="{{ route('resumes') }}">My CVs/Resumes</a>
                                    </li>
                                   
                                    <li class="menu-hr"><a
                                            href="{{ route('job.admin.applied') }}">{{ __('My Applied') }}</a>
                                    </li>
                                     <li class="menu-hr"><a
                                            href="{{ route('job.admin.saved') }}">Saved Jobs</a>
                                    </li>
                                     <li class="menu-hr"><a
                                            href="{{ route('job.admin.alert') }}">Job Alerts</a>
                                    </li>
                                @endif
                              
                                <li class="menu-hr">
                                    <a href="#"
                                        onclick="event.preventDefault(); document.getElementById('logout-form').submit();">{{ __('Logout') }}</a>
                                </li>
                            </ul>
                            <form id="logout-form" action="{{ route('auth.logout') }}" method="POST"
                                style="display: none;">
                                {{ csrf_field() }}
                            </form>
                        </div>
                    @endif
                               
                            </ul>
                        </nav>
                    </div>
                    <!--<span class="mmenu-trigger">-->
                    <!--    <span style="height: auto;width: 90px;border: 0px;margin: 16px 0; color: #3f1e66">Menu</span>-->
                    <!--    <button class="hamburger hamburger--collapse" title="Hamburger Menu" type="button"-->
                    <!--        style="left: 60px;">-->

                    <!--        <span class="hamburger-box" style="color:#3f1e66 !important; ">-->
                    <!--            <span class="hamburger-inner"-->
                    <!--                style="width: 90px;border: 0px;margin: 0px 0;color: #000;"></span>-->
                    <!--        </span>-->
                    <!--    </button>-->
                    <!--</span>-->
                </nav>
            </div>
        </div>
    </div>
</div>

<!-- Main Header-->
<header class="main-header {{ $header_class }}">

    <!-- Main box -->
    <div class="main-box">
        <!--Nav Outer -->
        <div class="nav-outer" hidden>
            <div class="logo-box">
                <div class="logo">
                    <a href="{{ home_url() }}">
                        @if ($logo_id)
                            @php $logo = get_file_url($logo_id,'full') @endphp
                            <img src="{{ $logo }}" alt="{{ setting_item('site_title') }}">
                        @else
                            <img src="{{ asset('/images/logo.svg') }}" alt="logo">
                        @endif
                    </a>
                </div>
            </div>

            <nav class="nav main-menu">
                <?php generate_menu('primary'); ?>
            </nav>
            <!-- Main Menu End-->
        </div>


        <div class="outer-box" hidden>
            <ul class="multi-lang">
                @include('Language::frontend.switcher-dropdown')
            </ul>
            <a href="{{ route('user.wishList.index') }}" class="menu-btn mr-3 ml-2">
                @if (auth()->check())
                    <span class="count wishlist_count text-center">{{ (int) auth()->user()->wishlist_count }}</span>
                @endif
                <span class="icon la la-heart-o"></span>
            </a>
            @if (!(isset($exception) && $exception->getStatusCode() == 404))
                <!-- Login/Register -->
                <div class="btn-box">
                    @if (!Auth::id())
                        <a href="#"
                            class="theme-btn btn-style-three bc-call-modal login">{{ __('Login / Register') }}</a>
                    @else
                        @php
                            $editProfile = route('user.admin.detail', ['id' => Auth::id()]);
                        @endphp
                        <div class="login-item dropmenu-right dropdown show">
                            <a href="#" class="is_login dropdown-toggle" id="dropdownMenuUser" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                @if ($avatar_url = Auth::user()->getAvatarUrl())
                                    <img class="avatar" src="{{ $avatar_url }}"
                                        alt="{{ Auth::user()->getDisplayName() }}">
                                @else
                                    <span
                                        class="avatar-text">{{ ucfirst(Auth::user()->getDisplayName()[0]) }}</span>
                                @endif
                                <span
                                    class="full-name">{{ __('Hi, :Name', ['name' => Auth::user()->getDisplayName()]) }}</span>
                                <i class="fa fa-angle-down"></i>
                            </a>
                            <ul class="dropdown-menu text-left" aria-labelledby="dropdownMenuUser">
                                @if (Modules\Gig\Models\Gig::isEnable())
                                    <li>
                                        @has_permission('gig_manage')
                                        <a href="{{ route('seller.dashboard') }}">{{ __('Seller Dashboard') }}</a>
                                        <a href="{{ route('seller.orders') }}">{{ __('Gig Orders') }}</a>
                                    @else
                                        <a href="{{ route('buyer.orders') }}">{{ __('Gig Orders') }}</a>
                                        @end_has_permission
                                    </li>
                                @endif
                                <li class="@if (Auth::user()->hasPermission('dashboard_vendor_access')) menu-hr @endif">
                                    <a href="{{ $editProfile }}">{{ __('My profile') }}</a>
                                </li>
                                @if (setting_item('inbox_enable'))
                                    <li class="menu-hr"><a
                                            href="{{ route('user.chat') }}">{{ __('Messages') }}</a></li>
                                @endif
                                <li class="menu-hr"><a
                                        href="{{ route('user.admin.password', ['id' => auth()->id()]) }}">{{ __('Change password') }}</a>
                                </li>
                                @if (is_employer())
                                    <li class="menu-hr"><a
                                            href="{{ route('job.admin.index') }}">{{ __('My Jobs') }}</a></li>
                                    <li class="menu-hr"><a
                                            href="{{ route('job.admin.allApplicants') }}">{{ __('All Applicants') }}</a>
                                    </li>
                                    <li class="menu-hr"><a
                                            href="{{ route('user.plan') }}">{{ __('My Plans') }}</a></li>
                                    <li class="menu-hr"><a
                                            href="{{ route('user.order') }}">{{ __('My Orders') }}</a></li>
                                    <li class="menu-hr"><a
                                            href="{{ route('company.admin.myContact') }}">{{ __('My Contact') }}</a>
                                    </li>
                                @endif
                                @if (is_candidate() && !is_admin())
                                    <li class="menu-hr"><a
                                            href="{{ route('candidate.admin.myApplied') }}">{{ __('My Applied') }}</a>
                                    </li>
                                @endif
                                <li class="menu-hr">
                                    <a href="{{ url('/admin') }}">
                                        @if (is_admin())
                                            {{ __('Admin Dashboard') }}
                                        @elseif(is_candidate())
                                            {{ __('Candidate Dashboard') }}
                                        @else
                                            {{ __('Employer Dashboard') }}
                                        @endif
                                    </a>
                                </li>
                                <li class="menu-hr">
                                    <a href="#"
                                        onclick="event.preventDefault(); document.getElementById('logout-form').submit();">{{ __('Logout') }}</a>
                                </li>
                            </ul>
                            <form id="logout-form" action="{{ route('auth.logout') }}" method="POST"
                                style="display: none;">
                                {{ csrf_field() }}
                            </form>
                        </div>
                    @endif
                    @if (is_employer())
                        <div class="d-flex align-items-center">
                            <a href="{{ route('job.admin.create') }}"
                                class="theme-btn @if ($header_style == 'header-style-two') btn-style-five @else btn-style-one @endif @if (!auth()->check()) bc-call-modal login @endif">{{ __('Job Post') }}</a>
                        </div>
                    @endif
                </div>
            @endif
        </div>

        <div class="nav-outer">
            <div class="logo-box">
                <div class="logo">
                    <a href="{{ home_url() }}">
                        <img src="{{ asset('images/patchhub-logo.png') }}" alt="">
                    </a>
                </div>
            </div>

            <nav class="nav main-menu">
                <ul class="navigation" id="navbar">
                    <li class="  depth-0"><a target="" href="{{ route('page.detail', 'about') }}">About </a>

                    </li>
                    <li class="  depth-0"><a target="" href="{{ route('page.detail', 'how-it-work-for-employers') }}"> For Employers</a>

                    </li>
                    <li class="  depth-0"><a target="" href="{{ route('page.detail', 'how-it-work-for-patchworkers') }}">Job Seekers</a>
                        <ul class="children-menu menu-dropdown" hidden>
                            <li class=" dropdown depth-1"><a target="" href="/job">Jobs Listing <i
                                        class="caret fa fa-angle-down"></i></a>
                                <ul class="children-menu menu-dropdown">
                                    <li class=" depth-2"><a target="" href="/job">Jobs Listing V1</a></li>
                                    <li class=" depth-2"><a target="" href="/job?_layout=v2">Jobs Listing V2</a>
                                    </li>
                                    <li class=" depth-2"><a target="" href="/job?_layout=v3">Jobs Listing V3</a>
                                    </li>
                                </ul>
                            </li>
                            <li class=" dropdown depth-1"><a target="" href="/job/product-designer-ui-designer">Jobs
                                    Single <i class="caret fa fa-angle-down"></i></a>
                                <ul class="children-menu menu-dropdown">
                                    <li class=" depth-2"><a target=""
                                            href="/job/product-designer-ui-designer">Jobs Single V1</a></li>
                                    <li class=" depth-2"><a target=""
                                            href="/job/product-designer-ui-designer?_layout=v2">Jobs Single V2</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="  depth-0"><a target="" href="{{ route('page.detail', 'blog') }}">Community</a>

                    </li>
                    <li class="  depth-0"><a target="" href="{{ route('page.detail', 'contact') }}">Contact </a>

                    </li>


                </ul>
            </nav>
        </div>
    </div>

    <!-- Mobile Header -->
    <div class="mobile-header">
        <div class="logo">
            <a href="{{ url(app_get_locale(false, '/')) }}">
               
                    <img src="{{ asset('images/patchhub-logo.png') }}" alt="">
              
            </a>
        </div>

        <!--Nav Box-->
        <div class="nav-outer clearfix">

            <div class="outer-box">
                <!-- Login/Register -->
                <div class="login-box">
                    @if (!Auth::id())
                        <a href="#" class="bc-call-modal login"><span class="icon-user"></span></a>
                    @else
                        @php
                            $editProfile = route('user.admin.detail', ['id' => Auth::id()]);
                        @endphp
                        <a href="#" class="is_login dropdown-toggle" id="dropdownMenuUser" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                            @if ($avatar_url = Auth::user()->getAvatarUrl())
                                <img class="avatar" src="{{ $avatar_url }}"
                                    alt="{{ Auth::user()->getDisplayName() }}">
                            @else
                                <span class="avatar-text">{{ ucfirst(Auth::user()->getDisplayName()[0]) }}</span>
                            @endif
                        </a>
                        <ul class="dropdown-menu text-left" aria-labelledby="dropdownMenuUser">

                            <li class="@if (Auth::user()->hasPermission('dashboard_vendor_access')) menu-hr @endif">
                                <a href="{{ $editProfile }}">{{ __('My profile') }}</a>
                            </li>
                            @if (setting_item('inbox_enable'))
                                <li class="menu-hr"><a
                                        href="{{ route('user.chat') }}">{{ __('Messages') }}</a></li>
                            @endif
                            <li class="menu-hr"><a
                                    href="{{ route('user.admin.password', ['id' => auth()->id()]) }}">{{ __('Change password') }}</a>
                            </li>
                            @if (is_employer())
                                <li class="menu-hr"><a
                                        href="{{ route('job.admin.index') }}">{{ __('My Jobs') }}</a></li>
                                <li class="menu-hr"><a
                                        href="{{ route('job.admin.allApplicants') }}">{{ __('All Applicants') }}</a>
                                </li>
                            @endif
                            @if (is_candidate() && !is_admin())
                                <li class="menu-hr"><a
                                        href="{{ route('candidate.admin.myApplied') }}">{{ __('My Applied') }}</a>
                                </li>
                            @endif
                            <li class="menu-hr">
                                <a href="{{ url('/admin') }}">
                                    @if (is_admin())
                                        {{ __('Admin Dashboard') }}
                                    @elseif(is_candidate())
                                        {{ __('Candidate Dashboard') }}
                                    @else
                                        {{ __('Employer Dashboard') }}
                                    @endif
                                </a>
                            </li>
                            <li class="menu-hr">
                                <a href="#"
                                    onclick="event.preventDefault(); document.getElementById('logout-form').submit();">{{ __('Logout') }}</a>
                            </li>
                        </ul>
                    @endif
                </div>

                <a href="#nav-mobile" class="mobile-nav-toggler"><span class="flaticon-menu-1"></span></a>
            </div>
        </div>
    </div>

    <!-- Mobile Nav -->
    <div id="nav-mobile">
        <div class="mm-panels">
            <div id="navbar" class="mm-panel mm-panel_opened">
                <div class="mm-navbar mm-navbar_sticky"><a class="mm-navbar__title"><span>Menu</span></a></div>
                <ul class="navigation mm-listview">
                    <li class=" depth-0 mm-listitem"><a target="" href="" class="mm-listitem__text">Find Jobs</a> </li>
                    <li class=" depth-0 mm-listitem"><a target="" href="{{ route('page.detail', 'about') }}" class="mm-listitem__text"> About
                            </a></li>
                    <li class="dropdown depth-0 mm-listitem"><a target="" href="{{ route('page.detail', 'how-it-work-for-employers') }}" class="mm-listitem__text">Employers
                            <i class="caret fa fa-angle-down"></i></a><a class="mm-btn mm-btn_next mm-listitem__btn"
                            href="#mm-3"><span class="mm-sronly">Open submenu</span></a></li>
                    <li class="dropdown depth-0 mm-listitem"><a target="" href="{{ route('page.detail', 'how-it-work-for-employers') }}" class="mm-listitem__text">Job Seekers
                            <i class="caret fa fa-angle-down"></i></a><a class="mm-btn mm-btn_next mm-listitem__btn"
                            href="#mm-6"><span class="mm-sronly">Open submenu</span></a></li>
                    <li class=" depth-0 mm-listitem"><a target="" href="/"
                            class="mm-listitem__text">Together </a></li>
                    <li class=" depth-0 mm-listitem"><a target="" href="{{ route('page.detail', 'accessibility-statement') }}" class="mm-listitem__text">Accessibility </a></li>
                    <li class=" depth-0 mm-listitem post-job"><a target="" href="{{ route('job.post') }}" class="mm-listitem__text">Post Job </a></li>
                    <li class=" depth-0 mm-listitem post-job"><a target="" href="/" class="mm-listitem__text"><img src="https://patchworkhub.org/templates/classic-theme/images/flags/nl.png" alt="Patchwork Hub | Accessible Job Search for the New Normal"></a></li>
                </ul>
            </div>
           
         
            <div id="mm-3" class="mm-panel mm-hidden" aria-hidden="true">
                <div class="mm-navbar mm-navbar_sticky"><a class="mm-btn mm-btn_prev mm-navbar__btn" href="#navbar"
                        aria-haspopup="true" aria-owns="navbar"><span class="mm-sronly">Close submenu</span></a><a
                        class="mm-navbar__title" href="#navbar" aria-hidden="true"><span>Employers </span></a></div>
                <ul class="children-menu menu-dropdown mm-listview">
                    <li class=" depth-1 mm-listitem"><a target="" href="{{ route('page.detail', 'how-it-works')}}" class="mm-listitem__text">How it works</a></li>
                    <li class=" depth-1 mm-listitem"><a target="" href="{{ route('page.detail', 'faq-employer')}}"
                            class="mm-listitem__text">Employer FAQs </a></li>
                    <li class=" depth-1 mm-listitem"><a target="" href="{{ route('register') }}"
                                class="mm-listitem__text">Join for free </a></li>
                </ul>
            </div>
 
            <div id="mm-6" class="mm-panel mm-hidden" aria-hidden="true">
                <div class="mm-navbar mm-navbar_sticky"><a class="mm-btn mm-btn_prev mm-navbar__btn" href="#navbar"
                        aria-haspopup="true" aria-owns="navbar"><span class="mm-sronly">Close submenu</span></a><a
                        class="mm-navbar__title" href="#navbar" aria-hidden="true"><span>Job Seekers </span></a></div>
                <ul class="children-menu menu-dropdown mm-listview">
                    <li class=" depth-1 mm-listitem"><a target="" href="{{ route('page.detail', 'how-it-works')}}" class="mm-listitem__text">How it works</a></li>
                    <li class=" depth-1 mm-listitem"><a target="" href="{{ route('page.detail', 'faq-patchworker')}}"
                            class="mm-listitem__text">Patchworker FAQs </a></li>
                    <li class=" depth-1 mm-listitem"><a target="" href="{{ route('register')}}"
                                class="mm-listitem__text">Join for free </a></li>
                </ul>
            </div>
            <div id="mm-7" class="mm-panel mm-hidden" aria-hidden="true">
                <div class="mm-navbar mm-navbar_sticky"><a class="mm-btn mm-btn_prev mm-navbar__btn" href="#mm-6"
                        aria-haspopup="true" aria-owns="mm-6"><span class="mm-sronly">Close submenu</span></a><a
                        class="mm-navbar__title" href="#mm-6" aria-hidden="true"><span>Employers List </span></a></div>
                <ul class="children-menu menu-dropdown mm-listview">
                    <li class="depth-2 mm-listitem"><a target="" href="/companies?_layout=v1"
                            class="mm-listitem__text">Employers Listing V1</a></li>
                    <li class="depth-2 mm-listitem"><a target="" href="/companies?_layout=v2"
                            class="mm-listitem__text">Employers Listing V2</a></li>
                    <li class="depth-2 mm-listitem"><a target="" href="/companies?_layout=v3"
                            class="mm-listitem__text">Employers Listing V3</a></li>
                </ul>
            </div>
            <div id="mm-8" class="mm-panel mm-hidden" aria-hidden="true">
                <div class="mm-navbar mm-navbar_sticky"><a class="mm-btn mm-btn_prev mm-navbar__btn" href="#mm-6"
                        aria-haspopup="true" aria-owns="mm-6"><span class="mm-sronly">Close submenu</span></a><a
                        class="mm-navbar__title" href="#mm-6" aria-hidden="true"><span>Employers Single </span></a>
                </div>
                <ul class="children-menu menu-dropdown mm-listview">
                    <li class="depth-2 mm-listitem"><a target="" href="/companies/netflix?_layout=v1"
                            class="mm-listitem__text">Employers Single V1</a></li>
                    <li class="depth-2 mm-listitem"><a target="" href="/companies/netflix?_layout=v2"
                            class="mm-listitem__text">Employers Single V2</a></li>
                </ul>
            </div>
            <div id="mm-9" class="mm-panel mm-hidden" aria-hidden="true">
                <div class="mm-navbar mm-navbar_sticky"><a class="mm-btn mm-btn_prev mm-navbar__btn" href="#navbar"
                        aria-haspopup="true" aria-owns="navbar"><span class="mm-sronly">Close submenu</span></a><a
                        class="mm-navbar__title" href="#navbar" aria-hidden="true"><span>Candidates </span></a></div>
                <ul class="children-menu menu-dropdown mm-listview">
                    <li class="dropdown depth-1 mm-listitem"><a target="" href="/candidate"
                            class="mm-listitem__text">Candidates List <i class="caret fa fa-angle-down"></i></a><a
                            class="mm-btn mm-btn_next mm-listitem__btn" href="#mm-10"><span
                                class="mm-sronly">Open submenu</span></a></li>
                    <li class="depth-1 mm-listitem"><a target="" href="/candidate/ui-designer-at-invision-1"
                            class="mm-listitem__text">Candidates Single</a></li>
                </ul>
            </div>
            <div id="mm-10" class="mm-panel mm-hidden" aria-hidden="true">
                <div class="mm-navbar mm-navbar_sticky"><a class="mm-btn mm-btn_prev mm-navbar__btn" href="#mm-9"
                        aria-haspopup="true" aria-owns="mm-9"><span class="mm-sronly">Close submenu</span></a><a
                        class="mm-navbar__title" href="#mm-9" aria-hidden="true"><span>Candidates List </span></a>
                </div>
                <ul class="children-menu menu-dropdown mm-listview">
                    <li class="depth-2 mm-listitem"><a target="" href="/candidate?_layout=v1"
                            class="mm-listitem__text">Candidates Listing V1</a></li>
                    <li class="depth-2 mm-listitem"><a target="" href="/candidate?_layout=v2"
                            class="mm-listitem__text">Candidates Listing V2</a></li>
                    <li class="depth-2 mm-listitem"><a target="" href="/candidate?_layout=v3"
                            class="mm-listitem__text">Candidates Listing V3</a></li>
                </ul>
            </div>
            <div id="mm-11" class="mm-panel mm-hidden" aria-hidden="true">
                <div class="mm-navbar mm-navbar_sticky"><a class="mm-btn mm-btn_prev mm-navbar__btn" href="#navbar"
                        aria-haspopup="true" aria-owns="navbar"><span class="mm-sronly">Close submenu</span></a><a
                        class="mm-navbar__title" href="#navbar" aria-hidden="true"><span>Pages </span></a></div>
                <ul class="children-menu menu-dropdown mm-listview">
                    <li class="depth-1 mm-listitem"><a target="" href="/news" class="mm-listitem__text">Blog List</a>
                    </li>
                    <li class="depth-1 mm-listitem"><a target="" href="/news/5-tips-for-your-job-interviews"
                            class="mm-listitem__text">Blog Single</a></li>
                    <li class="depth-1 mm-listitem"><a target="" href="/page/about"
                            class="mm-listitem__text">About</a></li>
                    <li class="depth-1 mm-listitem"><a target="" href="/page/faqs" class="mm-listitem__text">FAQ's</a>
                    </li>
                    <li class="depth-1 mm-listitem"><a target="" href="/page/terms-and-conditions"
                            class="mm-listitem__text">Terms</a></li>
                    <li class="depth-1 mm-listitem"><a target="" href="/contact" class="mm-listitem__text">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</header>
<!--End Main Header -->

<div class="myBox" style="height: 40px;padding-top: 5px;">
        <!--<h3 style="text-align:center; margin-top:10px;">-->
        <!--<a href="https://patchworkhub.org/accessibility">Accessibility</a>-->
        <!--</h3>-->
        <div id="font-setting-buttons" hidden="">

            <button style="margin-right:6px" class="decrease"><i class="fas fa-font fa-sm"></i> </button>
            <button style="margin-right:6px" class="resetText"><i class="fas fa-font fa-xl"></i></button>
            <button style="margin-right:6px" class="increase"><i class="fas fa-font fa-lg"></i> </button>
            <button id="color-switcher-dark-btn" class="hContrast" style="margin-right:6px"><i class="fas fa-adjust"></i></button>
            <button style="margin-right:6px" class="nContrast"><i class="fas fa-sun"></i></button>
            <button style="margin-right:6px" class="myButton"><i class="far fa-sun"></i></button>
        </div>


        <div id="font-setting-buttons" style="display: inline-flex;" tabindex="-1">
            <button tabindex="-1" style="margin-right:6px" class="accessibility-font" data-accessibility-zoom="0.9"><i class="fas fa-font fa-sm"></i> </button>
            <button tabindex="-1" style="margin-right:6px" class="accessibility-font" data-accessibility-zoom="1.0"><i class="fas fa-font fa-xl"></i></button>
            <button tabindex="-1" style="margin-right:6px" class="accessibility-font" data-accessibility-zoom="1.1"><i class="fas fa-font fa-lg"></i> </button>


            <button tabindex="-1" id="light-theme" class="accessibility-light hak-default-theme" style="height: 24px;width: 24px;margin: 3px;background: url('{{ asset('images/patchwork/normal-style.jpg')}}');background-position: top center;border: 2px solid #f5f5f5;"></button>
            <button tabindex="-1" id="accessibility-color" class="hak-dark-theme" style="height: 24px;width: 24px;margin: 3px;background: url('{{ asset('images/patchwork/hivis-style.jpg')}}');background-position: top center;border: 2px solid #f5f5f5;"></button>
            <button tabindex="-1" id="" class="hak-light-theme" style="height: 24px;width: 24px;margin: 3px;background: url('{{ asset('images/patchwork/beige-style.jpg') }}');background-position: top center;border: 2px solid #f5f5f5;"></button>

        </div>


        <button tabindex="-1" id="showMyBox" style="background: transparent; color:#FFF; font-size:25px; padding:0px; position:absolute; right:-40px; top:0;"><img src="{{ asset('images/patchwork/icon-accessibility-widget.png') }}" style="width: 40px;" alt="Patchwork Hub | Accessible Job Search for the New Normal" tabindex="-1"></button>

    </div>


