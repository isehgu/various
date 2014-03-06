<?php
  require_once "base_function.php";
  f_dbConnect();
  $rid = $_GET['rid'];
  $report = f_getReport($rid);
  echo file_get_contents($report);

?>