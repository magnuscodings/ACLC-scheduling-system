<?php
include('connect.php');


$get_id=$_GET['id'];

mysqli_query($conn,"update examsched  set status='checked' where department like '%CIT%'")or die(mysqli_error());

header('location:exam.php');

?>