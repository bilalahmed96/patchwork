@extends('admin.layouts.app')
@section('content')
    <div class="container-fluid">
        <div class="d-flex justify-content-between mb20">
            <h1 class="title-bar">All Supporters</h1>
            <div class="title-actions">
                <a href="{{ route('brand.admin.create') }}" class="btn btn-primary">Add New Supporter</a>
            </div>
        </div>
        @include('admin.message')
        <div class="filter-div d-flex justify-content-between ">
            <div class="col-left">
                @if(!empty($rows))
                    <form method="post" action="{{url('admin/module/brand/bulkEdit')}}" class="filter-form filter-form-left d-flex justify-content-start">
                        {{csrf_field()}}
                        <select name="action" class="form-control">
                            <option value="">{{__(" Bulk Actions ")}}</option>
                          
                            <option value="delete">{{__(" Delete ")}}</option>
                        </select>
                        <button data-confirm="{{__("Do you want to delete?")}}" class="btn-default btn btn-icon dungdt-apply-form-btn" type="button">{{__('Apply')}}</button>
                    </form>
                @endif
            </div>
            <div class="col-left">
                <form method="get" action="{{ route('brand.admin.index') }}" class="filter-form filter-form-right d-flex justify-content-end flex-column flex-sm-row" role="search">
                  
                
                    <input type="text" name="s" value="{{ Request()->input('s') }}" placeholder="{{__('Search by name')}}" class="form-control">
                    <button class="btn-default btn btn-icon btn_search" type="submit">{{__('Search')}}</button>
                </form>
            </div>
        </div>
        <div class="text-right">
            <p><i>{{__('Found :total items',['total'=>$rows->total()])}}</i></p>
        </div>
        <div class="panel">
            <div class="panel-body">
                <form action="" class="bravo-form-item">
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th width="60px"><input type="checkbox" class="check-all"></th>
                                <th> Image </th>
                                <th> Name </th>
                                <th> Content </th>
                                <th width="100px"></th>
                            </tr>
                            </thead>
                            <tbody>
                            @if($rows->total() > 0)
                                @foreach($rows as $row)
                                    <tr class="{{$row->status}}">
                                        <td><input type="checkbox" name="ids[]" class="check-item" value="{{$row->id}}">
                                        </td>
                                         <td class="title">
                                             
                                        <img    src="{!! \Modules\Media\Helpers\FileHelper::url( $row->image) !!}" alt="" width="70">
                                           
                                        </td>
                                       
                                        <td class="title">
                                            {{$row->name}}
                                        </td>
                                       
                                        <td>{{ $row->content }}</td>
                                        
                                        <td>{{ display_date($row->updated_at)}}</td>
                                        <td>
                                            <a href="{{  $row->getEditUrl() }}" class="btn btn-default btn-sm"><i class="fa fa-edit"></i> {{__('Edit')}}
                                            </a>
                                        </td>
                                    </tr>
                                @endforeach
                            @else
                                <tr>
                                    <td colspan="7">{{__("No data")}}</td>
                                </tr>
                            @endif
                            </tbody>
                        </table>
                    </div>
                </form>
                {{$rows->appends(request()->query())->links()}}
            </div>
        </div>
    </div>
@endsection
