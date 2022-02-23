@extends('admin.layouts.app')

@section('content')
    <form action="{{route('brand.admin.store',['id'=>($row->id) ? $row->id : '-1','lang'=>request()->query('lang')])}}" method="post">
        @csrf
        <div class="container-fluid">
            <div class="d-flex justify-content-between mb20">
                <div class="">
                    <h1 class="title-bar">{{$row->id ? __('Edit: ').$row->title : "Add New Supporters"}}</h1>
                   
                </div>
                <div class="">
                  
                </div>
            </div>
            @include('admin.message')
            @if($row->id)
                @include('Language::admin.navigation')
            @endif
            <div class="lang-content-box">
                <div class="row">
                    <div class="col-md-9">

                        <div class="panel">
                            <div class="panel-title"><strong>Supporter info</strong></div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <label>Name</label>
                                    <input type="text" value="{{ old('title', $row->name) }}" placeholder="Name" name="name" required class="form-control">
                                </div>
                                <div class="form-group">
                                    <label class="control-label">{{__("Content")}}</label>
                                    <div class="">
                                        <textarea name="content" class="d-none has-ckeditor" cols="30" rows="10">{{ old('content', $row->content) }}</textarea>
                                    </div>
                                </div>
                               
                            </div>
                        </div>
                       

                      
                    </div>
                    <div class="col-md-3">
                        <div class="panel">
                            <div class="panel-title"><strong>{{__('Publish')}}</strong></div>
                            <div class="panel-body">
                                @if(is_default_lang())
                                    <div>
                                        <label><input @if(old('status', $row->status) =='publish') checked @endif type="radio" name="status" value="publish"> {{__("Publish")}}</label>
                                    </div>
                                    <div>
                                        <label><input @if(old('status', $row->status)=='draft') checked @endif type="radio" name="status" value="draft"> {{__("Draft")}}</label>
                                    </div>
                                @endif
                                <div class="text-right">
                                    <button class="btn btn-primary" type="submit"><i class="fa fa-save"></i> {{__('Save Changes')}}</button>
                                </div>
                            </div>
                        </div>
                     
                        @if(is_default_lang())
                            <div class="panel">
                                <div class="panel-title"><strong>{{__('Feature Image')}}</strong></div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        {!! \Modules\Media\Helpers\FileHelper::fieldUpload('image',old('image', $row->image)) !!}
                                    </div>
                                </div>
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </form>
@endsection
@php  @endphp
@section ('script.body')
    {!! App\Helpers\MapEngine::scripts() !!}
    <script>
        jQuery(function ($) {
            new BravoMapEngine('map_content', {
                disableScripts: true,
                fitBounds: true,
                center: [{{old('map_lat', $row->map_lat) ?? "51.505"}}, {{old('map_lng', $row->map_lng) ?? "-0.09"}}],
                zoom:{{old('map_zoom', $row->map_zoom) ?? "8"}},
                ready: function (engineMap) {
                    @if(old('map_lat', $row->map_lat) && old('map_lng', $row->map_lng))
                    engineMap.addMarker([{{old('map_lat', $row->map_lat)}}, {{old('map_lng', $row->map_lng)}}], {
                        icon_options: {}
                    });
                    @endif
                    engineMap.on('click', function (dataLatLng) {
                        engineMap.clearMarkers();
                        engineMap.addMarker(dataLatLng, {
                            icon_options: {}
                        });
                        $("input[name=map_lat]").attr("value", dataLatLng[0]);
                        $("input[name=map_lng]").attr("value", dataLatLng[1]);
                    });
                    engineMap.on('zoom_changed', function (zoom) {
                        $("input[name=map_zoom]").attr("value", zoom);
                    });
                    engineMap.searchBox($('#customPlaceAddress'),function (dataLatLng) {
                        engineMap.clearMarkers();
                        engineMap.addMarker(dataLatLng, {
                            icon_options: {}
                        });
                        $("input[name=map_lat]").attr("value", dataLatLng[0]);
                        $("input[name=map_lng]").attr("value", dataLatLng[1]);
                    });
                    engineMap.searchBox($('.bravo_searchbox'),function (dataLatLng) {
                        engineMap.clearMarkers();
                        engineMap.addMarker(dataLatLng, {
                            icon_options: {}
                        });
                        $("input[name=map_lat]").attr("value", dataLatLng[0]);
                        $("input[name=map_lng]").attr("value", dataLatLng[1]);
                    });
                }
            });

            $('#job_type_id').select2();
        })
    </script>
@endsection
