<?php

// http://localhost/live/Home/Show/1/2

class Account extends Controller{
	function Index(){
		$this->view("master",["Page"=>"account"]);
	}

	function ChangePass(){
		$passwordOld = $_POST["passwordOld"];
		$passwordNew = $_POST["passwordNew"];
		$passwordRe = $_POST["passwordRe"];
		$GetModel= $this->model("tbl_account");
		$id=1;
		$CheckPass = $GetModel ->CheckPass($id,$passwordOld,$passwordRe,$passwordNew);	
		echo $CheckPass;
	}
}
?>