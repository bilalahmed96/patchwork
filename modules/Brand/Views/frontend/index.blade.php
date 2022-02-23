@extends('layouts.app')

@section('content')
    @includeIf('Job::frontend.layouts.loop.'. $style)
@endsection

@section('footer')
   
@endsection
