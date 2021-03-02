<div id="checkout-box" class="container-fluid p-0">
	<div class="row m-0">
		<div class="p-2 bg2" style="height: 100vh;width: 320px;">
			<p class="ml-1 font-weight-bold text-white" style="font-size: 130%">MANAGE</p>
			
			
			<div class="row m-0">
				<div class="col-12 p-1">
					<div class="bg1 p-2" style="width: 100%;height: 55px;">
						<div class="float-left mr-3 text-center bg3" style="width: 40px;height: 40px;">
							<i class="fa fa-user-circle-o text-white" aria-hidden="true" style="font-size: 160%;line-height: 40px"></i>
						</div>
						<div class="float-left">
							<p class="text-white mb-0">Ho Huu Vinh</p>
							<p class="text-white mb-0" style="font-size: 80%;opacity: 0.7">Administrator</p>
						</div>
						<div class="bg2 float-right text-center" style="width: 40px;height: 100%;">
							<i class="fa fa-power-off text-white" aria-hidden="true" style="font-size: 130%;line-height: 39px"></i>
						</div>
					</div>
				</div>
				<div class="col-6 p-1" style="height: 80px;">
					<div class="bg1 p-2" style="width: 100%;height: 100%;">
						<p class="text-white mb-0" style="opacity: 0.7">Analytics</p>
						<i class="fa fa-bar-chart text-white float-right" aria-hidden="true" style="font-size: 190%;opacity: 0.5"></i>
					</div>
				</div>
				<div class="col-6 p-1" style="height: 80px;">
					<div class="bg1 p-2" style="width: 100%;height: 100%;">
						<p class="text-white mb-0" style="opacity: 0.7">Product</p>
						<i class="fa fa fa-cutlery text-white float-right" aria-hidden="true" style="font-size: 190%;opacity: 0.5"></i>
					</div>
				</div>
				<div class="col-6 p-1" style="height: 80px;">
					<div class="bg1 p-2" style="width: 100%;height: 100%;">
						<p class="text-white mb-0" style="opacity: 0.7">Customer</p>
						<i class="fa fa fa-user-plus text-white float-right" aria-hidden="true" style="font-size: 190%;opacity: 0.5"></i>
					</div>
				</div>
				<div class="col-6 p-1" style="height: 80px;">
					<div class="bg1 p-2" style="width: 100%;height: 100%;">
						<p class="text-white mb-0" style="opacity: 0.7">System</p>
						<i class="fa fa-cogs text-white float-right" aria-hidden="true" style="font-size: 190%;opacity: 0.5"></i>
					</div>
				</div>
				<div class="col-6 p-1" style="height: 80px;">
					<div class="bg1 p-2" style="width: 100%;height: 100%;">
						<p class="text-white mb-0" style="opacity: 0.7">Account</p>
						<i class="fa fa fa fa-key text-white float-right" aria-hidden="true" style="font-size: 190%;opacity: 0.5"></i>
					</div>
				</div>
			</div>
		</div>
		<div class="p-0 bg1" style="height: 100vh;width: calc(100% - 320px)">

			<div class="p-3">
				<p class="float-left text-white font-weight-bold mb-0" style="font-size: 130%">Checkout</p>
				<a href="../../Home">
					<div id="back-button" class="btn bg-white float-right">Back</div>
				</a>
				<div style="clear: both;"></div>
			</div>


			<div class="px-2" style="width: 800px;height: 300px;margin: auto">
				<table id="get-html-table" class="table bg2 text-white">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Name</th>
							<th scope="col">Qty</th>
							<th scope="col">Price</th>
						</tr>
					</thead>
					<tbody>
						<?php
						$stt=1;
						while($row = mysqli_fetch_array($data["GetOrderCheckout"])){
							echo '<tr>
							<th scope="row">'.$stt++.'</th>
							<td>'.$row["name"].'</td>
							<td>'.$row["quanlity"].'</td>
							<td>'.$row["price"]*$row["quanlity"].'$</td>
							</tr>';
						}
						?>

					</tbody>
					<thead>
						<tr>
							<th scope="col">Fee</th>
							<th scope="col">Sale</th>
							<th scope="col">Voucher</th>
							<th scope="col">Total</th>
						</tr>
					</thead>
					<tbody>					
						<tr>
							<td id="fee"></td>
							<td id="sale"></td>
							<td id="voucher"></td>
							<td id="total"></td>
						</tr>
					</tbody>
				</table>

				<div style="width: 100%;height: 200px;">
					<div class="float-left bg2" style="width: 47%;height: 50px;display: flex;">
						<input id="received" class="pl-3" type="number" name="" style="width: 100%;height: 100%;background: none;border: 0;outline: none;color: white" placeholder="Received">
						<div class="text-center" style="width: 50px;height: 50px;">
							<i class="fa fa-money text-white" aria-hidden="true" style="line-height: 50px;font-size: 130%"></i>
						</div>
					</div>
					
					<div class="float-right bg2" style="width: 47%;height: 50px;display: flex;">
						<input id="return" class="pl-3" type="" name="" style="width: 100%;height: 100%;background: none;border: 0;outline: none;color: white" placeholder="Return" disabled>
						<div style="width: 50px;height: 50px;">

						</div>
					</div>
					
					<div style="clear: both;"></div>
					
					<div id="finish-button" style="display: none;">
						<div  onclick="FinishCheckout()" class="btn bg2 text-white mt-4 float-left" style="width: 78%;">Finish</div>
						<div  class="js-print-link btn bg2 text-white mt-4 float-right" style="width: 20%;"><i class="fa fa-print text-white" aria-hidden="true" style="font-size: 130%"></i>						
						</div>
					</div>								
				</div>
			</div>


		</div>
	</div>
