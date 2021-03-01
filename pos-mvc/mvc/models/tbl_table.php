<?php
class tbl_table extends DB{
	public function GetTable(){
		$qr = "SELECT * FROM tbl_table";
		$result = mysqli_query($this->con, $qr);
		$TableArr = array();
		while ( $row = mysqli_fetch_assoc($result) ) {
			$TableArr[] = $row;
		}
		echo json_encode($TableArr);
	}

	public function CheckTable($idtable){
		$qr = "SELECT * FROM tbl_order WHERE tbl_order.idtable = '$idtable'";
		$rows = mysqli_query($this->con, $qr);
		$count=0;
		if(mysqli_num_rows($rows)>0){
			$count=1;
			$qr1 = "UPDATE tbl_table SET tbl_table.status=3 WHERE tbl_table.id='$idtable'";
			mysqli_query($this->con, $qr1);
		}else if(mysqli_num_rows($rows)==0){
			$qr2 = "UPDATE tbl_table SET tbl_table.status=1 WHERE tbl_table.id='$idtable'";
			mysqli_query($this->con, $qr2);
			$count=2;
		}
		return $count;
	}
	
}
?>