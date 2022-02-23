<!-- Job Overview -->
<h4 class="widget-title">{{ __("Job Overview") }}</h4>
<div class="widget-content">
    <div class="job-overview">
        @if($row->location_id > 0)
            <div class="box">
               <i class="fas fa-map-marker-alt"></i>
                <span>Location</span>
                <h5>{{ $row->location->name }}</h5>
            </div>
        
        @endif
        
        @if($row->job_type_id > 0)
            <div class="box">
                <i class="fas fa-briefcase"></i>
                <span>Job Type</span>
                <h5>{{ $row->jobType->name }}</h5>
            </div>
        
        @endif
        
        @if($row->salary_min && $row->salary_max)
            <div class="box">
               <i class="fas fa-money-bill"></i>
                <span>Salary</span>
                <h5>{{  $row->getSalary() }}</h5>
            </div>
        
        @endif
        
         @if($row->created_at)
            <div class="box">
                <i class="fas fa-clock"></i>
                <span>{{ __("Date Posted:") }}</span>
                <h5>{{ __(" :time_ago", ['time_ago' => $row->timeAgo()]) }}</h5>
            </div>
        
        @endif

    </div>
</div>


<!--Add Information-->
<h4 class="widget-title">Additiional Detail</h4>
<div class="widget-content">
    <div class="job-overview">
        @if($row->phone)
            <div class="box">
               <i class="fas fa-phone-alt"></i>
                <span>Phone</span>
                <h5>{{ $row->phone }}</h5>
            </div>
        
        @endif
        
        @if($row->id )
            <div class="box">
                <i class="fas fa-hashtag"></i>
                <span>Job ID</span>
                <h5>{{ $row->id }}</h5>
            </div>
        
        @endif
        
        @if($row->view)
            <div class="box">
                <i class="fas fa-eye"></i>
                <span>Job View</span>
                <h5>{{  $row->view }}</h5>
            </div>
        
        @endif
        
        @if($row->job_locations)
            <div class="box">
                <i class="fas fa-eye"></i>
                <span>Work Location</span>
                <h5>{{ $row->job_locations }}</h5>
            </div>
        
        @endif

    </div>
</div>

<!--Job Description-->
<!--<h4 class="widget-title">Job Description</h4>-->
<div class="widget-content">
    <div class="job-overview">
        <div class="job-detail">
            {!! @clean($row->content) !!}
        </div>

    </div>
</div>

<!--Tags-->
@if($row->tag )
<h4 class="widget-title">Tags</h4>
<div class="widget-content">
    <div class="job-overview">
        <div class="job-detail">
         {{  $row->tag  }}
        </div>

    </div>
</div>
@endif

<!--Tags-->
@if($row->lat && $row->lng )
<h4 class="widget-title">Location</h4>
<div class="widget-content">
    @include("Job::frontend.layouts.details.location")
</div>
@endif