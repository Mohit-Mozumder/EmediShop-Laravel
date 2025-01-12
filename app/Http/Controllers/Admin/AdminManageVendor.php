<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\Vendor;
use App\Models\Product;
use App\Models\Address;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\VarDumper\VarDumper;

class AdminManageVendor extends Controller
{
    public function ManageOrders($vendor_id)
    {
        // Fetch orders for the given vendor
        $newOrders = json_decode(Order::where('vendor_id', $vendor_id)
        ->where('status', '=', 'PENDING')
        ->orderBy('id', 'desc')
        ->count());
        $vendor = Vendor::find($vendor_id);
        $shopname = $vendor->shopname;
       
        $filteredOrder = Order::where('vendor_id', $vendor_id)->get();
       // dd($vendor_id);
        return view('dashboard.admin.vendors.orders', compact('vendor_id', 'filteredOrder', 'newOrders','shopname'));
    }
    public function orderStatus(Request $req)
    {
        $id = $req->id;
        $status = $req->status;
        $paymentStatus = $req->payment_status;  // Add this line for payment status
        
        // Find the order by ID
        $order = Order::find($id);
        
        // Update order status
        if ($status) {
            $order->status = $status;
        }
    
        // Update payment status if provided
        if ($paymentStatus) {
            $order->payment_status = $paymentStatus;
        }
    
        // Save the updated order
        $order->save();
    
        return redirect()->back();
    }
    

    public function getOrderDetails(Request $req){
        $product_id = $req->product_id;
        // $vendor_id = $req->vendor_id;
        // $user_id = $req->user_id;
        $address_id = $req->address_id;

        $product = Product::find($product_id);
        $address = Address::find($address_id);

        return ["product" => $product, "address" => $address];
    }
    public function newOrders($vendor_id)
    {
        // Fetch pending orders for the given vendor
        $newOrders = Order::where('vendor_id', $vendor_id)
                          ->where('status', '=', 'PENDING')
                          ->count();

        $filteredOrder = Order::where('vendor_id', $vendor_id)
                              ->where('status', '=', 'PENDING')
                              ->get();
         $vendor = Vendor::find($vendor_id);
         $shopname = $vendor->shopname;

        return view('dashboard.admin.vendors.orderRequests', compact('filteredOrder', 'newOrders','shopname'));
    }
}