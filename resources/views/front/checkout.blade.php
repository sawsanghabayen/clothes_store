@extends('front.parent')
@section('title',__('cp.cart'))


@section('styles')

@endsection

@section('content')




	<!-- breadcrumb -->
	<div class="container">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="index.html" class="stext-109 cl8 hov-cl1 trans-04">
				Home
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<span class="stext-109 cl4">
				Shoping Cart
			</span>
		</div>
	</div>
		

	<!-- Shoping Cart -->
	<form class="bg0 p-t-65 p-b-85">
		<div class="container">
			<div class="row">

			
                <div class="col-lg-20 col-xl-7 m-lr-auto m-b-50">
					<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h4 class="mtext-109 cl2 p-b-30">
							Cart Totals
						</h4>

						<div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
								<span class="stext-110 cl2">
									Subtotal:
								</span>
							</div>

							<div class="size-209">
								<span class="mtext-110 cl2" id="sub-total">
									{{$total}}$
								</span>
							</div>
						</div>

						<div class="flex-w flex-t bor12 p-t-15 p-b-30">
							<div class="size-208 w-full-ssm">
								<span class="stext-110 cl2">
									Select Address:
								</span>
							</div>

							<div class="size-209 p-r-18 p-r-0-sm w-full-ssm">
								{{-- <p class="stext-111 cl6 p-t-2">
									There are no shipping methods available. Please double check your address, or contact us if you need any help.
								</p> --}}
								
								<div class="p-t-15">
									{{-- <span class="stext-112 cl8">
										Calculate Shipping
									</span> --}}
									<div id="myList"  class="payment_item active">
										@foreach ( $addresses as $address)
										<div class="radion_btn">
											<input name="address" type="radio" id="{{$address->id}}"  value="{{$address->id}}"/>
											<label for="f-option6">{{$address->city->name}} | {{$address->area->name}} | {{$address->street}} | {{$address->building}} | {{$address->flate_num}} </label>
										</div>
										  
										
										@endforeach
									
									
										
									  </div>

									  <div class="flex-w">
										<a href="#" id= "js-show-modal1" class="flex-c-m stext-101 cl2 size-115 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer js-show-modal1">
											New Address
										</a>
									</div>

								</div>
							</div>
						</div>

						<div class="flex-w flex-t p-t-27 p-b-33">
							<div class="size-208">
								<span class="mtext-101 cl2">
									Discount:
								</span>
							</div>

							<div class="size-209 p-t-1">
								@if (session()->has('code'))

								<span class="mtext-110 cl2" id="discount">
									${{session('code')}}

								</span>
								@else
								<span class="mtext-110 cl2" id="discount">
									$0
								</span>
								@endif
							</div>
						</div>
						<div class="flex-w flex-t p-t-27 p-b-33">
							<div class="size-208">
								<span class="mtext-101 cl2">
									Total:
								</span>
							</div>
                        
                            
							<div class="size-209 p-t-1">
								@if (session()->has('code'))

									<span class="mtext-110 cl2" >
									@if (session()->has('type') && session('type') == 'fixed')
								
									{{$total - session('code')}}$

									@else
									
									{{$total - ($total *(session('code')/100))}}
									@endif
									</span>
								
                                @else
									<span class="mtext-110 cl2" id="final-total">
										
									{{$total}}
									
									</span>
								@endif

							</div>
						</div>
						<div >
							<div class="flex-w flex-m m-r-20 m-tb-5">
								<input class="stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5" type="text" name="coupon" id="code" placeholder="Coupon Code">
									
								<button id="coupon" type="button" onclick="applayCoupon()" class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">
									Apply coupon
								</button >
							</div>
	
							
						</div>

						<button type="button" onclick="performPlaceOrder()" class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
							Proceed to Checkout
						</button>
					</div>
                    
				</div>
				<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
					<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h4 class="mtext-109 cl2 p-b-30">
							Cart Totals
						</h4>

						<div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
								<span class="stext-110 cl2">
									Subtotal:
								</span>
							</div>

							<div class="size-209">
								<span class="mtext-110 cl2" id="sub-total">
									{{$total}}$
								</span>
							</div>
						</div>

						<div class="flex-w flex-t bor12 p-t-15 p-b-30">
							<div class="size-208 w-full-ssm">
								<span class="stext-110 cl2">
									Select Address:
								</span>
							</div>

							<div class="size-209 p-r-18 p-r-0-sm w-full-ssm">
								{{-- <p class="stext-111 cl6 p-t-2">
									There are no shipping methods available. Please double check your address, or contact us if you need any help.
								</p> --}}
								
								<div class="p-t-15">
									{{-- <span class="stext-112 cl8">
										Calculate Shipping
									</span> --}}
									<div id="myList"  class="payment_item active">
										{{-- @foreach ( $addresses as $address)
										<div class="radion_btn">
											<input name="address" type="radio" id="{{$address->id}}"  value="{{$address->id}}"/>
											<label for="f-option6">{{$address->city->name}} | {{$address->area->name}} | {{$address->street}} | {{$address->building}} | {{$address->flate_num}} </label>
										</div>
										  
										
										@endforeach --}}
										{{-- @foreach ( $addresses as $address) --}}
										<div class="radion_btn">
											<input name="address" type="radio"   />
											<label for="f-option6">gaza | gaza | gaza200 |gaza | gaza </label>
										</div>
										  
										
										{{-- @endforeach --}}
									
										
									  </div>

									  <div class="flex-w">
										<a href="#" id= "js-show-modal1" class="flex-c-m stext-101 cl2 size-115 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer js-show-modal1">
											New Address
										</a>
									</div>

								</div>
							</div>
						</div>

						<div class="flex-w flex-t p-t-27 p-b-33">
							<div class="size-208">
								<span class="mtext-101 cl2">
									Discount:
								</span>
							</div>

							<div class="size-209 p-t-1">
								@if (session()->has('code'))

								<span class="mtext-110 cl2" id="discount">
									${{session('code')}}

								</span>
								@else
								<span class="mtext-110 cl2" id="discount">
									$0
								</span>
								@endif
							</div>
						</div>
						<div class="flex-w flex-t p-t-27 p-b-33">
							<div class="size-208">
								<span class="mtext-101 cl2">
									Total:
								</span>
							</div>
                            {{-- 
							<div class="size-209 p-t-1">
								@if (session()->has('code'))

									<span class="mtext-110 cl2" id="final-total">
									@if (session()->has('type') && session('type') == 'fixed')
									{{$total - session('code')}}$

									@else
									{{$total - ($total *(session('code')/100))}}
									@endif
									</span>
								
                                @else
									<span class="mtext-110 cl2" id="final-total">
									{{$total}}
									
									</span>
								@endif

							</div> --}}
						</div>

						<button type="button" onclick="performPlaceOrder()" class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
							Proceed to Checkout
						</button>
					</div>
				</div>
			</div>
		</div>

		
	</form>
		
	
		


