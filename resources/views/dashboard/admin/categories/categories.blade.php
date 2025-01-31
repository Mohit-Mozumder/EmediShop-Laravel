@extends('dashboard.admin.layouts.app')

@section('title', 'Services | Admin')

@section('content')

<div>
    <div class="container" id="mainDiv">
        <div class="row justify-content-around">
            <div class="col-md-8 card p-4 my-5">
                <h4>Update & Delete Categories</h4>
                <hr>
                <div class="table-responsive">
                    <table id="" class="table table-striped tbl" id="tbl" style="width:100%">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Category</th>
                                <th>Current Photo</th>
                                <th>New Photo</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($data as $item)
                            <tr>
                                <td>{{ $loop->index+1 }}</td>
                                <form action="{{route('admin.categories.update')}}" method="POST" enctype="multipart/form-data">
                                    @csrf
                                    <td>
                                        <input type="text" name="cat_id" value="{{$item->id}}" hidden>
                                        <input class="form-control" type="text" name="cat_name" value="{{$item->cat_name}}" placeholder="Category can't be empty!">
                                        @error('cat_name')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </td>

                                    <!-- Display Current Photo -->
                                    <td>
                                        @if($item->photo)
                                            <img src="{{ asset('storage/' . $item->photo) }}" alt="Category Photo" width="100">
                                        @else
                                            No Image
                                        @endif
                                    </td>

                                    <!-- File Input for New Photo -->
                                    <td>
                                        <input type="file" name="photo" class="form-control @error('photo') is-invalid @enderror">
                                        @error('photo')
                                        <span class="text-danger">{{$message}}</span>
                                        @enderror
                                    </td>

                                    <td>
                                        <button type="submit" class="btn btn-primary">Update</button>
                                    </td>
                                </form>

                                <td>
                                    <a href="{{route('admin.categories.delete', ['id' => $item->id])}}" class="btn btn-danger">Delete</a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="col-md-3 card p-4 my-5 h-25">
                <h4>Add Category</h4>
                <hr>
                <form action="{{route('admin.categories.add')}}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Category Name</label>
                        <input type="text" name="cat_name" value="{{old('cat_name')}}" class="form-control @error('cat_name') is-invalid @enderror" placeholder="Enter category">
                        @error('cat_name')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>

                    <!-- Add Photo Upload Field -->
                    <div class="mb-3">
                        <label for="photo" class="form-label">Category Photo</label>
                        <input type="file" name="photo" class="form-control @error('photo') is-invalid @enderror">
                        @error('photo')
                            <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>

                    <div>
                        <button type="submit" class="btn btn-primary">Add Category</button>
                    </div>

                </form>
            </div>

        </div>
    </div>
</div>

@section('javascript')

@endsection

@endsection
