<?php
class tbl_discount extends DB{
	public function GetDiscount(){
		$qr = "SELECT * FROM tbl_discount";
		return mysqli_query($this->con, $qr);
	}
}
?>