<?php 
$dbh = new PDO("mysql:host=localhost;dbname=forpet", $forpet, $forpet); 

$sql = "SELECT `bookingNumber`, `title`, `start`, `end`, `description` 
     FROM tbl_booking_schedule"; 

$result = $dbh->query($sql)->fetchAll(PDO::FETCH_ASSOC); 
//To output as-is json data result 
//header('Content-type: application/json'); 
//echo json_encode($result); 

//Or if you need to edit/manipulate the result before output 
$return = []; 
foreach ($result as $row) { 
    $return[] = [ 
     'id' => $row['tbl_booking_schedule'], 
     'title' => $row['title'], 
     'start' => $row['start'],
     'end' => $row['end'] 
    ]; 
} 
$dbh = null; 