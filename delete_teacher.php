<?php
include('connect.php');

$get_id=$_GET['id'];

mysqli_query($conn,"delete from teachers where teachid='$get_id'")or die(mysqli_error());
header('location:forteacher.php');
?>
