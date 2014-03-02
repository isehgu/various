<?php
  require_once "base_function.php";
  f_dbConnect();
  $suites = $_GET['suites'];
  $tests = $_GET['tests'];
	$label = $_GET['label'];
  
  if(count($suites)<=0 && count($tests)<=0)//when no suites nor tests are chosen
  {
    header('Location: index.php');//nothing requested, just go back to index
    //echo "nothing is chosen";
  }
  elseif(count($tests)<=0) //No Tests
  {
    $test_from_suites = f_suitesToTests($suites);//Converts suites to an array of test IDs
    $complete_tests = array_unique($test_from_suites);
  }
  elseif(count($suites)<=0) //No suites
  {
    $complete_tests = array_unique($tests);
  }
  else //both tests and suites are chosen
  {
    $test_from_suites = f_suitesToTests($suites);//Converts suites to an array of test IDs
    $complete_tests = array_unique(array_merge($tests,$test_from_suites));
  }
    
  
  $host = "172.21.5.121";
	$port = "42448";
	
  $temp_test = array();
  $message = array();
	$message['header'][] = array('type'=>'test request','label'=>$label);
  foreach($complete_tests as $test)
  {
    $temp_test['test_id'] = $test;
    $message['body'][] = $temp_test;
    $temp_test = array();
    
  }
  
  $send_msg = json_encode($message);
	
	echo $send_msg;
	/*
	$socket = socket_create(AF_INET,SOCK_STREAM,0) or die("Could not create socket\n");
	$result = socket_connect($socket,$host,$port) or die("Could not connect to T.A.C Server\n");
  
  
  socket_write($socket,$send_msg,strlen($send_msg)) or die("Could not send json data to T.A.C Server\n");
	
	$result = socket_read($socket,1024) or die("Could not read from T.A.C Server\n");
	
	socket_close($socket);
  if($result == 'ok'){header('Location: index.php');}
  else {echo "Test Request unsuccessful: $result";}
	*/
  /*
  foreach($complete_tests as $test)
  {
    echo $test."<br>";
  }
  */
?>