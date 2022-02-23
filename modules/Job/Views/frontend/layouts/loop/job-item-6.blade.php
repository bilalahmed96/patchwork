@php
    $translation = $row->translateOrOrigin(app()->getLocale());
@endphp

<div class="inner-box">
    
        
    <div class="content">
            @if($company_logo = $row->getThumbnailUrl())
            <span class="company-logo">
            <img src="{{ $company_logo }}" alt="{{ $row->company ? $row->company->name : 'company' }}" class="full-width object-cover">
        </span>
        @endif
        <div class="inner-content">
        <h4><a href="{{ $row->getDetailUrl() }}">{{ $translation->title }}</a>
    
        </h4>
            <ul class="job-other-info">

        @if($row->is_featured)
            <li class="privacy">{{ __("Featured") }}</li>
        @endif
        @if($row->is_urgent)
            <li class="required">{{ __("Urgent") }}</li>
        @endif
         </ul>
         </div>
         <ul class="job-info">
           @if($row->category)
                <li hidden><span class="icon flaticon-briefcase"></span> {{ $row->category->name }}</li>
            @endif
              @if($row->created_at)
                <li><span class="icon flaticon-clock-3"></span>Posted: {{ $row->timeAgo() }}</li>
            @endif
            @if($row->location)
                <li><span class="icon flaticon-map-locator"></span>Location: {{ $row->location->name }}</li>
            @endif
          
            @if($row->salary_min && $row->salary_max)
                <li hidden><span class="icon flaticon-money"></span> {{ $row->getSalary(false) }}</li>
            @endif
            @if($row->jobType)
                <li class="time"><span class="icon flaticon-brief-case"> </span>Type: {{ $row->jobType->name }}</li>
           @endif
        </ul>
        <div class="job-button">
            <a href="{{ $row->getDetailUrl() }} " class="theme-btn btn-style-three">View More</a>
    <a href="#" data-require-text="Please login as 'Candidate' to apply" class="theme-btn btn-style-three bc-apply-job-button @if(!is_candidate() || empty($candidate)) bc-require-candidate-apply @else bc-call-modal apply-job @endif">{{ __('Apply Job') }}</a>
        </div>
     
    </div>
    
   
</div>
