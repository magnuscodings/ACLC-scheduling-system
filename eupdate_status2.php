<?php
include('connect.php');


$get_id=$_GET['id'];

mysqli_query($conn,"update examsched  set status='checked' where department like '%SAS%'")or die(mysqli_error());

header('location:sasexam.php');

?>