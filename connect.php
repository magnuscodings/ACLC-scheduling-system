<?php
$conn =  mysqli_connect('localhost','root','','db_con') ;
if(!$conn)
	echo mysqli_error($conn).': Can\'t connect to the database';



?>
