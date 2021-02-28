<?php

// http://localhost/live/Home/Show/1/2

class Product extends Controller{
	function GetProduct($type){
		$GetModel= $this->model("tbl_product");
		$GetProduct = $GetModel ->GetProduct($type);
		echo $GetProduct;
	}

}
?>