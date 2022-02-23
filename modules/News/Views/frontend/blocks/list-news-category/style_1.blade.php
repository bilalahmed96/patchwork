<div id="blog-section-two" style="padding: 50px 0 80px;background-color:#edf5f8;" class="light_content contact_content">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
            <div class="section-top-bar" style="float: left;width: 100%;border-bottom: 2px solid #efefef;padding: 0px 0 15px;margin-bottom: 30px;">
            <h2 style="color:#3F2666 !important" class="title-heading">Explore</h2>
            </div>
            
            </div>
            
            <div class="col-md-12">
                        <ul class="explore-links" style="margin-bottom: 50px;">
                            
              
                         @foreach($rows as $row)
                        
                                    <li class="" tabindex="0" style="margin: 0 15px 20px;"><a class="purple-btn dark-title blog-btn" href="{{ $row->getDetailUrl() }}" tabindex="-1" style="color: #fff !important">
                                            {{ $row->name }}
                                        </a>
                                    </li>
                        
                        @endforeach

                        
          
            </ul>
            </div>
            
        </div>
    </div>
</div>