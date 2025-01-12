@extends('layouts.app')

@section('title', 'Home')

@section('content')

@include('layouts.navbar')

{{-- @include('layouts.slider') --}}

@include('layouts.categories') 

@include('layouts.products')

{{-- @include('layouts.offer') --}}

{{-- @include('layouts.subscribe') --}}

@include('layouts.products_logo')

@endsection
