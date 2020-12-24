@extends('backend.layouts.master')
@section('admin_content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Manage Invoice</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Invoice</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- Left col -->
          <section class="col-md-12">
            <!-- Custom tabs (Charts with tabs)-->
            <div class="card">
              <div class="card-header">
                <h3>Add Invoice
                  <a href="{{route('invoice.view')}}" class="btn btn-success float-right btn-sm"><i class="fa fa-list btn-sm"></i>Invoice List</a>
                </h3>
              </div><!-- /.card-header -->
              <div class="card-body">
                  <div class="form-row">
                    <div class="form-group col-md-2">
                      <label>Invoice No</label>
                      <input type="text" name="invoice_no" id="invoice_no" class="form-control form-control-sm" value="{{$invoice_no}}"  readonly  style="background-color: #D8FDBA">
                    </div>
                    <div class="form-group col-md-2">
                      <label>Date</label>
                      <input type="text" name="date" id="date" class="form-control datepicker form-control-sm" placeholder="YYYY-MM-DD" value="{{$date}}" readonly>
                    </div>
                    <div class="form-group col-md-3">
                      <label>Category Name</label>
                      <select name="category_id" id="category_id"  class="form-control form-control-sm select2">
                        <option value="">Select Category </option>
                        @foreach ($categories as $category)
                          <option value="{{$category->id}}">{{$category->category_name}}</option>
                        @endforeach
                      </select>
                    </div>
                      <div class="form-group col-md-3">
                        <label>Product Name</label>
                        <select name="product_id" id="product_id" class="form-control form-control-sm select2">
                          <option value="">Select Product </option>
                        </select>
                      </div>
                      <div class="form-group col-md-2">
                        <label>Stock(Pcs/Kg)</label>
                        <input type="text" name="current_stock_qty" id="current_stock_qty" class="form-control form-control-sm" readonly style="background-color: #D8FDBA">
                    </div>
                    <div class="form-group col-md-1" style="padding-top: 30px;" >
                     <a class="btn btn-success addeventmore btn-sm"><i class="fa fa-plus-circle"></i>Add</a>
                    </div>
                  </div>
              </div><!-- /.card-body -->
              <div class="card-body">
                <form action="{{route('invoice.store')}}" method="post" id="myForm">
                  @csrf
                  <table class="table-sm table-bordered" width="100%">
                    <thead>
                      <tr>
                        <th>Category</th>
                        <th>Product Name</th>
                        <th width="7%">Pcs/Kg</th>
                        <th width="10%">Unit Price</th>
                        <th width="17%">Total Price</th>
                        <th width="10%">Action</th>
                      </tr>
                    </thead>
                    <tbody id="addRow" class="addRow">

                    </tbody>
                    <tbody>
                      <tr>
                        <td class="text-right"  colspan="4">Discount</td>
                        <td><input type="text" name="discount_amount" id="discount_amount" class="form-control form-control-sm discount_amount text-right " placeholder="Enter Discount Amount"></td>
                      </tr>
                      <tr>
                        <td class="text-right"   colspan="4">Grand Total</td>
                        <td>
                          <input type="text" name="estimated_amount" id="estimated_amount" value="0" class="form-control form-control-sm text-right estimated_amount"  readonly style="background-color: #D8FDBA">         
                        </td>
                        <td></td>
                      </tr>
                    </tbody>
                  </table>
                    <br>
                  <div class="form-row">
                    <div class="form-group col-md-12">
                      <textarea name="description" id="description" class="form-control" placeholder="Write description here"></textarea>
                    </div>
                  </div>
                   <div class="form-row">
                    <div class="form-group col-md-3">
                      <label>Paid Status</label>
                      <select name="paid_status" id="paid_status" class="form-control form-control-sm" >
                        <option value="">Select Status</option>
                         <option value="full_paid">Full Paid</option>
                         <option value="full_due">Full Due</option>
                         <option value="partial_paid">Partial Paid</option>
                      </select>
                      <input type="text" name="paid_amount" class="form-control form-control-sm paid_amount" placeholder="Enter Paid Amount" style="display:none;" >
                    </div>
                    <div class="form-group col-md-9">
                      <label>Customer Name</label>
                        <select name="customer_id" id="customer_id" class="form-control form-control-sm select2" >
                        <option value="">Select Customer</option>
                          @foreach ($customers as $customer)
                          <option value="{{$customer->id}}">{{$customer->name}} ({{$customer->mobile}} - {{$customer->address}})</option>
                         @endforeach 
                         <option value="0">New Customer</option> 
                      </select>
                    </div>
                  </div>
                  <div class="form-row new_customer" style="display: none;">
                    <div class="form-group col-md-4">
                      <input type="text" name="name" id="name" class="form-control form-control-sm" placeholder="Write Customer Name">
                    </div>
                    <div class="form-group col-md-4">
                      <input type="text" name="mobile" id="mobile" class="form-control form-control-sm" placeholder="Write Customer Mobile No">
                    </div>
                    <div class="form-group col-md-4">
                      <input type="text" name="address" id="address" class="form-control form-control-sm" placeholder="Write Customer Address">
                    </div>
                  </div>

                 <div class="form-group">
                   <button type="submit" class="btn btn-primary" id="storeButton" > Invoice Store</button>
                </div> 
                </form>
            </div><!-- /.card-body -->
            </div>
            <!-- /.card -->
          </section>
          <!-- right col -->
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>

  <script id="document-template" type="text/x-handlebars-template">
    <tr class="delete_add_more_item" id="delete_add_more_item">

      <input type="hidden" name="date" value="@{{date}}">

      <input type="hidden" name="invoice_no" value="@{{invoice_no}}">

      <td>
        <input type="hidden" name="category_id[]" value="@{{category_id}}">
        @{{category_name}}
      </td> 
      <td>
        <input type="hidden" name="product_id[]" value="@{{product_id}}">
        @{{product_name}}
      </td>
      <td>
        <input type="number" min="1" class="form-control form-control-sm text-right selling_qty" name="selling_qty[]" value="1">
      </td> 
      <td>
        <input type="number" class="form-control form-control-sm text-right unit_price" name="unit_price[]" value="">
      </td> 
      <td>
        <input type="number"  class="form-control form-control-sm text-right selling_price" name="selling_price[]" value="0" readonly>
      </td> 
      <td>
        <i class="btn btn-danger btn-sm fa fa-window-close removeeventmore"></i>
      </td> 
    </tr>
  </script>

 <script>
 $(document).ready(function(){
   $(document).on("click",".addeventmore",function(){
     var date = $('#date').val();
     var invoice_no = $('#invoice_no').val();
     var category_id = $('#category_id').val();
     var category_name =$('#category_id').find('option:selected').text();
     var product_id = $('#product_id').val();
     var product_name =$('#product_id').find('option:selected').text();

     if (date==''){
      $.notify("Date is required", {globalPosition: 'top right', className: 'error'});
      return false;
     }
      if (category_id==''){
      $.notify("Category is required", {globalPosition: 'top right', className: 'error'});
      return false;
     }
      if (product_id==''){
      $.notify("Product is required", {globalPosition: 'top right', className: 'error'});
      return false;
     }

     var source = $('#document-template').html();
     var template = Handlebars.compile(source);
     var data= {
      date:date,
      invoice_no:invoice_no,
      category_id:category_id,
      category_name:category_name,
      product_id:product_id,
      product_name:product_name
     };
    var html  = template(data);
    $("#addRow").append(html);
   });
   $(document).on("click", ".removeeventmore", function(event){
    $(this).closest(".delete_add_more_item").remove();
    totalAmountPrice();
   });
   $(document).on('keyup click','.unit_price,.selling_qty', function(){
    var unit_price = $(this).closest("tr").find("input.unit_price").val();
    var qty = $(this).closest("tr").find("input.selling_qty").val();
    var total = unit_price*qty;
    $(this).closest("tr").find("input.selling_price").val(total);
    $('#discount_amount').trigger('keyup');

   });
   $(document).on('keyup','#discount_amount',function(){
    totalAmountPrice();
   });

   //calculate sum of amount in invoice
   function totalAmountPrice(){
    var sum =0;
    $(".selling_price").each(function(){
      var value = $(this).val();
      if(!isNaN(value) && value.length != 0){
        sum += parseFloat(value);
      }
    });

    // discount jquery
    var discount_amount = parseFloat($('#discount_amount').val());
    if(!isNaN(discount_amount) && discount_amount.length != 0){
        sum -= parseFloat(discount_amount);
      }
    $("#estimated_amount").val(sum);
   }
 });
 
 </script>
  <script>
    $(function(){
      $(document).on('change', '#category_id', function(){
        var category_id = $(this).val();
          $.ajax({
            url:"{{route('get-product')}}",
            type:"GET",
            data:{category_id:category_id},
            success:function(data){
              var html = '<option value="">Select Product</>';
              $.each(data,function(key,v){
                html +='<option value="'+v.id+'">'+v.name+'</option>';
              });
               $('#product_id').html(html);
            }
          });
      });
    });
  </script>
  <script>
    $(function(){
      $(document).on('change', '#product_id', function(){
        var product_id = $(this).val();
          $.ajax({
            url:"{{route('check-product-stock')}}",
            type:"GET",
            data:{product_id:product_id},
            success:function(data){
             $("#current_stock_qty").val(data); 
            }
          });
      });
    });
  </script>

  <script>
    $(document).ready(function () {
      $('#myForm').validate({
        rules: {
          supplier_id:{
            required: true,
          },
          unit_id:{
            required: true,
          },
          category_name:{
            required: true,
          },
          name:{
            required: true,
          },
         
        },
        messages: {
          category_id:{
            required: "Please enter a name",
          },
        
        },
        errorElement: 'span',
        errorPlacement: function (error, element) {
          error.addClass('invalid-feedback');
          element.closest('.form-group').append(error);
        },
        highlight: function (element, errorClass, validClass) {
          $(element).addClass('is-invalid');
        },
        unhighlight: function (element, errorClass, validClass) {
          $(element).removeClass('is-invalid');
        }
      });
    });
  </script>

  <script>
    $(document).on('change', '#paid_status',function(){
      var paid_status = $(this).val();
      if(paid_status == 'partial_paid'){
        $('.paid_amount').show();
      }else{
         $('.paid_amount').hide();
      }
    });
     $(document).on('change', '#customer_id',function(){
      var customer_id = $(this).val();
      if(customer_id == '0'){
        $('.new_customer').show();
      }else{
         $('.new_customer').hide();
      }
    });
  </script>
 
  <script>
   $('.datepicker').datepicker({
     uiLibrary: "bootstrap4",
     format: 'yyyy-mm-dd'
   });
  </script> 
@endsection