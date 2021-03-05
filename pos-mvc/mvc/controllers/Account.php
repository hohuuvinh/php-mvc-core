<?php

// http://localhost/live/Home/Show/1/2

class Account extends Controller{
	function Index(){
		$GetModel= $this->model("tbl_theme");
		$GetTheme = $GetModel ->GetTheme();
		$this->view("master",["Page"=>"account","GetTheme"=>$GetTheme]);
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