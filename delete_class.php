<?php
include('connect.php');

$get_id=$_GET['id'];

mysqli_query($conn,"delete from classsched where classid='$get_id'")or die(mysqli_error());
header('location:forclass.php');
?>