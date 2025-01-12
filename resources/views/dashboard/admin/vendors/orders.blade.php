@extends('dashboard.admin.layouts.app')

@section('title', 'Manage Vendors | Admin')

@section('content')

<div>
  <div class="container" id="mainDiv">
      <div class="row justify-content-center">
          <div class="col-md-12 my-5 card p-4">
            
              <h4><small>Manage as {{$shopname}}</small></h4>
            
              <div>
                  <a href="{{route('admin.new.orders', $vendor_id)}}" type="button" class="btn btn-primary position-relative">
                      New Order Requests
                      <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                        {{$newOrders}}
                      </span>
                  </a>
              </div>
              <hr>
              <div class="table-responsive text-center" id="table">
                  <table id="example" class="table table-striped tbl" id="tbl" style="width:100%">
                      <thead>
                          <tr>
                              <th><small>#</small></th>
                              <th><small>Invoice</small></th>
                              <th><small>Quantity</small></th>
                              <th><small>Price</small></th>
                              <th><small>Payment</small></th>
                             
                              <th><small>Order Details</small></th>
                              <th><small>Status</small></th>
                          </tr>
                      </thead>
                      <tbody>
                          @foreach ($filteredOrder as $item)
                              @if ($item->status != 'PENDING')
                                  @foreach (json_decode($item->product_details) as $otherItems)
                                  @php
                                      $data = [
                                          'vendor_id' => $vendor_id,
                                          'user_id' => $item->user_id,
                                          'quantity' => $otherItems->quantity,
                                          'product_id' => $otherItems->product_id,
                                          'address_id' => $item->address_id,
                                          'order_id' => $item->id,
                                          'invoice' => $item->invoice,
                                          'payment_status' => $item->payment_status,
                                          'orderDate' => $item->created_at->format('d/m/Y'),
                                      ];
                                  @endphp
                                  <tr>
                                      <td><small>{{ $loop->index + 1 }}</small></td>
                                      <td><small>{{$item->invoice}}</small></td>
                                      <td><small>{{$otherItems->quantity}}</small></td>
                                      <td><small>{{$item->total}}</small></td>
                                      <td>
                                          <!-- Payment status dropdown inside a form -->
                                          <form action="{{ route('admin.order.status') }}" method="POST">
                                              @csrf
                                              <input type="hidden" name="id" value="{{ $item->id }}">
                                              <select class="form-select form-control bg-dark text-light statusChange" name="payment_status" style="width: 165px; font-size: 12px">
                                                  <option selected value="{{ $item->payment_status }}">{{ $item->payment_status }}</option>
                                                  <option value="PENDING">PENDING</option>
                                                  <option value="PAID">PAID</option>
                                              </select>
                                          </form>
                                      </td>
                                     
                                      <th>
                                          <small class="badge bg-info text-light p-2" style="cursor: pointer" onclick="details({{ json_encode($data, TRUE) }})">
                                              <b>VIEW DETAILS</b>
                                          </small>
                                      </th>
                                      <td style="width: 150px; font-size: 14px;">
                                          <form action="{{ route('admin.order.status') }}" method="POST">
                                              @csrf
                                              <input type="hidden" name="id" value="{{ $item->id }}">
                                              <select class="form-select form-control bg-dark text-light statusChange" name="status" style="width: 165px; font-size: 12px">
                                                  <option selected value="{{ $item->status }}">{{ $item->status }}</option>
                                                  <option value="ORDER CONFIRMED"><small>ORDER CONFIRMED</small></option>
                                                  <option value="ON THE WAY"><small>ON THE WAY</small></option>
                                                  <option value="DELIVERED"><small>DELIVERED</small></option>
                                              </select>
                                          </form>
                                      </td>
                                  </tr>
                                  @endforeach
                              @endif
                          @endforeach
                      </tbody>
                  </table>
              </div>

              <div class="d-none" id="details">
                  <div class="card">
                      <div class="card-body">
                          <div class="container mb-5 mt-3">
                              <div class="row d-flex align-items-baseline">
                                  <div class="col-xl-9">
                                      <p style="color: #7e8d9f;font-size: 20px;">Invoice >> <strong><span id="invoice"></span></strong></p>
                                  </div>
                                  <div class="col-xl-3 float-end">
                                      <a class="btn btn-light text-capitalize border-0" data-mdb-ripple-color="dark">
                                          <i class="fas fa-print text-primary"></i> Print
                                      </a>
                                      <button class="btn btn-light text-capitalize text-danger" id="closeDetails" onclick="closeDetails()">
                                          <i class="fa fa-times-circle" aria-hidden="true"></i> Close
                                      </button>
                                  </div>
                                  <hr>
                              </div>
                              <div class="container">
                                  <!-- Invoice Details Section -->
                                  <div class="col-md-12 text-center">
                                      <h4 style="color:#5d9fc5;"><b>E M E D I S H O P</b></h4>
                                      <p class="pt-0">EMEDISHOP.COM</p>
                                  </div>
                                  <div class="row">
                                      <div class="col-xl-8">
                                          <ul class="list-unstyled">
                                              <li class="text-muted">To: <span id="username"></span></li>
                                              <li class="text-muted"><i class="fa fa-location-arrow"></i> <span id="address"></span></li>
                                              <li class="text-muted">Zip Code: <span id="zip_code"></span></li>
                                              <li class="text-muted"><i class="fa fa-envelope"></i> <span id="email"></span></li>
                                              <li class="text-muted"><i class="fas fa-phone"></i> <span id="mobile"></span></li>
                                          </ul>
                                      </div>
                                      <div class="col-xl-4">
                                          <ul class="list-unstyled">
                                              <li class="text-muted"><span class="fw-bold">Invoice:</span> <span id="order_id"></span></li>
                                              <li class="text-muted"><span class="fw-bold">Date:</span> <span id="orderDate"></span></li>
                                              <li class="text-muted"><span class="fw-bold">Status:</span> <span id="payment_status"></span></li>
                                          </ul>
                                      </div>
                                  </div>
                                  <div class="row">
                                      <table class="table table-borderless">
                                          <thead>
                                              <tr>
                                                  <th>#</th>
                                                  <th>Product</th>
                                                  <th>Qty</th>
                                                  <th>Unit Price</th>
                                                  <th>Amount</th>
                                              </tr>
                                          </thead>
                                          <tbody>
                                              <tr>
                                                  <td>1</td>
                                                  <td id="prodcut_name"></td>
                                                  <td id="quantity"></td>
                                                  <td id="unit_price"></td>
                                                  <td id="amount"></td>
                                              </tr>
                                          </tbody>
                                      </table>
                                  </div>
                                  <div class="row">
                                      <div class="col-xl-3">
                                          <p>Total Amount: <span id="total"></span> BDT</p>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