</div>




<div id="print" class="mt-2 p-4 shadow-ok" style="width: 350px;height: 500px;display: none;">
	<p class="text-center">23-02-2020 Code Order #3</p>
	<p class="mb-0">PosSystem</p>
	<p class="mb-0">Phone: +84779943889</p>
	<p>Manage : HoHuuVinh</p>
	<p class="float-left mb-0 font-weight-bold mb-0" style="width: 50%">Name</p>
	<p class="float-left mb-0 font-weight-bold mb-0" style="width: 25%">Qty</p>
	<p class="float-left mb-0 font-weight-bold mb-0" style="width: 25%">
		<p class="float-right mb-0 font-weight-bold mb-0">Price</p>
	</p>
	<div style="clear: both;"></div>
	<div>
		<?php
		foreach ($data["GetOrderCheckout"] as $value) {
			echo '<p class="float-left mb-0" style="width: 50%">'.$value['name'].'</p><p class="float-left mb-0" style="width: 25%">'.$value['quanlity'].'</p><p class="float-left mb-0 bg-danger" style="width: 25%">
			<p class="float-right mb-0">'.$value['quanlity']*$value['price'].'$</p>
			</p>
			<div style="clear: both;"></div>';
		}
		?>

	</div>
	<p class="float-left mb-0 mt-3">Discount</p>
	<p id="discount-bill" class="float-right mb-0 mt-3">5$</p>
	<div style="clear: both;"></div>
	<p class="float-left mb-0">Fee</p>
	<p id="fee-bill" class="float-right mb-0">0</p>
	<div style="clear: both;"></div>
	<p class="float-left mb-0">Voucher</p>
	<p id="voucher-bill" class="float-right mb-0">0</p>
	<div style="clear: both;"></div>
	<p class="float-left mb-0 font-weight-bold" style="font-size: 130%">Total</p>
	<p id="total-bill" class="float-right mb-0 font-weight-bold" style="font-size: 130%">5đ</p>
	<div style="clear: both;"></div>

	<p  class="float-left mb-0 mt-3">Received</p>
	<p id="received-bill" class="float-right mb-0 mt-3"></p>
	<div style="clear: both;"></div>
	<p class="float-left mb-0">Return</p>
	<p id="return-bill" class="float-right mb-0"></p>
	<div style="clear: both;"></div>
</div>


<script type="text/javascript">
	$('.js-print-link').on('click', function () {
		$("#checkout-box").hide();

		$("#print").show();
		window.print();
		$("#checkout-box").show();
		$(".hidePrinf").show();
		$("#print").hide();
	});

	var fee1 =JSON.parse(localStorage.getItem('fee1'));
	var fee2 =JSON.parse(localStorage.getItem('fee2'));
	var sale =JSON.parse(localStorage.getItem('sale'));
	var voucher =JSON.parse(localStorage.getItem('voucher'));
	var total =JSON.parse(localStorage.getItem('total'));

	$("#fee").text(fee1+fee2+'%');
	$("#fee-bill").text(fee1+fee2+'%');
	$("#sale").text(sale+'%');
	$("#discount-bill").text(sale+'%');
	if(voucher == null){
		$("#voucher").text(0);
		$("#voucher-bill").text(0);
	}else{
		$("#voucher").text(voucher+'$');
		$("#voucher-bill").text(voucher+'$');
	}
	$("#total").text(total+'$');
	$("#total-bill").text(total+'$');
	$("#return").val(total+'$');



	$("#received").keyup(function(){
		var received = $("#received").val();
		$("#received-bill").text(received+'$');
		$("#return").val(total-received*1+'$');
		$("#return-bill").text(-1*(total-received*1)+'$');
		if(total-received*1 <= 0){
			$("#finish-button").show();

		}else{
			$("#finish-button").hide();
		}
	})

	function FinishCheckout(){
		var id =JSON.parse(localStorage.getItem('idTable'));
		$.ajax({
			url: '../../Table/ResetTable/'+id,
			type: 'get',
			dataType : 'json',
			success: function(data){
				console.log(data);
			}
		});
		var getHtmlTable = $("#get-html-table").html();
		$.post("../../Checkout/AddCheckout/",{content:getHtmlTable},function(data){	
			console.log(getHtmlTable);
		}) 

		window.location.href = "../../Home";
	}
</script>