@extends('layouts.dashboard')

@section('title')
    {{ trans('dashboard.title.index') }}
@endsection

@section('breadcrumbs')
    {{ Breadcrumbs::render('dashboard_home') }}
@endsection

@section('content')
    <div class="container-fluid">
        <!-- Greeting -->
        <div class="row mb-4">
            <div class="col-md-12">
                <h2>{{ trans('dashboard.greeting.welcome', ['name' => Auth::user()->name]) }}</h2>
            </div>
        </div>

        <!-- Widgets -->
        <div class="row mb-4">
            <div class="col-md-4">
                <div class="widget p-3 bg-primary text-white rounded">
                    <h3><i class="fas fa-user fa-spin"></i> {{ trans('users.title.index') }}</h3>
                    <h3>{{ $jmluser }}</h3>
                </div>
            </div>
            <div class="col-md-4">
                <div class="widget p-3 bg-success text-white rounded">
                    <h3><i class="fab fa-usps fa-spin"></i> {{ trans('posts.title.index') }}</h3>
                    <h3>{{ $jmlpost }}</h3>
                </div>
            </div>
            <div class="col-md-4">
                <div class="widget p-3 bg-warning text-dark rounded">
                    <h3><i class="fas fa-sliders-h fa-spin"></i> {{ trans('categories.title.index') }}</h3>
                    <h3>{{ $jmlctgr }}</h3>
                </div>
            </div>
        </div>
    </div>
@endsection


@push('styles')
    <style>
        .widget {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
@endpush
