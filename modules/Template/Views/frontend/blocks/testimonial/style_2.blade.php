@if(!empty($list_item))
<!-- Testimonial Section -->
<section class="testimonial-section" hidden>
    <div class="container-fluid">
        <!-- Sec Title -->
        <div class="sec-title text-center">
            <h2>{{ $title ?? '' }}</h2>
            <div class="text">{{ $sub_title ?? '' }}</div>
        </div>

        <div class="carousel-outer wow fadeInUp">

            <!-- Testimonial Carousel -->
            <div class="testimonial-carousel owl-carousel owl-theme">

                @foreach($list_item as $item)
                <!--Testimonial Block -->
                <div class="testimonial-block">
                    <div class="inner-box">
                        <h4 class="title">{{ $item['title'] ?? '' }}</h4>
                        <div class="text">{{ $item['desc'] ?? '' }}</div>
                        <div class="info-box">
                            <div class="thumb"><img src="{{ get_file_url($item['avatar']) }}" alt="{{ $item['info_name'] }}"></div>
                            <h4 class="name">{{ $item['info_name'] ?? '' }}</h4>
                            <span class="designation">{{ $item['position'] ?? '' }}</span>
                        </div>
                    </div>
                </div>
                @endforeach

            </div>
        </div>
    </div>
</section>
<!-- End Testimonial Section -->
@endif

