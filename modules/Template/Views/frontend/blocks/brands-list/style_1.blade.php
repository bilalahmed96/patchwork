<div hidden class="list-brands @if(!empty($style) && $style == 'style_2') clients-section-two @else clients-section @endif">
    <div class="sponsors-outer">
        <!--Sponsors Carousel-->
        <ul class="sponsors-carousel owl-carousel owl-theme">
            @if(!empty($list_item))
                @foreach($list_item as $item)
                    <li class="slide-item">
                        <figure class="image-box">
                            @if($item['brand_link'])<a href="{{ $item['brand_link'] }}">@endif
                                <img class="img-fluid d-inline-block w-auto" src="{{ get_file_url($item['image_id'],'full') }}" alt="{{ $item['title'] }}">
                            @if($item['brand_link'])</a>@endif
                        </figure>
                    </li>
                @endforeach
            @endif
        </ul>
    </div>
</div>


<section>
    <div id="companies" class="section gray padding-top-100 padding-bottom-100 contact-card"
        style="background-image:url({{ asset('images/background-imgs/featured-employers-bg.png') }});background-size: 100% auto;">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <!-- Section Headline -->
                    <div class="section-headline centered margin-top-0">
                        <!--<h3>Testimonials</h3>-->
                        <h2 style="">Featured Companies</h2>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div id="featured-companies" style="max-width: 1024px;margin: 0 auto;" class="">
                    <a href="../../company/38/Not Your Grandma's" class="slick-slide slick-cloned"
                        data-slick-index="-3" aria-hidden="true" style="width: 322px;" tabindex="-1">
                        <div class="featured-company" style="margin-bottom: 20px;">
                            <div class="featured-companies-inner contact-card">
                                <img src="https://stagging.patchworkhub.org/storage/products/162375465760c887a12bf23.png"
                                    alt="Not Your Grandma's" style="">
                                <h3 style="">
                                    Not Your Grandma's</h3>
                            </div>
                        </div>
                    </a><a href="../../company/97/Ambitious About Autism" class="slick-slide slick-cloned"
                        data-slick-index="-2" aria-hidden="true" style="width: 322px;" tabindex="-1">
                        <div class="featured-company" style="margin-bottom: 20px;">
                            <div class="featured-companies-inner contact-card">
                                <img src="https://stagging.patchworkhub.org/storage/products/1628073009610a6c3112ed1.png"
                                    alt="Ambitious About Autism"
                                    style="min-width: 200px;margin: 0 auto 15px;display: table;border-radius: 40px;">
                                <h3 style="">
                                    Ambitious About Autism</h3>
                            </div>
                        </div>
                    </a><a href="../../company/336/Kamran Company" class="slick-slide slick-cloned"
                        data-slick-index="-1" aria-hidden="true" style="width: 322px;" tabindex="-1">
                        <div class="featured-company" style="margin-bottom: 20px;">
                            <div class="featured-companies-inner contact-card">
                                <img src="https://stagging.patchworkhub.org/storage/products/default.png"
                                    alt="Kamran Company"
                                    style="min-width: 200px;margin: 0 auto 15px;display: table;border-radius: 40px;">
                                <h3 style="">
                                    Kamran Company</h3>
                            </div>
                        </div>
                    </a><a href="../../company/27/St James's Place Wealth Management" class="slick-slide"
                        data-slick-index="0" aria-hidden="true" style="width: 322px;" tabindex="-1"
                        role="tabpanel" id="slick-slide10" aria-describedby="slick-slide-control10">
                        <div class="featured-company" style="margin-bottom: 20px;">
                            <div class="featured-companies-inner contact-card">
                                <img src="https://stagging.patchworkhub.org/storage/products/1620902700609d032c42a1d.png"
                                    alt="St James's Place Wealth Management"
                                    style="min-width: 200px;margin: 0 auto 15px;display: table;border-radius: 40px;">
                                <h3 style="">St
                                    James's Place Wealth Management</h3>
                            </div>
                        </div>
                    </a><a href="../../company/33/BearHugs Gifts" class="slick-slide" data-slick-index="1"
                        aria-hidden="true" style="width: 322px;" tabindex="-1" role="tabpanel"
                        id="slick-slide11" aria-describedby="slick-slide-control11">
                        <div class="featured-company" style="margin-bottom: 20px;">
                            <div class="featured-companies-inner contact-card">
                                <img src="https://stagging.patchworkhub.org/storage/products/162162444660a8067e98185.png"
                                    alt="BearHugs Gifts"
                                    style="min-width: 200px;margin: 0 auto 15px;display: table;border-radius: 40px;">
                                <h3 style="">
                                    BearHugs Gifts</h3>
                            </div>
                        </div>
                    </a><a href="../../company/34/BBC" class="slick-slide" data-slick-index="2"
                        aria-hidden="true" style="width: 322px;" tabindex="-1" role="tabpanel"
                        id="slick-slide12" aria-describedby="slick-slide-control12">
                        <div class="featured-company" style="margin-bottom: 20px;">
                            <div class="featured-companies-inner contact-card">
                                <img src="https://stagging.patchworkhub.org/storage/products/162224079960b16e1f6d846.jpeg"
                                    alt="BBC"
                                    style="min-width: 200px;margin: 0 auto 15px;display: table;border-radius: 40px;">
                                <h3 style="">
                                    BBC</h3>
                            </div>
                        </div>
                    </a><a href="../../company/37/Weather Flare" class="slick-slide" data-slick-index="3"
                        aria-hidden="true" style="width: 322px;" tabindex="-1" role="tabpanel"
                        id="slick-slide13" aria-describedby="slick-slide-control13">
                        <div class="featured-company" style="margin-bottom: 20px;">
                            <div class="featured-companies-inner contact-card">
                                <img src="https://stagging.patchworkhub.org/storage/products/162326338660c1089ae6391.jpeg"
                                    alt="Weather Flare"
                                    style="min-width: 200px;margin: 0 auto 15px;display: table;border-radius: 40px;">
                                <h3 style="">
                                    Weather Flare</h3>
                            </div>
                        </div>
                    </a><a href="../../company/38/Not Your Grandma's" class="slick-slide"
                        data-slick-index="4" aria-hidden="true" style="width: 322px;" tabindex="-1"
                        role="tabpanel" id="slick-slide14" aria-describedby="slick-slide-control14">
                        <div class="featured-company" style="margin-bottom: 20px;">
                            <div class="featured-companies-inner contact-card">
                                <img src="https://stagging.patchworkhub.org/storage/products/162375465760c887a12bf23.png"
                                    alt="Not Your Grandma's"
                                    style="min-width: 200px;margin: 0 auto 15px;display: table;border-radius: 40px;">
                                <h3 style="">
                                    Not Your Grandma's</h3>
                            </div>
                        </div>
                    </a><a href="../../company/97/Ambitious About Autism"
                        class="slick-slide slick-current slick-active" data-slick-index="5" aria-hidden="false"
                        style="width: 322px;" tabindex="0" role="tabpanel" id="slick-slide15"
                        aria-describedby="slick-slide-control15">
                        <div class="featured-company" style="margin-bottom: 20px;">
                            <div class="featured-companies-inner contact-card">
                                <img src="https://stagging.patchworkhub.org/storage/products/1628073009610a6c3112ed1.png"
                                    alt="Ambitious About Autism"
                                    style="min-width: 200px;margin: 0 auto 15px;display: table;border-radius: 40px;">
                                <h3 style="">
                                    Ambitious About Autism</h3>
                            </div>
                        </div>
                    </a><a href="../../company/336/Kamran Company" class="slick-slide slick-active"
                        data-slick-index="6" aria-hidden="false" style="width: 322px;" tabindex="0"
                        role="tabpanel" id="slick-slide16" aria-describedby="slick-slide-control16">
                        <div class="featured-company" style="margin-bottom: 20px;">
                            <div class="featured-companies-inner contact-card">
                                <img src="https://stagging.patchworkhub.org/storage/products/default.png"
                                    alt="Kamran Company"
                                    style="min-width: 200px;margin: 0 auto 15px;display: table;border-radius: 40px;">
                                <h3 style="">
                                    Kamran Company</h3>
                            </div>
                        </div>
                    </a><a href="../../company/27/St James's Place Wealth Management"
                        class="slick-slide slick-cloned slick-active" data-slick-index="7" aria-hidden="false"
                        style="width: 322px;" tabindex="-1">
                        <div class="featured-company" style="margin-bottom: 20px;">
                            <div class="featured-companies-inner contact-card">
                                <img src="https://stagging.patchworkhub.org/storage/products/1620902700609d032c42a1d.png"
                                    alt="St James's Place Wealth Management"
                                    style="min-width: 200px;margin: 0 auto 15px;display: table;border-radius: 40px;">
                                <h3 style="">St
                                    James's Place Wealth Management</h3>
                            </div>
                        </div>
                    </a><a href="../../company/33/BearHugs Gifts" class="slick-slide slick-cloned"
                        data-slick-index="8" aria-hidden="true" style="width: 322px;" tabindex="-1">
                        <div class="featured-company" style="margin-bottom: 20px;">
                            <div class="featured-companies-inner contact-card">
                                <img src="https://stagging.patchworkhub.org/storage/products/162162444660a8067e98185.png"
                                    alt="BearHugs Gifts"
                                    style="min-width: 200px;margin: 0 auto 15px;display: table;border-radius: 40px;">
                                <h3 style="">
                                    BearHugs Gifts</h3>
                            </div>
                        </div>
                    </a><a href="../../company/34/BBC" class="slick-slide slick-cloned" data-slick-index="9"
                        aria-hidden="true" style="width: 322px;" tabindex="-1">
                        <div class="featured-company" style="margin-bottom: 20px;">
                            <div class="featured-companies-inner contact-card">
                                <img src="https://stagging.patchworkhub.org/storage/products/162224079960b16e1f6d846.jpeg"
                                    alt="BBC"
                                    style="min-width: 200px;margin: 0 auto 15px;display: table;border-radius: 40px;">
                                <h3 style="">
                                    BBC</h3>
                            </div>
                        </div>
                    </a><a href="../../company/37/Weather Flare" class="slick-slide slick-cloned"
                        data-slick-index="10" aria-hidden="true" style="width: 322px;" tabindex="-1">
                        <div class="featured-company" style="margin-bottom: 20px;">
                            <div class="featured-companies-inner contact-card">
                                <img src="https://stagging.patchworkhub.org/storage/products/162326338660c1089ae6391.jpeg"
                                    alt="Weather Flare"
                                    style="min-width: 200px;margin: 0 auto 15px;display: table;border-radius: 40px;">
                                <h3 style="">
                                    Weather Flare</h3>
                            </div>
                        </div>
                    </a><a href="../../company/38/Not Your Grandma's" class="slick-slide slick-cloned"
                        data-slick-index="11" aria-hidden="true" style="width: 322px;" tabindex="-1">
                        <div class="featured-company" style="margin-bottom: 20px;">
                            <div class="featured-companies-inner contact-card">
                                <img src="https://stagging.patchworkhub.org/storage/products/162375465760c887a12bf23.png"
                                    alt="Not Your Grandma's"
                                    style="min-width: 200px;margin: 0 auto 15px;display: table;border-radius: 40px;">
                                <h3 style="">
                                    Not Your Grandma's</h3>
                            </div>
                        </div>
                    </a><a href="../../company/97/Ambitious About Autism" class="slick-slide slick-cloned"
                        data-slick-index="12" aria-hidden="true" style="width: 322px;" tabindex="-1">
                        <div class="featured-company" style="margin-bottom: 20px;">
                            <div class="featured-companies-inner contact-card">
                                <img src="https://stagging.patchworkhub.org/storage/products/1628073009610a6c3112ed1.png"
                                    alt="Ambitious About Autism"
                                    style="min-width: 200px;margin: 0 auto 15px;display: table;border-radius: 40px;">
                                <h3 style="">
                                    Ambitious About Autism</h3>
                            </div>
                        </div>
                    </a><a href="../../company/336/Kamran Company" class="slick-slide slick-cloned"
                        data-slick-index="13" aria-hidden="true" style="width: 322px;" tabindex="-1">
                        <div class="featured-company" style="margin-bottom: 20px;">
                            <div class="featured-companies-inner contact-card">
                                <img src="https://stagging.patchworkhub.org/storage/products/default.png"
                                    alt="Kamran Company"
                                    style="min-width: 200px;margin: 0 auto 15px;display: table;border-radius: 40px;">
                                <h3 style="">
                                    Kamran Company</h3>
                            </div>
                        </div>
                    </a>
                </div>
            </div>

        </div>
    </div>
</section>