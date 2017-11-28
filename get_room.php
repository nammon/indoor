<?php
//date_default_timezone_get('Asia/Bangkok');
include('connect.php');

$get_room=$_GET["room"];

$room_query = "SELECT * FROM room_status";
$room = $mysqli->query($room_query);
while ($result = $room->fetch_object()){

	echo $result->room_name ." ". $result->room_class." ". $result->room_begin_time."-". $result->room_end_time."<BR>";
}


//$dow= "Thu";
//$date_now =  "13:00:00";
$dow= date("D");
$date_now =  date("H:i:s");
$roomStatus_query = "SELECT * FROM room_status WHERE room_name='{$get_room}' AND room_day = '{$dow}' AND (room_begin_time <= '{$date_now}' AND room_end_time >= '{$date_now}' ) ";
echo "<br>----<br>";
$roomStatus = $mysqli->query($roomStatus_query);
while ($resultStatus = $roomStatus->fetch_object()){

	echo $resultStatus->room_name ." ". $resultStatus->room_class." ". $resultStatus->room_begin_time."-". $resultStatus->room_end_time."<BR>";
}

echo "<br>----<br>";
echo date("H:i:s");