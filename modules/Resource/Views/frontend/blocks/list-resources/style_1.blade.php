<section class="" style="padding: 100px 0 70px;">
    <div class="container">
        <div class="section-top-bar" style="float: left;width: 100%;border-bottom: 2px solid #efefef;padding: 0px 0 15px;margin-bottom: 30px;">
            <h2 style="color:#3F2666 !important; float:left">Find Resources</h2>
            <a href="{{ route('resource.index') }}" style="float: right;background: rgb(64, 30, 102)!important;color: #fff !important;padding: 10px 30px;border-radius: 10px;" class="dark-btn card-btn">View all resources</a>    
        </div>
        
        <div class="row">
            
            @foreach($rows as $row)
            <div class="col-md-6">
                <div class="blog-item" tabindex="0">
                    <div class="row">
                    @php
                        $img_url = \Modules\Media\Models\MediaFile::find($row->image);
                        $img_url = asset('uploads/'. $img_url->file_path);
                    @endphp
                             <div class="col-md-4">
                                 <a href="{{ $row->link }}" tabindex="-1">
                                <img src="{{ $img_url }}" alt="Disability Advice and Support: Work and Careers "></a>
                            </div>
                        
                   
                        <div class="col-md-8">
                          <h3 style="color: rgb(64, 30, 102)  !important">{{ $row->title }} </h3>
                            <p class="excerpt">{!! clean($row->content) !!}</p>
                          <!--  <p class="date">May 08 - 2021</p> -->
                  
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
    
    
</section>