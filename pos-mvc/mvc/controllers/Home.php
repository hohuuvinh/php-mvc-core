<?php

// http://localhost/live/Home/Show/1/2

class Home extends Controller{
	function Home(){
		$GetModel= $this->model("tbl_table");
		$GetTable = $GetModel ->GetTable();

		$GetFee= $this->model("tbl_fee");
		$GetFee = $GetFee ->GetFee();
		$GetDiscount= $this->model("tbl_discount");
		$GetDiscount = $GetDiscount ->GetDiscount();

		$this->view("master",["Page"=>"home","table"=>$GetTable,"fee"=>$GetFee,"discount"=>$GetDiscount]);
	}
}
?>