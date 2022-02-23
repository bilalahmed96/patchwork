<!-- Job Detail Section -->
<section class="job-detail-section">

    <!-- Upper Box -->
    <div class="upper-box">
        <div class="auto-container">
            <!-- Job Block -->
            <div class="job-block-seven">
                <div class="inner-box">
                    @include("Job::frontend.layouts.details.upper-box")
                    @include("Job::frontend.layouts.details.apply-button")
                </div>
            </div>
        </div>
    </div>

    <div class="job-detail-outer">
        <div class="auto-container">
            <div class="row">
                <div class="content-column col-lg-8 col-md-12 col-sm-12">

                 

                   @include("Job::frontend.layouts.details.overview-detail")

                    

                </div>

                <div class="sidebar-column col-lg-4 col-md-12 col-sm-12">
                    <aside class="sidebar">
                        <div class="sidebar-widget">
                             @include("Job::frontend.layouts.details.company")
                        </div>

                       <div class="sidebar-widget">
                           @include("Job::frontend.layouts.details.social-share")
                       </div>
                       
                       <div class="sidebar-widget">
                           <div class="more-info">
                               <h5>More Info</h5>
                               <ul>
                                   <li>
                                       <a href=""><i class="fas fa-briefcase"></i> More jobs by Test</a>
                                   </li>
                                   <li>
                                       <a href=""><i class="fas fa-user-circle"></i> More jobs by Employer </a>
                                   </li>
                                   <li>
                                       <a href=""><i class="fas fa-exclamation-triangle"></i> Report this job </a>
                                   </li>
                                   
                               </ul>
                           </div>
                       </div>

                    </aside>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Job Detail Section -->
