<?php
include('connect.php');

$get_id=$_GET['id'];

mysqli_query($conn,"delete from users where userid='$get_id'")or die(mysqli_error());
header('location:user_account.php');
?>
