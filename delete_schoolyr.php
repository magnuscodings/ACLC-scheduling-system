<?php
include 'connect.php';
$qry = mysqli_query($conn,"DELETE FROM sy where syid=".$_GET['id']);
header('location:'.$_SERVER['HTTP_REFERER']);
?>