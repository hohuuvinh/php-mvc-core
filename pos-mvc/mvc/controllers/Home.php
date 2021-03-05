<?php

// http://localhost/live/Home/Show/1/2

class Home extends Controller{
	function Home(){
		$GetModel= $this->model("tbl_theme");
		$GetTheme = $GetModel ->GetTheme();

		$GetFee= $this->model("tbl_fee");
		$GetFee = $GetFee ->GetFee();
		$GetDiscount= $this->model("tbl_discount");
		$GetDiscount = $GetDiscount ->GetDiscount();
		$this->view("master",["Page"=>"home","fee"=>$GetFee,"discount"=>$GetDiscount,"GetTheme"=>$GetTheme]);
	}
}
?>