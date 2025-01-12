@extends('layouts.app')

@section('title', 'Medicine Store | Emedishop')

@section('content')

<!-- Navbar Start -->
@include('emedishop.navbar')
<!-- Navbar End -->

<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5">
    <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 180px">
        <h1 class="font-weight-semi-bold text-uppercase mb-3">Store</h1>
        <div class="d-inline-flex">
            <p class="m-0"><a class="text-dark" href="{{asset('/')}}">Home</a></p>
            <p class="m-0 px-2">-</p>
            @if ($category && $sub_cat)
                <p class="m-0 text-dark">{{strtoupper($category)}}</p> 
                <p class="m-0 text-dark px-2">-</p>
                <p class="m-0 text-info">{{strtoupper($sub_cat)}}</p> 
            @elseif ($category)
                <p class="m-0 text-info">{{strtoupper($category)}}</p> 
            @endif
           
        </div>
    </div>
</div>
<!-- Page Header End -->


<!-- Store Start -->
<div class="container-fluid pt-5">
    <div class="row px-xl-5">
        <!-- Shop Sidebar Start -->
        {{-- <div class="col-lg-3 col-md-12">
           
        </div> --}}
        <!-- Shop Sidebar End -->


        <!-- Shop Product Start -->
        <div class="col-lg-12 col-md-12">
  
                <div class="row px-xl-5 pb-3">
                    @foreach ($data as $item)
                    {{-- @if ($item->category == 'AIR JORDAN') --}}
                    @php
                        $images = explode('|', $item->image);
                    @endphp
                    <div class="col-lg-3 col-md-6 col-sm-12 pb-1 mb-3">
                        <div class="mycustomcard p-2">
                            <div class="position-relative overflow-hidden bg-transparentp-0">
                                <img class="mx-auto text-center" style="height:210px;max-width:280px;width: expression(this.width > 280 ? 280: true);" src="{{asset('images/products/'.$images[0])}}" alt="{{$item->product_name}}">
                                @if ($item->discount > $item->price)
                                <div class="discount-badge position-absolute">
                                    Save:  {{ $item->discount - $item->price }} &#2547;
                                </div>
                                @endif
                            </div>
                            <div class="text-center p-0 pt-4 pb-3">
                                <h6 class="text-truncate mb-3">{{$item->product_name}}</h6>
                                <div class="d-flex justify-content-center">
                                    <h6>AED {{$item->price}}</h6>
                                    <h6 class="text-muted ml-2"><del>&#2547; <b>{{$item->discount}}</b></del></h6>
                                </div>
                            </div>
                            <div class="d-flex justify-content-center mx-3">
                                <form action="{{route('prodcut_details')}}" method="POST">
                                    @csrf
                                    <input type="text" name="id" value="{{$item->id}}" hidden>
                                    <button type="submit" class="btn btn-sm text-dark p-0"><i class="fas fa-eye mr-1"></i>View Detail</button>
                                </form>
                            </div>
                        </div>
                    </div>
                {{-- @endif --}}
                @endforeach
        

                <div class="col-12 pb-1">
                    <nav aria-label="Page navigation">
                        <ul class="pagination justify-content-center mb-3">
                            {{$data->links()}}

                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Shop Product End -->
    </div>
</div>
<!-- Shop End -->

@endsection
<style>
    /* General badge styling */
    .discount-badge {
        position: absolute;
        top: 0; /* Start from the top */
        left: 0; /* Start from the left */
        background-color: #6f42c1; /* Purple color for the badge */
        color: #fff; /* White text */
        padding: 3px 8px; /* Compact padding for a neat look */
        border-top-left-radius: 0; /* Flat edge on the top-left corner */
        border-top-right-radius: 10px; /* Rounded corner on the top-right */
        border-bottom-left-radius: 0; /* Flat edge on the bottom-left corner */
        border-bottom-right-radius: 10px; /* Rounded corner on the bottom-right */
        font-size: 0.75rem; /* Small font size */
        
        z-index: 10; /* Ensure it stays above other elements */
    }

    /* Mobile-specific badge styling for screens ≤ 576px */
    @media (max-width: 335px) {
        .discount-badge {
            font-size: 0.65rem; /* Slightly smaller font for mobile */
            padding: 2px 6px; /* Reduced padding */
        }
    }
</style>
