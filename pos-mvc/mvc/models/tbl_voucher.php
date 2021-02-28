<?php
class tbl_voucher extends DB{
	public function GetVoucher($code){
		$qr = "SELECT * FROM tbl_voucher WHERE tbl_voucher.code = '$code'";
		$result = mysqli_query($this->con, $qr);
		$Voucher = array();
		while ( $row = mysqli_fetch_assoc($result) ) {
			$Voucher[] = $row;
		}
		echo json_encode($Voucher);
	}
}
?>