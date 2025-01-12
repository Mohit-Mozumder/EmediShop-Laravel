<div class="container-fluid pt-5">
    <!-- Scrollable categories visible only on mobile view -->
    <div class="scrollmenu d-block d-sm-none">
        @foreach($categories as $category)
        <div class="category-item">
            <div class="cat-item">
                <!-- Category Image (If available) -->
                @if($category->photo)
                    <img src="{{ asset('storage/' . $category->photo) }}" alt="Category Image" class="category-image">
                @else
                    <img src="{{ asset('images/default-category.png') }}" alt="No Image" class="category-image">
                @endif
                <!-- Category Name as a Clickable Button -->
                <form action="{{ url('category/' . strtolower($category->cat_name)) }}" method="GET">
                    <button type="submit" class="btn btn-primary font-weight-semi-bold w-100 square-btn">
                        {{ $category->cat_name }}
                    </button>
                </form>
            </div>
        </div>
        @endforeach
    </div>
</div>

<style>
    /* Scrollable container for categories with rounded corners */
    .scrollmenu {
        background-color: #f8f9fa;
        overflow-x: auto; /* Allow horizontal scrolling */
        white-space: nowrap;
        padding: 10px 0;
        display: flex;
        justify-content: center;
        border-radius: 15px;
        margin: 15px 0;
        box-shadow: 0 4px 6px rgba(249, 249, 249, 0.1);

        /* Hide scrollbar */
        scrollbar-width: none; /* For Firefox */
        -ms-overflow-style: none; /* For Internet Explorer and Edge */
    }

    .scrollmenu::-webkit-scrollbar {
        display: none; /* For Chrome, Safari, and Opera */
    }

    /* Style for each category item */
    .category-item {
        display: inline-block;
        margin: 0 10px;
        text-align: center;
        width: 150px;
        transition: transform 0.3s ease;
    }

    .category-item:hover {
        transform: scale(1.05);
    }

    .cat-item {
        background-color: #ffffff;
        padding: 15px;
        border-radius: 10px;
        box-shadow: 0 2px 6px rgba(246, 245, 245, 0.1);
        transition: box-shadow 0.3s ease;
    }

    .cat-item:hover {
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
    }

    .category-image {
        width: 80px;
        height: 80px;
        margin: 0 auto 10px;
        object-fit: cover;
    }

    .cat-item button {
        background: none;
        border: none;
        font-size: 13px;
        font-weight: 600;
        color: #333;
        text-transform: capitalize;
        cursor: pointer;
        padding: 0;
        text-align: center; /* Center-align text */
        word-break: keep-all;
      
        white-space: normal; /* Allow wrapping to multiple lines */
        line-height: 1.2; /* Adjust line height for readability */
        max-height: 3.6em; /* Limit height to two lines */
        overflow: hidden; /* Hide text that exceeds the height */
        
    }

    .cat-item button:hover {
        color: #f4efef;
        text-decoration: none;
    }

    @media (max-width: 576px) {
        .category-item {
            width: 100px;
        }

        .category-image {
            width: 60px;
            height: 60px;
        }

        .cat-item button {
            font-size: 12px;
        }
    }
</style>

