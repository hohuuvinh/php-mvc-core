<?php

class Checkout extends Controller{
	function Index($idtable){
		$GetOrderCheckoutModel= $this->model("tbl_order");
		$GetOrderCheckout = $GetOrderCheckoutModel ->GetOrderCheckout($idtable);

		$GetFee= $this->model("tbl_fee");
		$GetFee = $GetFee ->GetFee();
		$GetDiscount= $this->model("tbl_discount");
		$GetDiscount = $GetDiscount ->GetDiscount();
		$this->view("master",["Page"=>"checkout","fee"=>$GetFee,"discount"=>$GetDiscount,"GetOrderCheckout"=>$GetOrderCheckout]);
	}

	function AddCheckout(){
		$content = $_POST["content"];
		$GetModel= $this->model("tbl_payment");
		$AddPayment = $GetModel->AddPayment($content);	

	}
}
?>