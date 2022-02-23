@extends('admin.layouts.app')

@section('content')
    <form action="{{route('resource.admin.store',['id'=>($row->id) ? $row->id : '-1','lang'=>request()->query('lang')])}}" method="post" class="dungdt-form">
        <div class="container-fluid">
            <div class="d-flex justify-content-between mb20">
                <div class="">
                    <h1 class="title-bar">{{$row->id ? 'Edit Resource: '.$row->title : 'Add Resource'}}</h1>
                    @if($row->slug)
                        <p class="item-url-demo">{{__("Permalink")}}: {{ url( (request()->query('lang') ? request()->query('lang').'/' : '').config('resource.resource_route_prefix'))  }}/<a href="#" class="open-edit-input" data-name="slug">{{$row->slug}}</a>
                        </p>
                    @endif
                </div>
                <div class="">
                    @if($row->link)
                        <a class="btn btn-primary btn-sm" href="{{$row->link}}" target="_blank"> View Resource</a>
                    @endif
                </div>
            </div>
            @include('admin.message')
            @include('Language::admin.navigation')
            <div class="lang-content-box">
                <div class="row">
                    <div class="col-md-9">
                        <div class="panel">
                            <div class="panel-title"><strong>Resource Content</strong></div>
                            <div class="panel-body">
                                @csrf
                                <div class="form-group">
                                        <label>{{ __('Title')}}</label>
                                        <input type="text" value="{{ $row->title ?? '' }}" placeholder="Resource title" name="title" class="form-control">
                                    </div>
                                        <div class="form-group">
                                        <label>Link</label>
                                        <input type="url" value="{{ $row->link ?? '' }}" placeholder="Resource Link" name="link" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label">{{ __('Content')}} </label>
                                        <div class="">
                                            <textarea name="content" class="d-none has-ckeditor" cols="30" rows="10">{{ $row->content}}</textarea>
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
                                    <label><input @if($row->status=='publish') checked @endif type="radio" name="status" value="publish"> {{__("Publish")}}
                                    </label></div>
                                <div>
                                    <label><input @if($row->status=='draft') checked @endif type="radio" name="status" value="draft"> {{__("Draft")}}
                                    </label></div>
                                @endif
                                <div class="text-right">
                                    <button class="btn btn-primary" type="submit"><i class="fa fa-save"></i> {{__('Save Changes')}}</button>
                                </div>
                            </div>
                        </div>

                 

                        @if(is_default_lang())
                            <div class="panel">
                                <div class="panel-body">
                                    <h3 class="panel-body-title"> {{ __('Feature Image')}}</h3>
                                    <div class="form-group">
                                        {!! \Modules\Media\Helpers\FileHelper::fieldUpload('image',$row->image) !!}
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
