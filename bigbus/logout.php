<?php 
session_start();
session_destroy();
	// header('location:admin.php');cindex.php?msg="logout"');
	// session_exit();

	// if(isset($_SERVER['HTTP_REFERER'])) {
	// 	header('Location: '.$_SERVER['HTTP_REFERER']);  
	//    } else {
	// 	header('location:cindex.php');
	// // session_exit(); 

	header('location:admin.php');
?>
	   
	  