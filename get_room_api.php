<?php
//date_default_timezone_get('Asia/Bangkok');
include('connect.php');
$get_room=$_GET["room"];

//$dow= "Thu";
//$date_now =  "13:00:00";
$dow= date("D");
$date_now =  date("H:i:s");
$roomStatus_query = "SELECT * FROM room_status WHERE room_name='{$get_room}' AND room_day = '{$dow}' AND (room_begin_time <= '{$date_now}' AND room_end_time >= '{$date_now}' ) ";

$roomStatus = $mysqli->query($roomStatus_query);

$roomNum = $roomStatus->num_rows;
if($roomNum > 0){
while ($resultStatus = $roomStatus->fetch_object()){

	$json_arr =array('Room : '=>$resultStatus->room_name,
		"Class"=>$resultStatus->room_class,
		"Time"=>$resultStatus->room_begin_time." - ".$resultStatus->room_end_time,
		"Status"=>"Available");
	
	}
}else{
	$json_arr =array('Room'=>$get_room,'Status'=>"Available");
}
	$json_encode = json_encode($json_arr);

echo $json_encode;