<?php

// http://localhost/live/Home/Show/1/2

class Table extends Controller{
	function GetTable(){
		$GetModel= $this->model("tbl_table");
		$GetTable = $GetModel ->GetTable();
		echo $GetTable;
	}

	function CheckTable($idtable){
		$GetModel= $this->model("tbl_table");
		$CheckTable = $GetModel ->CheckTable($idtable);
		echo $CheckTable;
	}

}
?>