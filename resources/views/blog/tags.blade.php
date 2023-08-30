@extends('layouts.blog')

@section('title')
    {{ trans('blog.title.tags') }}
@endsection

@section('content')
    <h2 class="my-3">
        {{ trans('blog.title.tags') }}
    </h2>
    <!-- Breadcrumb:start -->
    {{ Breadcrumbs::render('blog_tags') }}
    <!-- Breadcrumb:end -->

    <!-- List tag -->
    <div class="row">
        <div class="col d-flex flex-wrap">
            @forelse ($tags as $tag)
                <a href="{{ route('blog.posts.tag', ['slug' => $tag->slug]) }}" class="badge badge-info py-3 px-5 mb-3 mr-3">
                    # {{ $tag->title }}</a>
            @empty
                <h3 class="text-center">
                    {{ trans('blog.no_data.tags') }}
                </h3>
            @endforelse
        </div>
    </div>
    <!-- List tag -->

    <!-- pagination:start -->
    @if ($tags->hasPages())
        <div class="row">
            <div class="col">
                {{ $tags->links('vendor.pagination.bootstrap-4') }}
            </div>
        </div>
    @endif
    <!-- pagination:end -->
@endsection

@section('styles')
    <style>
        .badge {
            display: inline-block;
            padding: 10px 20px;
            margin-bottom: 10px;
            background-color: #17a2b8;
            color: white;
            border-radius: 5px;
        }

        @media (max-width: 576px) {
            .badge {
                width: 100%;
                margin-right: 0;
            }
        }
    </style>
@endsection
