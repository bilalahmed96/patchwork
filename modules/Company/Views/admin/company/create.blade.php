@extends('layouts.app')

@section('head')
    <Style>
      .dashboard-page  .dashboard-sidebar {
            padding-top: 0 !important;
        }
    </Style>
@endsection

@section('content')
<section class="page-title">
    <div class="auto-container">
        <div class="title-outer">
            <h1>Create New Company</h1>
            <ul class="page-breadcrumb">
                <li><a href="{{ home_url() }}">{{ __("Home") }}</a></li>
                <li>Create New Company</li>
            </ul>
        </div>
        
      
    </div>
</section>

<section class="dashboard-content  dashboard-page">
    <div class="auto-container">
        <div class="row">
            @include('Layout::parts.dashboard-sidebar')
            <div class="col-lg-9 col-md-12">
                <div class="dashboard-box margin-top-0">
                <!-- Headline -->
                <div class="headline">
                    <h3><i class="icon-feather-box"></i> 
                     
                    
                    Create New Company 
                    
                    </h3>
                </div>
                 @include('admin.message')
                <div class="content with-padding">
                 <form method="post" accept-charset="UTF-8" enctype="multipart/form-data" action="{{route('company.admin.store',['id'=>($row->id) ? $row->id : '-1','lang'=>request()->query('lang')])}}">
                    @csrf
                    <div class="submit-field">
                      <h5>Name *</h5>
                      <input type="text" class="with-border" id="name" name="name" value="" required="">
                  </div>
                  <div class="submit-field">
                      <h5>Logo</h5>
                      <div class="uploadButton">

                                            <input class="uploadButton-input" type="file" accept="image/*" id="upload" name="avatar_id">

                                            <label class="uploadButton-button ripple-effect light-title" for="upload" style="background-color: #fff !important; border: 1px solid #401e66 !important">Upload Logo</label>

                                            <span class="uploadButton-file-name light-title">Use a 200x200pt or square image for best fit.</span>

                                        </div>
                  </div>
                <div class="submit-field">
                    <h5>About Us *</h5>
                    <textarea cols="30" rows="5" class="with-border" name="about" required="" style="white-space: pre-line;"></textarea>
                </div>
                
                <div class="submit-field">
                    <h5>Our Company’s Commitment and Work Culture </h5>
                    <textarea cols="30" rows="5" class="with-border" name="work_commitment" required="" style="white-space: pre-line;"></textarea>
                </div>
                
                        <div class="submit-field">

                            <label><input style="height: 15px; width: 15px; position: absolute; margin-top:6px; margin-left: 4px;" type="checkbox" name="addFeatures" id="addFeatures">
                            <p style="margin-left: 30px;">
                            We are committed to supporting our employees with disabilities or long- term conditions by taking steps to remove barriers that disabled employees may face at work. Some examples of support we can offer include
                            </p>
                            </label>

                </div>
                <div class="submit-field" id="features" style="display: none">

                            <table style="width: 100%">
                                <thead>
                                    <tr>
                                    <th width="75%"></th>
                                    <th width="25%"></th>
                                    </tr>
                                </thead>
                                                         <tbody id="featureRows">
                                
                                <tr>
                                <td><h5 style="display:list-item">Options to be home-based (remote working) </h5></td>
                                <td><input style="height: 15px; width: 15px; margin-top:7px;" type="checkbox" name="admin_features[]" value="Options to be home-based (remote working)"></td>
                                </tr>
                                <tr>
                                <td><h5 style="display:list-item">Wheelchair accessible ramps and offices </h5></td>
                                <td><input style="height: 15px; width: 15px; margin-top:7px;" type="checkbox" name="admin_features[]" value="Wheelchair accessible ramps and offices"></td>
                                </tr>
                                <tr>
                                <td><h5 style="display:list-item">Accessible Bathroom(s) </h5></td>
                                <td><input style="height: 15px; width: 15px; margin-top:7px;" type="checkbox" name="admin_features[]" value="Accessible Bathroom(s)"></td>
                                </tr>
                                <tr>
                                <td><h5 style="display:list-item">Alteration of working hours / Flexible working </h5></td>
                                <td><input style="height: 15px; width: 15px; margin-top:7px;" type="checkbox" name="admin_features[]" value="Alteration of working hours / Flexible working"></td>
                                </tr>
                                <tr>
                                <td><h5 style="display:list-item">Accessible computer software </h5></td>
                                <td><input style="height: 15px; width: 15px; margin-top:7px;" type="checkbox" name="admin_features[]" value="Accessible computer software"></td>
                                </tr>
                                <tr>
                                <td><h5 style="display:list-item">Office space designed for sensory needs </h5></td>
                                <td><input style="height: 15px; width: 15px; margin-top:7px;" type="checkbox" name="admin_features[]" value="Office space designed for sensory needs"></td>
                                </tr>
                                <tr>
                                <td><h5 style="display:list-item">Ergonomic workstations </h5></td>
                                <td><input style="height: 15px; width: 15px; margin-top:7px;" type="checkbox" name="admin_features[]" value="Ergonomic workstations"></td>
                                </tr>
                                <tr>
                                <td><h5 style="display:list-item">Screen reader software </h5></td>
                                <td><input style="height: 15px; width: 15px; margin-top:7px;" type="checkbox" name="admin_features[]" value="Screen reader software"></td>
                                </tr>
                                <tr>
                                <td><h5 style="display:list-item">Additional Disability equality training for employees </h5></td>
                                <td><input style="height: 15px; width: 15px; margin-top:7px;" type="checkbox" name="admin_features[]" value="Additional Disability equality training for employees"></td>
                                </tr>
                                
                            </tbody>
                            
                            
                                                          
                             
                             
                            <tfoot id="myNewFeature" style="display: none;">
                                <tr>
                                   <td>
                                       <input type="text" id="newFeature" style="margin-top:17px;">
                                  </td> 
                                 <td>
                                     <button class="save button" type="button">Add</button>
                                     <button class="cancel button" type="button">Cancel</button>
                                  </td> 
                                </tr>
                            </tfoot>
                            </table>
                            
                            <a href="javascript:void(0)" class="addMoreFeatures">Add More</a>
                </div>

                <div class="submit-field">
                    <h5>City</h5>
                    @if(!empty($is_smart_search))
                                            <div class="form-group-smart-search">
                                                <div class="form-content">
                                                    <?php
                                                    $location_name = "";
                                                    $list_json = [];
                                                    $traverse = function ($locations, $prefix = '') use (&$traverse, &$list_json , &$location_name,$row) {
                                                        foreach ($locations as $location) {
                                                            $translate = $location->translateOrOrigin(app()->getLocale());
                                                            if ($row->location_id == $location->id){
                                                                $location_name = $translate->name;
                                                            }
                                                            $list_json[] = [
                                                                'id' => $location->id,
                                                                'title' => $prefix . ' ' . $translate->name,
                                                            ];
                                                            $traverse($location->children, $prefix . '-');
                                                        }
                                                    };
                                                    $traverse($company_location);
                                                    ?>
                                                    <div class="smart-search">
                                                        <input type="text" class="smart-search-location parent_text form-control" placeholder="{{__("-- Please Select --")}}" value="{{ $location_name }}" data-onLoad="{{__("Loading...")}}"
                                                               data-default="{{ json_encode($list_json) }}">
                                                        <input type="hidden" class="child_id" name="location_id" value="{{$row->location_id ?? Request::query('location_id')}}">
                                                    </div>
                                                </div>
                                            </div>
                                        @else
                                            <div class="">
                                                <select name="location_id" class="form-control">
                                                    <option value="">{{__("-- Please Select --")}}</option>
                                                    <?php
                                                    $traverse = function ($locations, $prefix = '') use (&$traverse, $row) {
                                                        foreach ($locations as $location) {
                                                            $selected = '';
                                                            if ($row->location_id == $location->id)
                                                                $selected = 'selected';
                                                            printf("<option value='%s' %s>%s</option>", $location->id, $selected, $prefix . ' ' . $location->name);
                                                            $traverse($location->children, $prefix . '-');
                                                        }
                                                    };
                                                    $traverse($company_location);
                                                    ?>
                                                </select>
                                            </div>
                                        @endif                    
              </div>
                            <div class="submit-field">
                    <h5>Phone Number</h5>
                    <div class="input-with-icon">
                      <input class="with-border" type="text" name="phone" value="">
                      <i class="icon-feather-phone"></i>
                    </div>
                  </div>
                  <div class="submit-field">
                    <h5>Fax</h5>
                    <div class="input-with-icon">
                      <input class="with-border" type="text" name="fax" value="">
                      <i class="icon-feather-printer"></i>
                    </div>
                  </div>
                  <div class="submit-field">
                    <h5>Email address</h5>
                    <div class="input-with-icon">
                      <input class="with-border" type="email" name="email" value="">
                      <i class="icon-feather-mail"></i>
                    </div>
                  </div>
                  <div class="submit-field">
                    <h5>Company Website</h5>
                    <div class="input-with-icon">
                      <input class="with-border" type="url" name="website" value="">
                      <i class="icon-feather-link"></i>
                    </div>
                  </div>
                  <div class="submit-field">
                    <h5>Facebook</h5>
                    <div class="input-with-icon">
                      <input class="with-border" type="url" name="social_media[facebook]" value="">
                      <i class="icon-feather-facebook"></i>
                    </div>
                  </div>
                  <div class="submit-field">
                    <h5>Twitter</h5>
                    <div class="input-with-icon">
                      <input class="with-border" type="url" name="social_media[twitter]" value="">
                      <i class="icon-feather-twitter"></i>
                    </div>
                  </div>
                  <div class="submit-field">
                    <h5>Linkedin</h5>
                    <div class="input-with-icon">
                      <input class="with-border" type="url" name="social_media[linkedin]" value="">
                      <i class="icon-feather-linkedin"></i>
                    </div>
                  </div>
                  <div class="submit-field">
                    <h5>Pinterest</h5>
                    <div class="input-with-icon">
                      <input class="with-border" type="url" name="social_media[pinterest]" value="">
                      <i class="fa fa-pinterest-p"></i>
                    </div>
                  </div>
                  <div class="submit-field">
                    <h5>Youtube</h5>
                    <div class="input-with-icon">
                      <input class="with-border" type="url" name="social_media[youtube]" value="">
                      <i class="icon-feather-youtube"></i>
                    </div>
                  </div>
                  <div class="submit-field">
                    <h5>Instagram</h5>
                    <div class="input-with-icon">
                      <input class="with-border" type="url" name="social_media[instagram]" value="">
                      <i class="icon-feather-instagram"></i>
                    </div>
                  </div>
                  
        
                
                
                
                    <button type="submit" name="submit" class="button ripple-effect">Save</button>
      </form>
  </div>
</div>
            </div>
          
            
        </div>
        
       
    </div>
</section>


@endsection

@section('footer')
    <script>
        $(document).ready(function(){
     
            
             $('#addFeatures').change(function(){
        $('#features').toggle();
    });
            
             $('.addMoreFeatures').click(function(){
        $('#myNewFeature').toggle();
         $('.addMoreFeatures').hide()
    });
    
           $('.cancel').click(function(){
        $('#myNewFeature').toggle();
        $('.addMoreFeatures').show()
    });
    
      $('body').on('click','.save',function(){

            
            var myFeatureNew = $('#newFeature').val();
            
          

            
            var newRow = $('<tr>' +
                    '<td>'+
                     '<h5 style="display:list-item">'+ myFeatureNew +'</h5>'+
                     '</td>'+
                     '<td>'+
                     '<input style="height: 15px; width: 15px; margin-top:7px;" type="checkbox" name="company_features[]" value="'+ myFeatureNew +'">'+
                    '</td>'+
            '</tr>');
            $('#featureRows').append(newRow);
            
            $('#newFeature').val('');
            $('#myNewFeature').toggle();
            $('.addMoreFeatures').show()
        });
        })
    </script>
@endsection