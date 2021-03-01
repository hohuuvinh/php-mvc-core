<div style="width: 100%;height: 160px">
	<p id="voucher-text" class="text-white float-left mb-1">Voucher</p>
	<input id="input-code" type="" name="" class="float-left" style="border:0;outline:none;display: none;">
	<div id="voucher-box" onclick="EnterCode()" class="float-right bg3 text-center text-white" style="width: 20px;height: 20px;font-size: 85%">
		<i id="add-button" class="fa fa-plus" aria-hidden="true"></i>
		<i id="submit-button" class="fa fa-check" aria-hidden="true" style="display: none;"></i>
	</div>
	<div id="voucher-ok" class="float-right text-center text-white" style="display: none;">
		<p id="text-number" class="mb-0 float-left"></p>
		<p id="icon-money" class="mb-0 float-left">$</p>
	</div>
	<div style="clear: both;"></div>
	<?php
	while($row = mysqli_fetch_array($data["discount"])){
		echo '<p class="text-white float-left mb-1">'.$row["name"].'</p>
		<p class="text-white float-right mb-1">%</p>
		<p id="discount-text" class="text-white float-right mb-1">'.$row["number"].'</p>
		<div style="clear: both;"></div>';
		
	}
	?>
	
	<?php
	while($row = mysqli_fetch_array($data["fee"])){
		echo '<p class="text-white float-left mb-1">'.$row["name"].'</p>
		<p class="text-white float-right mb-1">%</p>
		<p id="'.$row["name"].'-text" class="text-white float-right mb-1">'.$row["number"].'</p>
		<div style="clear: both;"></div>';
		
	}
	?>
	
	<p class="text-white float-left mb-1" style="font-size: 130%">Total</p>
	<p id="total-text" class="text-white float-right mb-1" style="font-size: 130%"></p>
	<div style="clear: both;"></div>
	<div class="btn bg-white" style="width: 100%;border-radius: 0;">Checkout</div>
</div>