<!-- Moddal-->
	<div  class="wrap-modal1 js-modal1 p-t-100 p-b-30">
		<div class="overlay-modal1 js-hide-modal1"></div>

		<div class="container" style="max-width: 600px">
			<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
				<button class="how-pos3 hov3 trans-04 js-hide-modal1">
					<img src="{{asset('front/images/icons/icon-close.png')}}"  alt="CLOSE">
				</button>

				{{-- <div class="row">	 --}}

				
					<div class=" p-b-30">
						<div class="p-r-50 p-t-5 p-lr-0-lg">
								{{-- addresses form--}}
                    <form id="create-form" >
							<div class="p-t-25">
								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">
										{{__('cp.city')}}
									</div>

									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select id="cityId" class="js-select2" name="time">
												<option>Choose an option</option>
												@foreach ($cities as $city)
												<option value="{{$city->id}}">{{$city->name}}</option>
												@endforeach
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">
										{{__('cp.area')}}
									</div>

									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select id="areaId" class="js-select2" name="time">
												<option>Choose an option</option>
												
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

							
								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">
										{{__('cp.street')}}
									</div>
									<input id="street" style="height: 45px" class="bor8 p-lr-28 size-204 respon6-next" type="text" name="text" >
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">
										{{__('cp.building')}}
									</div>
									<input id="building" style="height: 45px" class="bor8 size-204 p-lr-28 respon6-next" type="text" name="text" >
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">
										{{__('cp.flat')}}
									</div>
									<input id="flat" style="height: 45px" class="bor8 size-204 p-lr-28 respon6-next" type="text" name="text" >
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-204 flex-w flex-m respon6-next">
										

										<button type="button" onclick="performStore()" style="float: right" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
											Save
										</button>
									</div>
								</div>	
							</div>
                    </form>
							
						</div>
					</div>
				{{-- </div> --}}
			</div>
		</div>
	</div>

@endsection
@section('scripts')
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script>

		
var qty=1;
var total=0;

$('.js-show-modal1').on('click',function(e){
        e.preventDefault();
        $('.js-modal1').addClass('show-modal1');
    });
    $('.js-hide-modal1').on('click',function(){
        $('.js-modal1').removeClass('show-modal1');
    });
	$('#cityId').on('change',function(){
        // alert('Value: '+this.value);
        getareas(this.value);
    });
    function getareas(cityId){
        axios.get('/areas/'+cityId)         
       .then(function (response) {
   
           $('#areaId').empty();
           $.each(response.data.data , function(i , item){
            console.log('Id: '+item['id']);
            $('#areaId').append(new Option(item['name'],item['id']));
           });
          
       })
       .catch(function (error) {
     
       });
    } 


	function performStore() {
       
	   axios.post('/addresses', {
		street: document.getElementById('street').value,
		building: document.getElementById('building').value,
		flat: document.getElementById('flat').value,
		cityId: document.getElementById('cityId').value,
		areaId: document.getElementById('areaId').value,


	   })
	   .then(function (response) {
		toastr.success(response.data.message);
		   document.getElementById('create-form').reset();

          $('.js-modal1').removeClass('show-modal1');
		var addressId = response.data.id;

		// alert(addressId)

		axios.get('/addresses/' + addressId)
      .then(function (response) {
		let addresses = "";
		 addresses = `<div class="radion_btn">
			<input type="radio" id="${addressId}"  value="${addressId}"/>
		 	  <label for="f-option6">${response.data.data.city.name} | ${response.data.data.area.name} |${response.data.data.building} |${response.data.data.street} |${response.data.data.flate_num}  </label>

		 		</div>`;
		console.log(addresses)

        $("#myList").append(addresses);

	})
      .catch(function (error) {
        console.log(error);
      });

	   });
   }




  function getTotal() {

	axios.get('/total')
		.then(function (response) {
			$.total = response.data.total;
			$.finalTotal = response.data.total;
			
		//  total = response.data.total;
		// var subTotal = response.data.total;
	$('#sub-total').text( $.total +'$');

    $('#final-total').text( $.total  +'$');

		})
      .catch(function (error) {
		toastr.error(error.response.data.message,'' ,{positionClass: 'toast-bottom-right'});

        // console.log(error);
      });

	 

}

