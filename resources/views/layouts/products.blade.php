<!-- Products Start -->
<!-- Products Start -->
<div class="container-fluid pt-5">
    <div class="text-center mb-4">
        <h2 class="section-title px-5"><span class="px-2">LATEST MEDICINE</span></h2>
    </div>

    <div class="row px-xl-5 pb-3">
        @foreach ($products as $item)
        <div class="col-lg-3 col-md-6 col-sm-6 col-6 pb-1 product-item">
            <div class="card product-item border-0 mb-4">
                <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                    <img class="img-fluid" src="{{asset('images/products/'.$item->image)}}" alt="{{$item->product_name}}">
                    @if ($item->discount > $item->price)
                    <div class="discount-badge position-absolute">
                        Save:  {{ $item->discount - $item->price }} &#2547;
                    </div>
                    @endif
                </div>
                <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                    <h6 class="text-truncate mb-3">{{$item->product_name}}</h6>
                    <div class="d-flex justify-content-center">
                        <h6>&#2547; {{$item->price}}</h6>
                        <h6 class="text-muted ml-2"><del>&#2547; <b>{{$item->discount}}</b></del></h6>
                    </div>
                </div>
                <div class="card-footer d-flex justify-content-between align-items-center bg-light border">
                    <form action="{{route('prodcut_details')}}" method="POST">
                        @csrf
                        <input type="text" name="id" value="{{$item->id}}" hidden>
                        <button type="submit" class="btn btn-sm text-dark p-0 d-flex align-items-center">
                            <i class="fas fa-eye text-primary mr-1"></i>View Detail
                        </button>
                    </form>
                    @if (Auth::user())
                    <a href="{{route('user.addToCart', ['product_id'=> $item->id, 'price' => $item->price])}}" class="btn btn-sm text-dark p-0 d-flex align-items-center">
                        <i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart
                    </a>
                    @else
                    <a href="{{route('user.withoutauth')}}" class="btn btn-sm text-dark p-0 d-flex align-items-center">
                        <i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart
                    </a>
                    @endif
                </div>
                
            </div>
        </div>
        @endforeach
    </div>
</div>

<style>
    /* General styling for product items */
    .product-item {
        margin-bottom: 1rem; /* Adjust spacing between products */
    }

    /* Ensure product names wrap to the next line if too long */
    .product-item h6.text-truncate {
        white-space: normal; /* Allow text to wrap */
        overflow: hidden; /* Ensure no overflow outside the container */
        text-overflow: ellipsis; /* Add ellipsis if needed */
        line-height: 1.2; /* Adjust line height for better readability */
        max-height: 2.4em; /* Limit height to two lines */
    }
    .discount-badge {
        position: absolute;
        top: 0; /* Start from the top */
        left: 0; /* Start from the left */
        background-color: #6f42c1; /* Purple color for the badge */
        color: #fff; /* White text */
        padding: 3px 8px; /* Small padding for compact look */
        border-top-left-radius: 0; /* Flat edge on the top-left corner */
        border-top-right-radius: 10px; /* Rounded corner on the top-right */
        border-bottom-left-radius: 0; /* Flat edge on the bottom-left corner */
        border-bottom-right-radius: 10px; /* Rounded corner on the bottom-right */
        font-size: 0.75rem; /* Small font size */
         /* Bold text for better visibility */
        z-index: 10; /* Ensure it stays above other elements */
    }

    /* Mobile-specific styles for screens ≤ 576px */
    @media (max-width: 335px) {
        .product-item {
            width: 48%; /* Each product takes half of the row */
            margin: 1%; /* Small margin between products */
            float: left; /* Ensures side-by-side layout */
        }
        .discount-badge {
            font-size: 0.65rem; /* Slightly smaller font for mobile */
            padding: 2px 6px; /* Reduced padding */
        }
        .card-footer .btn {
    white-space: nowrap; /* Prevent text wrapping */
    overflow: hidden; /* Hide overflow text */
    text-overflow: ellipsis; /* Add ellipsis for long text */
    height: 2.5rem; /* Set a consistent height */
    display: flex; /* Flexbox for proper alignment */
    align-items: center; /* Center content vertically */
    justify-content: center; /* Center content horizontally */
}

        .row {
            display: flex;
            flex-wrap: wrap; /* Enables wrapping for rows */
            justify-content: space-between; /* Adds spacing between items */
        }
    }
</style>
