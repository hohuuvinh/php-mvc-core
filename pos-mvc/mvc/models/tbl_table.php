<?php
class tbl_table extends DB{
	public function GetTable(){
		$qr = "SELECT * FROM tbl_table";
		return mysqli_query($this->con, $qr);
	}
	
}
?>