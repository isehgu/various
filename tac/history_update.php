<?php
  require_once "base_function.php";
  f_dbConnect();
  
  $rid = $_GET['rid'];
  
  echo f_historyRow($rid); //return the history table row html for that rid
  
?>

