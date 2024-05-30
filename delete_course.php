<?php
include('connect.php');

$get_id=$_GET['id'];

mysqli_query($conn,"delete from course where courseid='$get_id'")or die(mysqli_error());
header('location:forCYS.php');
?>
