@extends('dashboard.vendor.layouts.app')

@section('title', 'Update Products | Vendor')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-md-4 mx-auto p-4 my-4 card js-tilt">
            <h4>Update Product</h4>
            @if (Session::get('error'))

            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <strong>{{Session::get('error')}}</strong>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            @endif
            <hr>
            <form action="{{route('vendor.product.update')}}" method="POST" enctype="multipart/form-data">
                @csrf
                <input type="text" name="product_id" value="{{$data->id}}" hidden>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Product Name</label>
                    <input type="text" name="product_name" value="{{$data->product_name}}" class="form-control @error('product_name') is-invalid @enderror" placeholder="Enter product name">
                    @error('product_name')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Product Category</label>
                    <select class="form-control" name="category" id="exampleFormControlSelect1">
                        <option value="{{$data->category}}" selected>{{$data->category}}</option>
                        @foreach ($categories as $item)
                        <option value="{{$item->cat_name}}">{{$item->cat_name}}</option>
                        @endforeach
                    </select>
                    @error('category')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Brand Name</label>
                    <input type="text" name="brand_name" value="{{$data->brand_name}}" class="form-control @error('brand_name') is-invalid @enderror" placeholder="Enter Brandname">
                    @error('brand_name')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>

                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">pieces</label>
                    <input type="text" name="pieces" value="{{$data->pieces}}" class="form-control @error('pieces') is-invalid @enderror" placeholder="Enter pieces">
                    @error('pieces')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Price</label>
                    <input type="text" name="price" value="{{$data->price}}" class="form-control @error('price') is-invalid @enderror" placeholder="Enter price">
                    @error('price')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="discount" class="form-label">Discount</label>
                    <input type="text" name="discount" value="{{ $data->discount }}" class="form-control @error('discount') is-invalid @enderror" placeholder="Enter discount (optional)">
                    @error('discount')
                    <span class="text-danger">{{ $message }}</span>
                    @enderror
                </div>
                
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Stock</label>
                    <input type="number" name="stock" value="{{$data->stock}}" class="form-control @error('stock') is-invalid @enderror" placeholder="Enter available product stock">
                    @error('stock')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Image</label>
                    <img class="py-2 w-25" id="blah" src="{{asset('images/products/'.$data->image)}}" />
                    <input type="file" id="imgInp" accept="image/*" name="image" class="form-control-file" value="{{old('image')}}" class="form-control @error('image') is-invalid @enderror">
                    @error('image')
                    <span class=" text-danger">{{$message}}</span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Product Description</label>
                    <textarea type="text" name="product_des" class="form-control @error('product_des') is-invalid @enderror" id=" exampleInputPassword1" placeholder="Enter product descriptoin">{{$data->product_des}}</textarea>
                    @error('product_des')
                    <span class="text-danger">{{$message}}</span>
                    @enderror
                </div>

                <div>
                    <button type="submit" class="btn btn-primary">Update Product</button>
                </div>

            </form>


        </div>

    </div>
</div>
@endsection

@section('javascript')

<script>
    imgInp.onchange = evt => {
        const [file] = imgInp.files
        if (file) {
            blah.src = URL.createObjectURL(file)
        }
    }

</script>


@endsection
