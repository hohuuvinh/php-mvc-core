<style type="text/css">
	.table-box:hover{
		background: #292b37;
	}
</style>

<?php
while($row = mysqli_fetch_array($data["table"])){
	if($row["type"] == 1){
		if($row["status"] == 1){
			echo '<div class=" p-1 float-left" onclick="GetTable('.$row["id"].')">
			<div class="table-box bg2 text-center" style="width: 100px;height: 100px;">
			<p class="text-white mb-0" style="font-size: 360%;">'.$row["number"].'</p>
			<i class="fa fa-circle mr-2 dot-success float-right" aria-hidden="true" style="font-size: 75%;margin-top: -4px"></i>
			</div>
			</div>';
		}else if($row["status"] == 2){
			echo '<div class=" p-1 float-left" onclick="GetTable('.$row["id"].')">
			<div class="table-box bg2 text-center" style="width: 100px;height: 100px;">
			<p class="text-white mb-0" style="font-size: 360%;">'.$row["number"].'</p>
			<i class="fa fa-circle mr-2 dot-pending float-right" aria-hidden="true" style="font-size: 75%;margin-top: -4px"></i>
			</div>
			</div>';
		}else{
			echo '<div class=" p-1 float-left" onclick="GetTable('.$row["id"].')">
			<div class="table-box bg2 text-center" style="width: 100px;height: 100px;">
			<p class="text-white mb-0" style="font-size: 360%;">'.$row["number"].'</p>
			<i class="fa fa-circle mr-2 dot-danger float-right" aria-hidden="true" style="font-size: 75%;margin-top: -4px"></i>
			</div>
			</div>';
		}
		
	}else if($row["type"] == 2){
		if($row["status"] == 1){
			echo '<div class=" p-1 float-left" onclick="GetTable('.$row["id"].')">
			<div class="table-box bg2 text-center" style="width: 200px;height: 100px;">
			<p class="text-white mb-0" style="font-size: 360%;">'.$row["number"].'</p>
			<i class="fa fa-circle mr-2 dot-success float-right" aria-hidden="true" style="font-size: 75%;margin-top: -4px"></i>
			</div>
			</div>';
		}else if($row["status"] == 2){
			echo '<div class=" p-1 float-left" onclick="GetTable('.$row["id"].')">
			<div class="table-box bg2 text-center" style="width: 200px;height: 100px;">
			<p class="text-white mb-0" style="font-size: 360%;">'.$row["number"].'</p>
			<i class="fa fa-circle mr-2 dot-pending float-right" aria-hidden="true" style="font-size: 75%;margin-top: -4px"></i>
			</div>
			</div>';
		}else{
			echo '<div class=" p-1 float-left" onclick="GetTable('.$row["id"].')">
			<div class="table-box bg2 text-center" style="width: 200px;height: 100px;">
			<p class="text-white mb-0" style="font-size: 360%;">'.$row["number"].'</p>
			<i class="fa fa-circle mr-2 dot-danger float-right" aria-hidden="true" style="font-size: 75%;margin-top: -4px"></i>
			</div>
			</div>';
		}
	}
	
}
?>