getTotal();

function confirmDelete(id,reference){
        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            cancelButtonColor: '#d33',
            confirmButtonColor: '#3085d6',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
        if (result.isConfirmed) {
            performDelete(id,reference);
        }
        });
    								}






function applayCoupon() {
	
	
	axios.get('/product_coupons?code=' + $("#code").val())
	.then(function (response) {
		// getTotal();

		var used_times=response.data.data.used_times;
		console.log(used_times);

		var currentDate = moment().format("YYYY-MM-DD");
		var startDate = response.data.data.start_date;
		var endDate = response.data.data.expire_date;
		// while(response.data.data.used_times <= response.data.data.uses_times){
		if( response.data.data.used_times <= response.data.data.uses_times){
			if($.total>= parseFloat(response.data.data.greater_than) &&( currentDate >= startDate && currentDate <= endDate)){

         if(response.data.data.type == 'fixed'){

	
	toastr.success(response.data.message,'' ,{positionClass: 'toast-bottom-right'});
	$('#discount').text(response.data.data.value +'$');
	
  $('#final-total').text( $.total - parseFloat(response.data.data.value) +'$');
  $.finalTotal = $.total - parseFloat(response.data.data.value);

}
else{
toastr.success(response.data.message,'' ,{positionClass: 'toast-bottom-right'});
$('#discount').text(response.data.data.value +'$');

	$('#final-total').text( $.total - ( $.total * (parseFloat(response.data.data.value) / 100) ) +'$');
  $.finalTotal = $.total -( $.total * (parseFloat(response.data.data.value) / 100) );


}
// changeUsedTimeCoupon(response.data.data.id ,++used_times );
// console.log(response);

}
else{
			toastr.error('The Total: '+$.total+' must be >=' + response.data.data.greater_than + ' OR Coupon Date Expire!','' ,{positionClass: 'toast-bottom-right'});

    }

		} 

	
		else{
			toastr.error('The number of times used has expired','' ,{positionClass: 'toast-bottom-right'});

		}
		

		
	})
      .catch(function (error) {

		toastr.error(error.response.data.message,'' ,{positionClass: 'toast-bottom-right'});

        // console.log(error);
      });

	//   return  $.finalTotal;

    }

	function changeUsedTimeCoupon(id ,used_times) {

	var formData = new FormData();

	formData.append('used_times', used_times);


	formData.append('_method','PUT');     

axios.post('/product_coupons/'+ id ,formData)

.then(function (response) {

toastr.success(response.data.message ,'' ,{positionClass: 'toast-bottom-right'});

})
.catch(function (error) {

toastr.error(error.response.data.message,'' ,{positionClass: 'toast-bottom-right'});
});

}
	
function performPlaceOrder() {
// getTotal();

        axios.post('/orders', {
            total: parseFloat($.finalTotal),
            address_id: document.querySelector('input[type=radio][name=address]:checked').value,
       })
        .then(function (response) {
            console.log(response);
			axios.get('/product_coupons?code=' + $("#code").val())
	   .then(function (response) {
		changeUsedTimeCoupon(response.data.data.id ,++response.data.data.used_times );

	}
	)
	.catch(function (error) {
            console.log(error.response);
            toastr.error(error.response.data.message,'' ,{positionClass: 'toast-bottom-right'});
        });
			

            toastr.success(response.data.message,'' ,{positionClass: 'toast-bottom-right'});
            window.location.href = '/orders';
        })
        .catch(function (error) {
            console.log(error.response);
            toastr.error(error.response.data.message,'' ,{positionClass: 'toast-bottom-right'});
        });
		else{
		toastr.error('Must Select Address','' ,{positionClass: 'toast-bottom-right'});

	}
    }







axios.defaults.headers.common = {
        'X-Requested-With': 'XMLHttpRequest',
        'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
    };


		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="{{asset('front/vendor/MagnificPopup/jquery.magnific-popup.min.js')}}"></script>
<!--===============================================================================================-->
	<script src="{{asset('front/vendor/perfect-scrollbar/perfect-scrollbar.min.js')}}"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
<script src="{{asset('front/js/main.js')}}"></script>
<script src="{{asset('front/js/moment.min.js')}}"></script>


@endsection
