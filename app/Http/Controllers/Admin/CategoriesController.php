<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Categorie;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;

class CategoriesController extends Controller
{
    public function index()
    {
        $Category = Categorie::get();
        return view('dashboard.admin.categories.categories')->with('data', $Category);
    }

    public function add(Request $req)
    {
        // Validate inputs, including the image upload
        $req->validate([
            'cat_name' => 'required|max:50',
            'photo' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048', // Validate the image file
        ]);

        // Handle the image upload
        if ($req->hasFile('photo')) {
            $photo = $req->file('photo');
            $photoPath = $photo->store('images/category', 'public'); // Store image in public/images/category
        }

        // Save the category
        $add = new Categorie;
        $add->cat_name = $req->cat_name;
        $add->photo = $photoPath ?? null; // Save the image path if available
        $add->save();

        // Handle notification
        if ($add) {
            $notificaton = [
                'message' => 'Category Added',
                'alert-type' => 'success'
            ];
            return redirect()->back()->with($notificaton);
        } else {
            $notificaton = [
                'message' => 'Something went wrong!',
                'alert-type' => 'error'
            ];
            return redirect()->back()->with($notificaton);
        }
    }
 
    public function update(Request $req)
    {
        // Validate the request, including the image
        $req->validate([
            'cat_name' => 'required|max:50',
            'photo' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048', // Validate the image
        ]);
    
        // Find the category by ID
        $category = Categorie::find($req->cat_id);
    
        // If a new photo is uploaded
        if ($req->hasFile('photo')) {
            // Delete the old image if it exists
            if ($category->photo && Storage::exists('public/' . $category->photo)) {
                Storage::delete('public/' . $category->photo);
            }
    
            // Store the new image
            $photoPath = $req->file('photo')->store('images/category', 'public');
            $category->photo = $photoPath; // Update the photo path in the database
        }
    
        // Update category name
        $category->cat_name = $req->cat_name;
        $category->save();
    
        // Return success notification
        if ($category) {
            $notification = [
                'message' => 'Category Updated',
                'alert-type' => 'success',
            ];
            return redirect()->back()->with($notification);
        } else {
            // Return error notification
            $notification = [
                'message' => 'Something went wrong!',
                'alert-type' => 'error',
            ];
            return redirect()->back()->with($notification);
        }
    }

    public function delete($id)
    {
        $delete = Categorie::find($id)->delete();
        if ($delete) {
            $notificaton = [
                'message' => 'Category Deleted',
                'alert-type' => 'success'
            ];
            return redirect()->back()->with($notificaton);
        }
    }
}
