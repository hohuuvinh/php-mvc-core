<?php

// http://localhost/live/Home/Show/1/2

class Voucher extends Controller{
	function GetVoucher($code){
		$GetModel= $this->model("tbl_voucher");
		$GetVoucher = $GetModel ->GetVoucher($code);
		echo $GetVoucher;
	}

}
?>