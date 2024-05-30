<?php
include('connect.php');

$get_id=$_GET['id'];

mysqli_query($conn,"delete from room where roomid='$get_id'")or die(mysqli_error());
header('location:forroom.php');
?>
