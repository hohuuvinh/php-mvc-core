<?php
class tbl_payment extends DB{
	public function AddPayment($content){
		$qr = "INSERT INTO tbl_payment (content,idadmin)
		VALUES ('$content','1')";
		return mysqli_query($this->con, $qr);
	}

	
}
?>