<section>
    <div id="testimonials" class="section gray padding-top-80 padding-bottom-80 yellow-card"
        style="background-image:url({{ asset('images/background-imgs/testimonials-bg.png') }});background-size: 100% auto;">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <!-- Section Headline -->
                    <div class="hak-class-5 section-headline centered margin-top-0 margin-bottom-25">
                        <!--<h3>Testimonials</h3>-->
                        <h2 style="">Testimonials</h2>
                        <p style="">What others have to say.</p>
                    </div>
                </div>
            </div>
            
            <div class="fullwidth-carousel-container margin-top-20">
            <div class="testimonials ">
                <div class="s-testimonial">
                    <div class="single-inner style-2 contact-card">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="author-info">
                                    <div class="image"><img
                                            src="{{  asset('uploads/0000/1/2022/02/21/1620387007609524bf635f8.png') }}"
                                            alt="Mia Testa"></div>
                                    <h5 class="name" style="">Mia Testa</h5>
                                    <span class="designation" style="">Featured Patchworker, Oxford
                                        University</span>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="testimonial-content" style="">
                                    Patchwork Hub's work will be invaluable to anyone for whom conventional work
                                    is not feasible. Having been suffering with health issues over the last few
                                    months myself and coming from a family of carers, mental illness sufferers,
                                    and disability, I've experienced firsthand the impact Patchwork Hub has on
                                    real lives. As well as offering employment opportunities, the unique
                                    offerings of community and the upcoming Patchwork Shop selling platform
                                    really set Patchwork Hub apart. The COVID-19 pandemic has shown us how
                                    valuable work-from-home opportunities are, and Patchwork Hub has been ahead
                                    of the curve in their aim to provide working opportunities for as many
                                    people as possible.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="s-testimonial">
                    <div class="single-inner style-2 contact-card">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="author-info">
                                    <div class="image"><img
                                            src="{{  asset('uploads/0000/1/2022/02/21/1620386217609521a99e027-1.jpg') }}"
                                            alt="Natalie Vriend"></div>
                                    <h5 class="name" style="">Natalie Vriend</h5>
                                    <span class="designation" style="">Featured Patchworker, University of
                                        Oxford</span>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="testimonial-content" style="">
                                    I think Patchwork Hub's ethos is really remarkable and special. Especially
                                    during times like these (Covid), where the need for accessible work has
                                    become more evident than ever, shining a light on the work they do is doubly
                                    important. I can only see their mission becoming more and more essential as
                                    time goes on.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="s-testimonial">
                    <div class="single-inner style-2 contact-card">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="author-info">
                                    <div class="image"><img
                                            src="{{  asset('uploads/0000/1/2022/02/21/164096449461cf218ea5276.jpg') }}"
                                            alt="Rock Bell"></div>
                                    <h5 class="name" style="">Rock Bell</h5>
                                    <span class="designation" style="">Patchworker</span>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="testimonial-content" style="">
                                    I applied for a job through Patchwork Hub and secured employment at a FTSE
                                    100 company. That is so fantastic, not just for my bank account and CV but
                                    also my confidence. Without Patchwork Hub – both its accessibility and the
                                    support and understanding they offer– this would not have happened for me. A
                                    platform taking a proactive approach to raising awareness amongst employers,
                                    and approaching disability inclusion in a way where we're not othered', is
                                    transformational.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="s-testimonial">
                    <div class="single-inner style-2 contact-card">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="author-info">
                                    <div class="image"><img
                                            src="{{  asset('uploads/0000/1/2022/02/21/164096438561cf2121da23d.jpeg') }}"
                                            alt="Lucas Jones"></div>
                                    <h5 class="name" style="">Lucas Jones</h5>
                                    <span class="designation" style="">Digital Marketing Executive</span>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="testimonial-content" style="">
                                    Working with Patchwork Hub was an amazing insight into a startup leading the
                                    culture change in the world of work. Beth is extremely passionate and
                                    incredibly knowledgeable, and her start-up is providing critical information
                                    for companies looking to become more accessible and inclusive. The world of
                                    work has permanently changed in the past year, and Patchwork Hub provides a
                                    great insight into what the future of work should look like.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="s-testimonial">
                    <div class="single-inner style-2 contact-card">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="author-info">
                                    <div class="image"><img
                                            src="{{  asset('uploads/0000/1/2022/02/21/162038513960951d73621ed.jpeg') }}"
                                            alt="Lauren Hazel Keane"></div>
                                    <h5 class="name" style="">Lauren Hazel Keane</h5>
                                    <span class="designation" style="">Patchworker, Digital Marketing</span>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="testimonial-content" style="">
                                    Patchwork Hub seems not only to have found a critical gap in the market for
                                    accessible work, but to have found a solution for it too. The team nurture
                                    the space for inclusive work opportunities in such a positive and
                                    influential way.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="s-testimonial">
                    <div class="single-inner style-2 contact-card">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="author-info">
                                    <div class="image"><img
                                            src="{{  asset('uploads/0000/1/2022/02/21/1620387007609524bf635f8.png') }}"
                                            alt="Mia Testa"></div>
                                    <h5 class="name" style="">Mia Testa</h5>
                                    <span class="designation" style="">Featured Patchworker, Oxford
                                        University</span>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="testimonial-content" style="">
                                    Patchwork Hub's work will be invaluable to anyone for whom conventional work
                                    is not feasible. Having been suffering with health issues over the last few
                                    months myself and coming from a family of carers, mental illness sufferers,
                                    and disability, I've experienced firsthand the impact Patchwork Hub has on
                                    real lives. As well as offering employment opportunities, the unique
                                    offerings of community and the upcoming Patchwork Shop selling platform
                                    really set Patchwork Hub apart. The COVID-19 pandemic has shown us how
                                    valuable work-from-home opportunities are, and Patchwork Hub has been ahead
                                    of the curve in their aim to provide working opportunities for as many
                                    people as possible.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="s-testimonial">
                    <div class="single-inner style-2 contact-card">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="author-info">
                                    <div class="image"><img
                                            src="{{  asset('uploads/0000/1/2022/02/21/1620386217609521a99e027-1.jpg') }}"
                                            alt="Natalie Vriend"></div>
                                    <h5 class="name" style="">Natalie Vriend</h5>
                                    <span class="designation" style="">Featured Patchworker, University of
                                        Oxford</span>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="testimonial-content" style="">
                                    I think Patchwork Hub's ethos is really remarkable and special. Especially
                                    during times like these (Covid), where the need for accessible work has
                                    become more evident than ever, shining a light on the work they do is doubly
                                    important. I can only see their mission becoming more and more essential as
                                    time goes on.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="s-testimonial">
                    <div class="single-inner style-2 contact-card">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="author-info">
                                    <div class="image"><img
                                            src="{{  asset('uploads/0000/1/2022/02/21/164096449461cf218ea5276.jpg') }}"
                                            alt="Rock Bell"></div>
                                    <h5 class="name" style="">Rock Bell</h5>
                                    <span class="designation" style="">Patchworker</span>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="testimonial-content" style="">
                                    I applied for a job through Patchwork Hub and secured employment at a FTSE
                                    100 company. That is so fantastic, not just for my bank account and CV but
                                    also my confidence. Without Patchwork Hub – both its accessibility and the
                                    support and understanding they offer– this would not have happened for me. A
                                    platform taking a proactive approach to raising awareness amongst employers,
                                    and approaching disability inclusion in a way where we're not othered', is
                                    transformational.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="s-testimonial">
                    <div class="single-inner style-2 contact-card">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="author-info">
                                    <div class="image"><img
                                            src="{{  asset('uploads/0000/1/2022/02/21/164096438561cf2121da23d.jpeg') }}"
                                            alt="Lucas Jones"></div>
                                    <h5 class="name" style="">Lucas Jones</h5>
                                    <span class="designation" style="">Digital Marketing Executive</span>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="testimonial-content" style="">
                                    Working with Patchwork Hub was an amazing insight into a startup leading the
                                    culture change in the world of work. Beth is extremely passionate and
                                    incredibly knowledgeable, and her start-up is providing critical information
                                    for companies looking to become more accessible and inclusive. The world of
                                    work has permanently changed in the past year, and Patchwork Hub provides a
                                    great insight into what the future of work should look like.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="s-testimonial">
                    <div class="single-inner style-2 contact-card">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="author-info">
                                    <div class="image"><img
                                            src="{{  asset('uploads/0000/1/2022/02/21/162038513960951d73621ed.jpeg') }}"
                                            alt="Lauren Hazel Keane"></div>
                                    <h5 class="name" style="">Lauren Hazel Keane</h5>
                                    <span class="designation" style="">Patchworker, Digital Marketing</span>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="testimonial-content" style="">
                                    Patchwork Hub seems not only to have found a critical gap in the market for
                                    accessible work, but to have found a solution for it too. The team nurture
                                    the space for inclusive work opportunities in such a positive and
                                    influential way.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="s-testimonial">
                    <div class="single-inner style-2 contact-card">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="author-info">
                                    <div class="image"><img
                                            src="{{  asset('uploads/0000/1/2022/02/21/1620387007609524bf635f8.png') }}"
                                            alt="Mia Testa"></div>
                                    <h5 class="name" style="">Mia Testa</h5>
                                    <span class="designation" style="">Featured Patchworker, Oxford
                                        University</span>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="testimonial-content" style="">
                                    Patchwork Hub's work will be invaluable to anyone for whom conventional work
                                    is not feasible. Having been suffering with health issues over the last few
                                    months myself and coming from a family of carers, mental illness sufferers,
                                    and disability, I've experienced firsthand the impact Patchwork Hub has on
                                    real lives. As well as offering employment opportunities, the unique
                                    offerings of community and the upcoming Patchwork Shop selling platform
                                    really set Patchwork Hub apart. The COVID-19 pandemic has shown us how
                                    valuable work-from-home opportunities are, and Patchwork Hub has been ahead
                                    of the curve in their aim to provide working opportunities for as many
                                    people as possible.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="s-testimonial">
                    <div class="single-inner style-2 contact-card">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="author-info">
                                    <div class="image"><img
                                            src="{{  asset('uploads/0000/1/2022/02/21/1620386217609521a99e027-1.jpg') }}"
                                            alt="Natalie Vriend"></div>
                                    <h5 class="name" style="">Natalie Vriend</h5>
                                    <span class="designation" style="">Featured Patchworker, University of
                                        Oxford</span>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="testimonial-content" style="">
                                    I think Patchwork Hub's ethos is really remarkable and special. Especially
                                    during times like these (Covid), where the need for accessible work has
                                    become more evident than ever, shining a light on the work they do is doubly
                                    important. I can only see their mission becoming more and more essential as
                                    time goes on.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        </div>
        
    </div>
</section>
