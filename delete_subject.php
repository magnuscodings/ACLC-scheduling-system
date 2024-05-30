<?php
include('connect.php');

$get_id=$_GET['id'];

mysqli_query($conn,"delete from subject where subjectid='$get_id'")or die(mysqli_error());
header('location:forsubject.php');
?>
