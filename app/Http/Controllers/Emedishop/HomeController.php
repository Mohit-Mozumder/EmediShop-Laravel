<?php

namespace App\Http\Controllers\Emedishop;

use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\Categorie;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    public function home()
    {
        $getProduct = Product::get();
        $categories = Categorie::all();
        return view('index')->with(['products' => $getProduct, 'categories' => $categories]);
    }
    

    public function shopCartCount()
    {
        $user_id = Auth::user()->id;
        $findCart = Cart::where('user_id', $user_id)->count();
        return $findCart;
    }

    public function showAllCategories(){
        $getCategory = Categorie::get();
        return $getCategory;
    }

    public function getCategories()
    {
        // Fetch all categories from the database
        $categories = Categorie::all();
        //dd($categories);
        // Return the categories as JSON
        return response()->json($categories);
    }

    public function category($category)
    {
        $sub_cat  = null;
        if ($category == 'all-products') {
            $category = 'all-products';

            $data = Product::orderBy('id', 'desc')->paginate(30);
        } else {
            $data = Product::where('category', $category)->orderBy('id', 'desc')->paginate(20);
        }
        return view('emedishop.pages.store', compact('category', 'sub_cat', 'data'));
    }
}
