<?php
class tbl_product extends DB{
	public function GetProduct($type){
		if($type == '0'){
			$qr = "SELECT * FROM tbl_product ORDER BY id DESC";
		}else if($type == '1'){
			$qr = "SELECT * FROM tbl_product WHERE tbl_product.type=1 ORDER BY id DESC";
		}else if($type == '2'){
			$qr = "SELECT * FROM tbl_product WHERE tbl_product.type=2 ORDER BY id DESC";
		}else{
			$qr = "SELECT * FROM tbl_product WHERE tbl_product.name LIKE '%$type%'";
		}
		
		$result = mysqli_query($this->con, $qr);
		$ProductArr = array();
		while ( $row = mysqli_fetch_assoc($result) ) {
			$ProductArr[] = $row;
		}
		echo json_encode($ProductArr);
	}
	
}
?>