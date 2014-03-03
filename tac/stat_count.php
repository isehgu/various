<?php
  require_once "base_function.php";
  f_dbConnect();
  
  $type = $_GET['type'];
  
  echo f_statCount($type);

?>