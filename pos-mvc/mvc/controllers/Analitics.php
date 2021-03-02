<?php

// http://localhost/live/Home/Show/1/2

class Analitics extends Controller{
	function Index($type){
		$GetAnaliticsModel= $this->model("tbl_payment");
		$GetAnalitics = $GetAnaliticsModel ->GetAnalitics($type);

		$this->view("master",["Page"=>"analitics","GetAnalitics"=>$GetAnalitics]);
	}
}
?>