<!-- Banner Section-->
<section class="banner-section hero-banner-style-1" hidden>
    <div class="auto-container">
        <div class="row">
            <div class="content-column col-lg-7 col-md-12 col-sm-12">
                <div class="inner-column wow fadeInUp" data-wow-delay="1000ms">
                    <div class="title-box">
                        <h3>{!! @clean($title) !!}</h3>
                        <div class="text">{{ $sub_title }}</div>
                    </div>

                    <!-- Job Search Form -->
                    <div class="job-search-form">
                        <form method="get" action="{{ route('job.search') }}">
                            <div class="row">
                                <div class="form-group col-lg-5 col-md-12 col-sm-12">
                                    <span class="icon flaticon-search-1"></span>
                                    <input type="text" name="s" placeholder="{{ __("Job title...") }}">
                                </div>
                                <!-- Form Group -->
                                <div class="form-group col-lg-4 col-md-12 col-sm-12 location bc-select-has-delete">
                                    <span class="icon flaticon-map-locator"></span>
                                    <select class="chosen-select" name="location">
                                        <option value="">{{ __("All City") }}</option>
                                        @php
                                        $traverse = function ($locations, $prefix = '') use (&$traverse) {
                                            foreach ($locations as $location) {
                                                $translate = $location->translateOrOrigin(app()->getLocale());
                                                printf("<option value='%s'>%s</option>", $location->id, $prefix . ' ' . $translate->name);
                                                $traverse($location->children, $prefix . '-');
                                            }
                                        };
                                        $traverse($list_locations);
                                        @endphp
                                    </select>
                                </div>
                                <!-- Form Group -->
                                <div class="form-group col-lg-3 col-md-12 col-sm-12 btn-box">
                                    <button type="submit" class="theme-btn btn-style-one"><span class="btn-title">{{ __("Find Jobs") }}</span></button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- Job Search Form -->

                    @if(!empty($popular_searches))
                        <!-- Popular Search -->
                        <div class="popular-searches">
                            <span class="title">{{ __("Popular Searches") }} : </span>
                            @foreach($popular_searches as $key => $val)
                                @if($key != 0), @endif
                                <a href="{{ route('job.search').'?s='.$val }}">{{ $val }}</a>
                            @endforeach
                        </div>
                        <!-- End Popular Search -->
                    @endif
                </div>
            </div>

            <div class="image-column col-lg-5 col-md-12">
                <div class="image-box">
                    @if(!empty($banner_image))
                        <figure class="main-image wow fadeIn" data-wow-delay="500ms">
                            <img src="{{ $banner_image_url }}" alt="banner image">
                        </figure>
                    @endif

                    @if(!empty($list_images))
                        @foreach($list_images as $key => $val)
                            @if($key == 0 && !empty($val['image_id']))
                                <!-- Info BLock One -->
                                <div class="info_block anm wow fadeIn" data-wow-delay="1000ms" data-speed-x="2" data-speed-y="2">
                                    @if(!empty($val['url'])) <a href="{{ $val['url'] }}"> @endif
                                        <img src="{{ \Modules\Media\Helpers\FileHelper::url($val['image_id'], 'full') }}" alt="">
                                    @if(!empty($val['url'])) </a> @endif
                                </div>
                            @endif
                            @if($key == 1 && !empty($val['image_id']))
                                <!-- Info BLock Two -->
                                <div class="info_block_two anm wow fadeIn" data-wow-delay="2000ms" data-speed-x="1" data-speed-y="1">
                                    @if(!empty($val['url'])) <a href="{{ $val['url'] }}"> @endif
                                        <img src="{{ \Modules\Media\Helpers\FileHelper::url($val['image_id'], 'full') }}" alt="">
                                    @if(!empty($val['url'])) </a> @endif
                                </div>
                            @endif
                            @if($key == 2 && !empty($val['image_id']))
                                <!-- Info BLock Three -->
                                <div class="info_block_three anm wow fadeIn" data-wow-delay="1500ms" data-speed-x="4" data-speed-y="4">
                                    @if(!empty($val['url'])) <a href="{{ $val['url'] }}"> @endif
                                        <img src="{{ \Modules\Media\Helpers\FileHelper::url($val['image_id'], 'full') }}" alt="">
                                    @if(!empty($val['url'])) </a> @endif
                                </div>
                            @endif
                            @if($key == 3 && !empty($val['image_id']))
                                <!-- Info BLock Four -->
                                <div class="info_block_four anm wow fadeIn" data-wow-delay="2500ms" data-speed-x="3" data-speed-y="3">
                                    @if(!empty($val['url'])) <a href="{{ $val['url'] }}"> @endif
                                        <img src="{{ \Modules\Media\Helpers\FileHelper::url($val['image_id'], 'full') }}" alt="">
                                    @if(!empty($val['url'])) </a> @endif
                                </div>
                            @endif
                        @endforeach
                    @endif
                </div>
            </div>
        </div>
    </div>
