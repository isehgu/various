<?php
	require_once "base_function.php";
	f_dbConnect();
	$id = $_GET['id'];
	$action = $_GET['action'];
	
	if($action == 'complete') f_taskComplete($id);
	elseif($action == 'reopen') f_taskReopen($id);
	else	f_taskDelete($id);
	
	header("Location: index.php");
?>