</div>

@section('javascript')
<script>
  $('.statusChange').on('change', function () {
      $(this).closest('form').submit();
  });

  function details(data) {
      axios.post('/getOrderDetails', {
          product_id: data.product_id,
          address_id: data.address_id,
      }).then(resp => {
          let address = resp.data.address;
          let product = resp.data.product;
          $('#invoice').html(data.invoice);
          $('#username').html(address.name);
          $('#address').html(address.address);
          $('#zip_code').html(address.zip_code);
          $('#email').html(address.email);
          $('#mobile').html(address.mobile);
          $('#order_id').html(data.order_id);
          $('#orderDate').html(data.orderDate);
          $('#payment_status').html(data.payment_status.toUpperCase());
          $('#prodcut_name').html(product.product_name);
          $('#quantity').html(parseInt(data.quantity));
          $('#unit_price').html(parseInt(product.price));
          $('#amount').html(parseInt(data.quantity) * parseInt(product.price));
          $('#total').html(parseInt(data.quantity) * parseInt(product.price) + 90);
      }).catch(err => {
          console.log(err);
      });
      $('#details').removeClass('d-none');
      $('#table').addClass('d-none');
  }

  function closeDetails() {
      $('#table').removeClass('d-none');
      $('#details').addClass('d-none');
  }
</script>
@endsection