</section>

<section class="banner">
    <div class="intro-banner" data-background-image="{{ asset('images/background-imgs/top-banner-bg.png') }}"
        style="padding: 170px 0;margin-top: 0px; background-image: url({{ asset('images/background-imgs/top-banner-bg.png') }});">
        <div class="container">
            <div class="row">

                <div class="col-md-12">
                    <div class="banner-headline">
                        <!--<h3><strong>Find A Job</strong>
                                                <br>
                                                <span>Simple, fast and efficient</span></h3>-->
                        <h2 style="">Find work that fits you.</h2>
                        <h4 style="font-size: 16px;line-height: 1;">Where talent meets accessible working.</h4>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <form autocomplete="off" method="get" action="{{ route('job.search' ) }}" accept-charset="UTF-8">
                        <div class="intro-banner-search-form margin-top-45 ">
                            <div class="intro-search-field">
                                <input type="hidden" name="_layout" value="v2">
                                <input id="intro-keywords" type="text" class="qucikad-ajaxsearch-input"
                                    placeholder="Job Title or Keywords" data-prev-value="0"
                                    data-noresult="More Results For"
                                    style="font-family: 'comfortaa !important; " name="s">
                                <i class="qucikad-ajaxsearch-close fa fa-times-circle" aria-hidden="true"
                                    style="display: none;"></i>
                                <div id="qucikad-ajaxsearch-dropdown" size="0" tabindex="0">
                                    <ul>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="accounting">
                                            <img src="https://img.icons8.com/office/80/000000/accounting.png"
                                                alt="accounting">
                                            <span class="qucikad-as-cat" style="">Accounting</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="administration">
                                            <img src="https://img.icons8.com/office/80/000000/administrative-tools.png"
                                                alt="administration">
                                            <span class="qucikad-as-cat" style="">Administration</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="arts-and-media">
                                            <img src="https://img.icons8.com/office/80/000000/camcorder-pro.png"
                                                alt="arts-and-media">
                                            <span class="qucikad-as-cat" style="">Arts and Media</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="agriculture-or-horticulture">
                                            <img src="https://img.icons8.com/office/80/000000/paper-bag-with-seeds.png"
                                                alt="agriculture-or-horticulture">
                                            <span class="qucikad-as-cat" style="">Agriculture or
                                                Horticulture</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="armed-forces">
                                            <img src="https://img.icons8.com/office/80/000000/night-vision.png"
                                                alt="armed-forces">
                                            <span class="qucikad-as-cat" style="">Armed Forces</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="beauty-and-therapy">
                                            <img src="https://img.icons8.com/office/80/000000/massage.png"
                                                alt="beauty-and-therapy">
                                            <span class="qucikad-as-cat" style="">Beauty and Therapy</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="care-childcare-or-social-care-2">
                                            <img src="https://img.icons8.com/office/80/000000/counselor.png"
                                                alt="care-childcare-or-social-care-2">
                                            <span class="qucikad-as-cat" style="">Care childcare or Social
                                                care</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="communications">
                                            <img src="https://img.icons8.com/office/80/000000/comments.png"
                                                alt="communications">
                                            <span class="qucikad-as-cat" style="">Communications</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="contact-centre">
                                            <img src="https://img.icons8.com/office/80/000000/phone-office.png"
                                                alt="contact-centre">
                                            <span class="qucikad-as-cat" style="">Contact centre</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="consulting">
                                            <img src="https://img.icons8.com/office/80/000000/parse-resumes.png"
                                                alt="consulting">
                                            <span class="qucikad-as-cat" style="">Consulting</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="customer-service-1">
                                            <img src="https://img.icons8.com/office/80/000000/online-support.png"
                                                alt="customer-service-1">
                                            <span class="qucikad-as-cat" style="">Customer Service</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="design">
                                            <img src="https://img.icons8.com/office/80/000000/art-prices.png"
                                                alt="design">
                                            <span class="qucikad-as-cat" style="">Design</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="education-or-training">
                                            <img src="https://img.icons8.com/office/80/000000/school.png"
                                                alt="education-or-training">
                                            <span class="qucikad-as-cat" style="">Education or Training</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="energy-utilities-or-environment">
                                            <img src="https://img.icons8.com/office/80/000000/tsunami.png"
                                                alt="energy-utilities-or-environment">
                                            <span class="qucikad-as-cat" style="">Energy, Utilities or
                                                Environment</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="facilities-management">
                                            <img src="https://img.icons8.com/office/80/000000/work.png"
                                                alt="facilities-management">
                                            <span class="qucikad-as-cat" style="">Facilities management</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="hospitality-leisure-tourism">
                                            <img src="https://img.icons8.com/office/80/000000/maracas.png"
                                                alt="hospitality-leisure-tourism">
                                            <span class="qucikad-as-cat" style="">Hospitality, Leisure &amp;
                                                Tourism</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="financial-services">
                                            <img src="https://img.icons8.com/nolan/64/000000/positive-dynamic.png"
                                                alt="financial-services">
                                            <span class="qucikad-as-cat" style="">Financial Services</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="financial-services-1">
                                            <img src="https://img.icons8.com/office/80/000000/statistics.png"
                                                alt="financial-services-1">
                                            <span class="qucikad-as-cat" style="">Financial services</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="health-care">
                                            <img src="https://img.icons8.com/office/80/000000/clinic.png"
                                                alt="health-care">
                                            <span class="qucikad-as-cat" style="">Health care</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="human-resources">
                                            <img src="https://img.icons8.com/office/80/000000/conference-call.png"
                                                alt="human-resources">
                                            <span class="qucikad-as-cat" style="">Human Resources</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="innovation-and-entrepreneurship">
                                            <img src="https://img.icons8.com/office/80/000000/idea.png"
                                                alt="innovation-and-entrepreneurship">
                                            <span class="qucikad-as-cat" style="">Innovation and
                                                Entrepreneurship</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="manufacturing-and-engineering">
                                            <img src="https://img.icons8.com/office/80/000000/engineering.png"
                                                alt="manufacturing-and-engineering">
                                            <span class="qucikad-as-cat" style="">Manufacturing and
                                                Engineering</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="management">
                                            <img src="https://img.icons8.com/office/80/000000/client-management.png"
                                                alt="management">
                                            <span class="qucikad-as-cat" style="">Management</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="marketing-and-sales">
                                            <img src="https://img.icons8.com/office/80/000000/sale.png"
                                                alt="marketing-and-sales">
                                            <span class="qucikad-as-cat" style="">Marketing &amp; Sales</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="public-relations-media">
                                            <img src="https://img.icons8.com/office/80/000000/news.png"
                                                alt="public-relations-media">
                                            <span class="qucikad-as-cat" style="">Public Relations &amp;
                                                Media</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="public-sector">
                                            <img src="https://img.icons8.com/office/80/000000/toolbox.png"
                                                alt="public-sector">
                                            <span class="qucikad-as-cat" style="">Public sector</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="real-estate-1">
                                            <img src="https://img.icons8.com/office/80/000000/art-prices.png"
                                                alt="real-estate-1">
                                            <span class="qucikad-as-cat" style="">Real Estate</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="recruitment">
                                            <img src="https://img.icons8.com/office/80/000000/parse-from-clipboard.png"
                                                alt="recruitment">
                                            <span class="qucikad-as-cat" style="">Recruitment</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="retail-or-sales">
                                            <img src="https://img.icons8.com/office/80/000000/shop.png"
                                                alt="retail-or-sales">
                                            <span class="qucikad-as-cat" style="">Retail or Sales</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="science">
                                            <img src="https://img.icons8.com/office/80/000000/microscope.png"
                                                alt="science">
                                            <span class="qucikad-as-cat" style="">Science</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="security-and-safety">
                                            <img src="https://img.icons8.com/office/80/000000/privacy.png"
                                                alt="security-and-safety">
                                            <span class="qucikad-as-cat" style="">Security &amp; Safety</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="supply-chain-and-procurement">
                                            <img src="https://img.icons8.com/office/80/000000/Production-machine.png"
                                                alt="supply-chain-and-procurement">
                                            <span class="qucikad-as-cat" style="">Supply Chain &amp;
                                                Procurement</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="sports-and-recreation">
                                            <img src="https://img.icons8.com/office/80/000000/sporty-wheelchair-user.png"
                                                alt="sports-and-recreation">
                                            <span class="qucikad-as-cat" style="">Sports &amp; Recreation</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="information-technology-it-and-technological-services">
                                            <img src="https://img.icons8.com/office/80/000000/happy-mac.png"
                                                alt="information-technology-it-and-technological-services">
                                            <span class="qucikad-as-cat" style="">Technological</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="telecommunications">
                                            <img src="https://img.icons8.com/office/80/000000/radio-tower.png"
                                                alt="telecommunications">
                                            <span class="qucikad-as-cat" style="">Telecommunications</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="trade-and-construction">
                                            <img src="https://img.icons8.com/office/80/000000/workers-female.png"
                                                alt="trade-and-construction">
                                            <span class="qucikad-as-cat" style="">Trade &amp;
                                                Construction</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="transport-and-logistics">
                                            <img src="https://img.icons8.com/office/80/000000/delivery--v1.png"
                                                alt="transport-and-logistics">
                                            <span class="qucikad-as-cat" style="">Transport &amp;
                                                Logistics</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="voluntary-charity-and-social-enterprise">
                                            <img src="https://img.icons8.com/office/80/000000/heart-health.png"
                                                alt="voluntary-charity-and-social-enterprise">
                                            <span class="qucikad-as-cat" style="">Voluntary, charity and social
                                                enterprise</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="warehouse">
                                            <img src="https://img.icons8.com/office/80/000000/fork-lift.png"
                                                alt="warehouse">
                                            <span class="qucikad-as-cat" style="">Warehouse</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="website-and-software">
                                            <img src="https://img.icons8.com/office/80/000000/internet--v1.png"
                                                alt="website-and-software">
                                            <span class="qucikad-as-cat" style="">Website &amp; Software</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="other">
                                            <img src="https://img.icons8.com/office/80/000000/documents.png"
                                                alt="other">
                                            <span class="qucikad-as-cat" style="">Other</span>
                                        </li>

                                    </ul>

                                    <div style="display:none" id="def-cats">



                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="accounting">
                                            <img src="https://img.icons8.com/office/80/000000/accounting.png"
                                                alt="accounting">
                                            <span class="qucikad-as-cat">Accounting</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="administration">
                                            <img src="https://img.icons8.com/office/80/000000/administrative-tools.png"
                                                alt="administration">
                                            <span class="qucikad-as-cat">Administration</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="arts-and-media">
                                            <img src="https://img.icons8.com/office/80/000000/camcorder-pro.png"
                                                alt="arts-and-media">
                                            <span class="qucikad-as-cat">Arts and Media</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="agriculture-or-horticulture">
                                            <img src="https://img.icons8.com/office/80/000000/paper-bag-with-seeds.png"
                                                alt="agriculture-or-horticulture">
                                            <span class="qucikad-as-cat">Agriculture or Horticulture</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="armed-forces">
                                            <img src="https://img.icons8.com/office/80/000000/night-vision.png"
                                                alt="armed-forces">
                                            <span class="qucikad-as-cat">Armed Forces</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="beauty-and-therapy">
                                            <img src="https://img.icons8.com/office/80/000000/massage.png"
                                                alt="beauty-and-therapy">
                                            <span class="qucikad-as-cat">Beauty and Therapy</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="care-childcare-or-social-care-2">
                                            <img src="https://img.icons8.com/office/80/000000/counselor.png"
                                                alt="care-childcare-or-social-care-2">
                                            <span class="qucikad-as-cat">Care childcare or Social care</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="communications">
                                            <img src="https://img.icons8.com/office/80/000000/comments.png"
                                                alt="communications">
                                            <span class="qucikad-as-cat">Communications</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="contact-centre">
                                            <img src="https://img.icons8.com/office/80/000000/phone-office.png"
                                                alt="contact-centre">
                                            <span class="qucikad-as-cat">Contact centre</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="consulting">
                                            <img src="https://img.icons8.com/office/80/000000/parse-resumes.png"
                                                alt="consulting">
                                            <span class="qucikad-as-cat">Consulting</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="customer-service-1">
                                            <img src="https://img.icons8.com/office/80/000000/online-support.png"
                                                alt="customer-service-1">
                                            <span class="qucikad-as-cat">Customer Service</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="design">
                                            <img src="https://img.icons8.com/office/80/000000/art-prices.png"
                                                alt="design">
                                            <span class="qucikad-as-cat">Design</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="education-or-training">
                                            <img src="https://img.icons8.com/office/80/000000/school.png"
                                                alt="education-or-training">
                                            <span class="qucikad-as-cat">Education or Training</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="energy-utilities-or-environment">
                                            <img src="https://img.icons8.com/office/80/000000/tsunami.png"
                                                alt="energy-utilities-or-environment">
                                            <span class="qucikad-as-cat">Energy, Utilities or
                                                Environment</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="facilities-management">
                                            <img src="https://img.icons8.com/office/80/000000/work.png"
                                                alt="facilities-management">
                                            <span class="qucikad-as-cat">Facilities management</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="hospitality-leisure-tourism">
                                            <img src="https://img.icons8.com/office/80/000000/maracas.png"
                                                alt="hospitality-leisure-tourism">
                                            <span class="qucikad-as-cat">Hospitality, Leisure &amp;
                                                Tourism</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="financial-services">
                                            <img src="https://img.icons8.com/nolan/64/000000/positive-dynamic.png"
                                                alt="financial-services">
                                            <span class="qucikad-as-cat">Financial Services</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="financial-services-1">
                                            <img src="https://img.icons8.com/office/80/000000/statistics.png"
                                                alt="financial-services-1">
                                            <span class="qucikad-as-cat">Financial services</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="health-care">
                                            <img src="https://img.icons8.com/office/80/000000/clinic.png"
                                                alt="health-care">
                                            <span class="qucikad-as-cat">Health care</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="human-resources">
                                            <img src="https://img.icons8.com/office/80/000000/conference-call.png"
                                                alt="human-resources">
                                            <span class="qucikad-as-cat">Human Resources</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="innovation-and-entrepreneurship">
                                            <img src="https://img.icons8.com/office/80/000000/idea.png"
                                                alt="innovation-and-entrepreneurship">
                                            <span class="qucikad-as-cat">Innovation and Entrepreneurship</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="manufacturing-and-engineering">
                                            <img src="https://img.icons8.com/office/80/000000/engineering.png"
                                                alt="manufacturing-and-engineering">
                                            <span class="qucikad-as-cat">Manufacturing and Engineering</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="management">
                                            <img src="https://img.icons8.com/office/80/000000/client-management.png"
                                                alt="management">
                                            <span class="qucikad-as-cat">Management</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="marketing-and-sales">
                                            <img src="https://img.icons8.com/office/80/000000/sale.png"
                                                alt="marketing-and-sales">
                                            <span class="qucikad-as-cat">Marketing &amp; Sales</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="public-relations-media">
                                            <img src="https://img.icons8.com/office/80/000000/news.png"
                                                alt="public-relations-media">
                                            <span class="qucikad-as-cat">Public Relations &amp; Media</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="public-sector">
                                            <img src="https://img.icons8.com/office/80/000000/toolbox.png"
                                                alt="public-sector">
                                            <span class="qucikad-as-cat">Public sector</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="real-estate-1">
                                            <img src="https://img.icons8.com/office/80/000000/art-prices.png"
                                                alt="real-estate-1">
                                            <span class="qucikad-as-cat">Real Estate</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="recruitment">
                                            <img src="https://img.icons8.com/office/80/000000/parse-from-clipboard.png"
                                                alt="recruitment">
                                            <span class="qucikad-as-cat">Recruitment</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="retail-or-sales">
                                            <img src="https://img.icons8.com/office/80/000000/shop.png"
                                                alt="retail-or-sales">
                                            <span class="qucikad-as-cat">Retail or Sales</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="science">
                                            <img src="https://img.icons8.com/office/80/000000/microscope.png"
                                                alt="science">
                                            <span class="qucikad-as-cat">Science</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="security-and-safety">
                                            <img src="https://img.icons8.com/office/80/000000/privacy.png"
                                                alt="security-and-safety">
                                            <span class="qucikad-as-cat">Security &amp; Safety</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="supply-chain-and-procurement">
                                            <img src="https://img.icons8.com/office/80/000000/Production-machine.png"
                                                alt="supply-chain-and-procurement">
                                            <span class="qucikad-as-cat">Supply Chain &amp; Procurement</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="sports-and-recreation">
                                            <img src="https://img.icons8.com/office/80/000000/sporty-wheelchair-user.png"
                                                alt="sports-and-recreation">
                                            <span class="qucikad-as-cat">Sports &amp; Recreation</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="information-technology-it-and-technological-services">
                                            <img src="https://img.icons8.com/office/80/000000/happy-mac.png"
                                                alt="information-technology-it-and-technological-services">
                                            <span class="qucikad-as-cat">Technological</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="telecommunications">
                                            <img src="https://img.icons8.com/office/80/000000/radio-tower.png"
                                                alt="telecommunications">
                                            <span class="qucikad-as-cat">Telecommunications</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="trade-and-construction">
                                            <img src="https://img.icons8.com/office/80/000000/workers-female.png"
                                                alt="trade-and-construction">
                                            <span class="qucikad-as-cat">Trade &amp; Construction</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="transport-and-logistics">
                                            <img src="https://img.icons8.com/office/80/000000/delivery--v1.png"
                                                alt="transport-and-logistics">
                                            <span class="qucikad-as-cat">Transport &amp; Logistics</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="voluntary-charity-and-social-enterprise">
                                            <img src="https://img.icons8.com/office/80/000000/heart-health.png"
                                                alt="voluntary-charity-and-social-enterprise">
                                            <span class="qucikad-as-cat">Voluntary, charity and social
                                                enterprise</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="warehouse">
                                            <img src="https://img.icons8.com/office/80/000000/fork-lift.png"
                                                alt="warehouse">
                                            <span class="qucikad-as-cat">Warehouse</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats"
                                            data-catid="website-and-software">
                                            <img src="https://img.icons8.com/office/80/000000/internet--v1.png"
                                                alt="website-and-software">
                                            <span class="qucikad-as-cat">Website &amp; Software</span>
                                        </li>

                                        <li class="qucikad-ajaxsearch-li-cats" data-catid="other">
                                            <img src="https://img.icons8.com/office/80/000000/documents.png"
                                                alt="other">
                                            <span class="qucikad-as-cat">Other</span>
                                        </li>

                                    </div>
                                </div>
                            </div>
                            <div class="intro-search-field live-location-search with-autocomplete ">
                                <div class="input-with-icon">
                                    <input type="text" hidden  name="location" placeholder="Where?"
                                        style="font-family: 'comfortaa !important; ">
                                    <i class="icon-feather-map-pin" hidden></i>
                                    <div data-option="no" class="loc-tracking" hidden><i
                                            class="la la-crosshairs"></i></div>
                                    <input type="hidden" name="latitude" id="latitude" value="">
                                    <input type="hidden" name="longitude" id="longitude" value="">
                                    <input type="hidden" name="placetype" id="searchPlaceType" value="">
                                    <input type="hidden" name="placeid" id="searchPlaceId" value="">
                                    <input type="hidden" id="input-keywords" name="keywords" value="">
                                    <input type="hidden" id="input-maincat" name="cat" value="">
                                    <input type="hidden" id="input-subcat" name="subcat" value="">
                                     </div>
                                      <select class="chosen-select" name="location">
                                        <option value=""><i class="fas fa-location-dot"></i> Where</option>
                                        @php
                                        $traverse = function ($locations, $prefix = '') use (&$traverse) {
                                            foreach ($locations as $location) {
                                                $translate = $location->translateOrOrigin(app()->getLocale());
                                                printf("<option value='%s'>%s</option>", $location->id, $prefix . ' ' . $translate->name);
                                                $traverse($location->children, $prefix . '-');
                                            }
                                        };
                                        $traverse($list_locations);
                                        @endphp
                                    </select>
                               
                            </div>
                            <div class="intro-search-button ">
                                <button class="button ripple-effect contact-card" autofocus=""
                                    style="">Search</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
</section>
<!-- End Banner Section-->
