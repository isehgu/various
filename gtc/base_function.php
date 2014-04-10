<?php
	function f_dbConnect()
	{
		global $db;
		$dbhost = 'localhost';
		$dbuser = 'root';
		$dbpwd  = '';
		$dbname = 'tac_db';
		
		$db = new mysqli($dbhost,$dbuser,$dbpwd,$dbname);
		if(!$db) echo 'Connection failed: '.$db->connect_error; //if condition here can also be -- if !$mysqli
		
	}
	
	//$checkout -- 6pm,10pm,2am,3am,or 4am
	//Display the wrapper section for each checkout. Echoing out html.
	//wrapper sections that are NOT the latest MUST have class -- wrapper_hide
	//wrapper sections with discrepancies found MUST have class -- wrapper_discrepancy
	function f_displayWrapper($checkout)
	{
		switch($checkout)
		{
			case '6pm':
				$wrapper_id = "wrapper_".$checkout;
				if(f_hasDiscrepancy($checkout)) $wrapper_discrepancy = 'wrapper_discrepancy';
				break;
			case '10pm':
				$wrapper_id = "wrapper_".$checkout;
				if(f_hasDiscrepancy($checkout)) $wrapper_discrepancy = 'wrapper_discrepancy';
				break;
			case '2am':
				$wrapper_id = "wrapper_".$checkout;
				if(f_hasDiscrepancy($checkout)) $wrapper_discrepancy = 'wrapper_discrepancy';
				break;
			case "3am":
				$wrapper_id = "wrapper_".$checkout;
				if(f_hasDiscrepancy($checkout)) $wrapper_discrepancy = 'wrapper_discrepancy';
				break;
			case "4am":
				$wrapper_id = "wrapper_".$checkout;
				if(f_hasDiscrepancy($checkout)) $wrapper_discrepancy = 'wrapper_discrepancy';
				break;
			default:
				echo "Invalid checkout time";
				return;
		}//end of switch
		
		echo "
			<div class='wrapper text-center $wrapper_discrepancy' id='$wrapper_id'>
					<div class='row'>
						<div class='col-md-3'> </div>
						<div class='col-md-5'>
							<h2 class='sub-header checkout_header'>3AM Check</h2>
						</div>
						<div class='col-md-4'>
							<input type='text' class='form-control' placeholder='Search Text'>
						</div>
					</div>
		";
					f_displayResults($checkout,'summary');
					f_displayResults($checkout,'detail');
					
		echo"</div>";
	}
	//End of f_displayWrapper()
	
	//$checkout -- 6pm,10pm,2am,3am,or 4am
	//$display_type -- summary, or detail
	//Display summary and detail discrepancy tables for each checkout time
	//Actual html code is echoed out
	/*
				<table id='3am_summary' class='table table-hover'>
						<thead>
							<tr>
								<th>Week Of</th>
								<th>Decrease in Email</th>
								<th>Decrease in Lync</th>
								<th>Decrease in Call</th>
								<th>Decrease in Conversation</th>
							</tr>
						</thead>
						<tbody>
							...
						</tbody>
					</table>
					<table id='3am_detail' class='table table-hover'>
						<thead>
							<tr>
								<th>Week Of</th>
								<th>Decrease in Email</th>
								<th>Decrease in Lync</th>
								<th>Decrease in Call</th>
								<th>Decrease in Conversation</th>
							</tr>
						</thead>
						<tbody>
							...
						</tbody>
					</table>
	*/
	
	function f_displayResults($checkout,$display_type)
	{
		if($display_type == 'summary') $table_id = $checkout."_summary";
		else $table_id = $checkout."_detail";
		$detail_header = array();
		 
		switch($checkout)
		{
			case "6pm":
				//code
				//$sql_query = "";
				//Getting sql results
				$summary_header = array();
				break;
			case "10pm":
				//code
				break;
			case "2am":
				//code
				break;
			case "3am":
				//code
				break;
			case "4am":
				//code
				break;
			default:
				echo "Invalid checkout time";
				return;
		}//end of switch
	}
	//End of f_displayResults()
	
	//$checkout -- 6pm,10pm,2am,3am,or 4am
	//Take the checkout time, and return true or false
	//True -- has discrepancy, False -- no discrepancy
	function f_hasDiscrepancy($checkout)
	{
		
	}
	//End of f_hasDiscrepancy()
	
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////
	
	//User authentication
	function f_userAuthen($user)
	{
		global $db;
		$sql_query = "select * from user where user_name = '$user'";
		$result = $db->query($sql_query) or die($db->error);
		if(($result->num_rows) > 0) return true;
		
		return false;
	}
  //Input:  type can have two values: test=display test table, suite=display suite table
  //Output: JSON encode array of dictionaries containing name and description
	
	function f_tableDisplay($type)
  {
		global $db;
    $output_array = array();
    $temp_dict = array();
    if($type == 'test')
    {
      $sql_query = "select test_id as id,test_name as name,description from test_case order by test_name";
    }
    else
    {
      $sql_query = "select suite_id as id,suite_name as name,description from test_suite order by suite_name";
    }
    $result = $db->query($sql_query) or die($db->error);
    while($row = $result->fetch_assoc())
		{
			$id = '';
      $name = ''; //resetting name
      $description = ''; //resettting description
			$id = $row['id'];
      $name = $row['name'];
      $description = $row['description'];

			if($type == 'test')
			{
				echo "<tr><td><input type='checkbox' name='tests[]' value='$id'>
              $name</td>
              <td>$description</td></tr>";
			}
			else //it's a suite
			{
				echo "<tr><td><input type='checkbox' name='suites[]' value='$id'>
              $name</td>
              <td>$description</td></tr>";
			}
    } //end of while
    

  } //End of f_tableDisplay
	
 /* function f_tableDisplay($type)
  {
		global $db;
    $output_array = array();
    $temp_dict = array();
    if($type == 'test')
    {
      $sql_query = "select test_id as id,test_name as name,description from test_case order by test_name";
    }
    else
    {
      $sql_query = "select suite_id as id,suite_name as name,description from test_suite order by suite_name";
    }
    $result = $db->query($sql_query) or die($db->error);
    while($row = $result->fetch_assoc())
		{
			$id = '';
      $name = ''; //resetting name
      $description = ''; //resettting description
			$id = $row['id'];
      $name = $row['name'];
      $description = $row['description'];
			$temp_dict['id'] = $id;
      $temp_dict['name'] = $name;
      $temp_dict['description'] = $description;
      $output_array[] = $temp_dict; //adding new test case/suite to output array
      $temp_dict = array(); //resetting $temp_dict
    } //end of while
    
    //At this point, $output_array should have all the name/description dictionaries
    //json encode that and return it
    return json_encode($output_array);
  } //End of f_tableDisplay
 */
	//Input: an array of suite IDs
	//Output: an array of test IDs that associate with the provide suite IDs
	function f_suitesToTests($suites)
	{
		global $db;
		$output_array = array();
		$suites_string = implode(",",$suites); //created a string of suite IDs, comma delimited for sql query
		$sql_query = "select test_id from test_relation where suite_id in ($suites_string)";
		$result = $db->query($sql_query) or die($db->error);
    while($row = $result->fetch_assoc())
		{
			$test_id = '';
			$test_id = $row['test_id'];
			$output_array[] = $test_id;
		}
		return $output_array;
	}//End of f_suitesToTests
	

	//Input:	none
	//Output:	echo out the html needed to display a table of tests that are in progress.
	//				These fields are displayed -- RequestID,Label,TestName,ProcessID,StartTime
	function f_tableProgress()
	{
		global $db;
		$sql_query = "select tc.avg_duration, tr.user_id,tr.test_id,tr.request_id,tr.process_id,tr.label,tc.test_name,tr.start_timestamp
								from test_request as tr,test_case as tc where tr.status = 1 and tr.test_id = tc.test_id order by tr.request_id";
		$result = $db->query($sql_query) or die($db->error);
    while($row = $result->fetch_assoc())
		{
			$rid='';
			$label='';
			$name='';
			$pid='';
			$stime='';
			$uid='';
			$user_name='';
			$duration='';
			
			$test_id='';
			$env='';
			
			$rid = $row['request_id'];
			$label = $row['label'];
			$name = $row['test_name'];
			$pid = $row['process_id'];
			$stime = $row['start_timestamp'];
			$uid = $row['user_id'];
			$user_name = f_getUserFromId($uid);
			$duration = $row['avg_duration'];
			
			$test_id = $row['test_id'];
			$env = f_getEnv($test_id);
			
			echo "<tr id='p_$rid'>
							<td>$env</td>
							<td><a title='Kill' id='$rid' href='test_action.php?action=kill&rid=$rid' class='btn btn-danger btn-xs test_kill_btn'><span class='glyphicon glyphicon-remove'></span></a></td>
							<td>$rid</td>
							<td>$label</td>
							<td>$name</td>
							<td>$pid</td>
							<td>$stime</td>
							<td>$user_name</td>
							<td>$duration</td>
						</tr>";
		}//End of while
	}//End of f_tableProgress
	
	//Input:	none
	//Output:	echo out the html needed to display a table of tests that are in queue.
	//				These fields are displayed -- RequestID,Label,TestName,RequestTime
	function f_tableQueue()
	{
		global $db;
		$sql_query = "select tc.avg_duration,tr.user_id, tr.test_id, tr.request_id,tr.label,tc.test_name,tr.request_timestamp
								from test_request as tr,test_case as tc where tr.status = 0 and tr.test_id = tc.test_id order by tr.request_id";
		$result = $db->query($sql_query) or die($db->error);
    while($row = $result->fetch_assoc())
		{
			$rid='';
			$label='';
			$name='';
			$rtime='';
			$uid='';
			$user_name='';
			$duration='';
			
			$test_id='';
			$env='';
			
			$rid = $row['request_id'];
			$label = $row['label'];
			$name = $row['test_name'];
			$rtime = $row['request_timestamp'];
			$uid = $row['user_id'];
			$user_name = f_getUserFromId($uid);
			$duration = $row['avg_duration'];
			
			$test_id = $row['test_id'];
			$env = f_getEnv($test_id);
			
			echo "<tr id='q_$rid'>
							<td>$env</td>
							<td><a title='Cancel' id='$rid' href='test_action.php?action=cancel&rid=$rid' class='btn btn-warning btn-xs test_cancel_btn'><span class='glyphicon glyphicon-remove'></span></a></td>
							<td>$rid</td>
							<td>$label</td>
							<td>$name</td>
							<td>$rtime</td>
							<td>$user_name</td>
							<td>$duration</td>
						</tr>";
		}//End of while
	}//End of f_tableQueue
	
	//Input:	none
	//Output:	echo out the html needed to display a table of test history, those not in queue, or in progress.
	//				These fields are displayed -- RequestID,Label,TestName,Status,RequestTime,StartTime,EndTime,Report
	function f_tableHistory()
	{
		global $db;
		$stat_array = array(2=>'Completed-pass',3=>'Completed-fail',4=>'Killed',5=>'Sys Error',6=>'Cancelled');
		$sql_query = "select tr.test_id,tr.request_id,tr.label,tc.test_name,tr.status,tr.request_timestamp,tr.start_timestamp,tr.end_timestamp,tr.report
								from test_request as tr,test_case as tc where tr.status not in (0,1) and tr.test_id = tc.test_id order by tr.end_timestamp desc";
		$result = $db->query($sql_query) or die($db->error);
    while($row = $result->fetch_assoc())
		{
			$rid='';
			$label='';
			$name='';
			$rtime='';
			$stime='';
			$etime='';
			$status='';
			$report='';
			
			$test_id='';
			$env='';
			
			$color_class = '';
			
			$rid = $row['request_id'];
			$label = $row['label'];
			$name = $row['test_name'];
			$status = $row['status'];
			$rtime = $row['request_timestamp'];
			$stime = $row['start_timestamp'];
			$etime = $row['end_timestamp'];
			$report = $row['report'];
			
			if($status == 2) $color_class = 'bg-success';
			elseif ($status == 3) $color_class = 'bg-danger';
			elseif ($status == 5) $color_class = 'bg-warning';
			else $color_class = 'bg-info';
			
			$test_id = $row['test_id'];
			$env = f_getEnv($test_id);
			echo "<tr>
							<td>$env</td>
							<td>$rid</td>
							<td>$label</td>
							<td>$name</td>
							<td class='$color_class'>$stat_array[$status]</td>
							<td>$rtime</td>
							<td>$stime</td>
							<td>$etime</td>
			";
			if(!$report || $report == 'None')
			{
				echo "<td>$report</td>";
			}
			else
			{
				$report = 'http://asg.ise.com/reports/' . $report;
				echo "
					<td><a href='$report' target='_blank'>Link to Report</a></td>
					</tr>
				";
			}
		}//End of while
	}//End of f_tableHistory
	
	//Input:	none
	//Output:	echo out the html needed to display a table of env, and a button to either lock or unlock it base on env_status
	function f_tableEnv()
	{
		global $db;

		$sql_query = "select * from test_env order by env_name";
		$result = $db->query($sql_query) or die($db->error);
    while($row = $result->fetch_assoc())
		{
			$name='';
			$eid='';
			$status='';
			$uid='';
			$user='';

			$eid = $row['env_id'];
			$name = $row['env_name'];
			$status = $row['status'];
			$reason = $row['reason'];
			$uid = $row['user_id'];
			$user = f_getUserFromId($uid);
			
			if($status == 0) $action_button = "<a id='$eid' href='env_action.php?eid=$eid&action=lock' class='btn btn-danger btn-xs env_lock_btn'>Lock it</a>";
			else $action_button = "<a id='$eid' href='env_action.php?eid=$eid&action=unlock' class='btn btn-success btn-xs env_unlock_btn'>Unlock it</a>";
			echo "<tr>
							<td>$action_button</td>
							<td>$name</td>
							<td class='e_$eid' id='lock_reason_display_$eid'>$reason</td>
							<td class='e_$eid' id='lock_user_display_$eid'>$user</td>
						</tr>";
		}//End of while
	}//End of f_tableEnv
	
	function f_statCount($type)
	{
		global $db;
		if($type == 'progress')
		{
			$sql_query = "select count(*)	as count from test_request as tr where tr.status = 1";
		}
		elseif($type == 'queue') $sql_query = "select count(*)	as count from test_request as tr where tr.status = 0";
		elseif($type == 'history') $sql_query = "select count(*)	as count from test_request as tr where tr.status not in (0,1)";
		elseif($type == 'test') $sql_query = "select count(*) as count from test_case";
		else $sql_query = "select count(*) as count from test_env where status = 0";
		$result = $db->query($sql_query) or die($db->error);
		$row = $result->fetch_assoc();
		//$count = $row['count'];
		return $row['count']; 
	}//End of f_statCount
	
	//return a table row on that rid. This row will be inserted into history table via ajax
	function f_historyRow($rid)
	{
		global $db;
		$stat_array = array(2=>'Completed-pass',3=>'Completed-fail',4=>'Killed',5=>'Sys Error',6=>'Cancelled');
		$sql_query = "select tr.test_id,tr.request_id,tr.label,tc.test_name,tr.status,tr.request_timestamp,tr.start_timestamp,tr.end_timestamp,tr.report
								from test_request as tr,test_case as tc where request_id = $rid";
		$result = $db->query($sql_query) or die($db->error);
		$row = $result->fetch_assoc();
		$rid='';
		$label='';
		$name='';
		$rtime='';
		$stime='';
		$etime='';
		$status='';
		$report='';
		
		$test_id='';
		$env='';
		
		$color_class = '';
		
		$rid = $row['request_id'];
		$label = $row['label'];
		$name = $row['test_name'];
		$status = $row['status'];
		$rtime = $row['request_timestamp'];
		$stime = $row['start_timestamp'];
		$etime = $row['end_timestamp'];
		$report = $row['report'];
		
		$test_id = $row['test_id'];
		$env = f_getEnv($test_id);
		
		if($status == 2) $color_class = 'bg-success';
		elseif ($status == 3) $color_class = 'bg-danger';
		elseif ($status == 5) $color_class = 'bg-warning';
		else $color_class = 'bg-info';
		
		$output = "<tr>
						<td>$env</td>
						<td>$rid</td>
						<td>$label</td>
						<td>$name</td>
						<td class='$color_class'>$stat_array[$status]</td>
						<td>$rtime</td>
						<td>$stime</td>
						<td>$etime</td>
						";
			if(!$report || $report == 'None')
			{
				 $output .= "<td>$report</td>";
			}
			else
			{
				$report = 'http://asg.ise.com/reports/' . $report;
				$output .= "
					<td><a href='$report' target='_blank'>Link to Report</a></td>
					</tr>
				";
			}
		return $output;
	}//end of f_history
	
	//Get report path using rid
	function f_getReport($rid)
	{
		global $db;
		$sql_query = "select report from test_request where request_id = $rid";
		$result = $db->query($sql_query) or die($db->error);
		$row = $result->fetch_assoc();
		
		return $row['report'];
	}
	
	//Get related env on a test_id
	function f_getEnv($test_id)
	{
		global	$db;
		$output = '';
		$sql_query = "select te.env_name as name from env_relation as er,test_env as te where er.test_id = $test_id and er.env_id = te.env_id";
		//echo $sql_query;
		$result = $db->query($sql_query) or die($db->error);
		while($row = $result->fetch_assoc())
		{
			$env = '';
			$env = $row['name'];
			$output = $env . ' ';
		}
		return $output;
	}
	
	//Get user name from user id
	function f_getUserFromId($uid)
	{
		global $db;
		$sql_query = "select user_name as name from user where user_id = $uid limit 1";
		$result = $db->query($sql_query) or die($db->error);
		$row = $result->fetch_assoc();
		return $row['name'];
	}
	
	//Get user id from user name
	function f_getIdfromUser($name)
	{
		global $db;
		$sql_query = "select user_id from user where user_name = '$name' limit 1";
		$result = $db->query($sql_query) or die($db->error);
		$row = $result->fetch_assoc();
		return $row['user_id'];
	}
	
	//Get total number of emails saved
	function f_totalEmails()
	{
		global $db;
		$sql_query = "select email_count_multiplier as e_count,num_tests_executed as t_count from stats_for_web order by id desc limit 1";
		$result = $db->query($sql_query) or die($db->error);
		$row = $result->fetch_assoc();
		$email_multipler = $row['e_count']; //email count on per test basis
		$total_test = $row['t_count'];
		
		//total number of email is total_test * email_multipler
		return round($total_test * $email_multipler);
	}
	
	//Get total number of emails saved
	function f_totalLync()
	{
		global $db;
		$sql_query = "select lync_count_multiplier as l_count,num_tests_executed as t_count from stats_for_web order by id desc limit 1";
		$result = $db->query($sql_query) or die($db->error);
		$row = $result->fetch_assoc();
		$lync_multipler = $row['l_count']; //email count on per test basis
		$total_test = $row['t_count'];
		
		//total number of lync is total_test * lync_multipler
		return round($total_test * $lync_multipler);
	}
	
	//Get total minutes saved
	function f_totalMinute()
	{
		global $db;
		$sql_query = "select num_tests_executed as t_count, email_time_multiplier as e_time, lync_time_multiplier as l_time from stats_for_web order by id desc limit 1";
		$result = $db->query($sql_query) or die($db->error);
		$row = $result->fetch_assoc();
		$total_test = $row['t_count'];
		$avg_email_time = $row['e_time'];
		$avg_lync_time = $row['l_time'];
		
		//total minutes saved
		return ($total_test*$avg_email_time + $total_test*$avg_lync_time);
	}
	
	//Get total number of tests run
	function f_totalTests()
	{
		global $db;
		$sql_query = "select num_tests_executed as t_count from stats_for_web order by id desc limit 1";
		$result = $db->query($sql_query) or die($db->error);
		$row = $result->fetch_assoc();
		$total_test = $row['t_count'];
		
		//total number of lync is total_test * lync_multipler
		return $total_test;
	}
	
	//Get date and test count of the busiest day
	function f_getBusiestDay()
	{
		global $db;

		$sql_query = "select busiest_date, busiest_count from stats_for_web order by id desc limit 1";
		$result = $db->query($sql_query) or die($db->error);
		$row = $result->fetch_assoc();
		$busiest['date'] = $row['busiest_date'];
		$busiest['test_count'] = $row['busiest_count'];
		return $busiest;
	}
	
	//Get average test request per day
	function f_getAverage()
	{
		global $db;

		$sql_query = "select avg_daily_requests as average from stats_for_web order by id desc limit 1";
		$result = $db->query($sql_query) or die($db->error);
		$row = $result->fetch_assoc();
		$average = $row['average'];

		return $average;
	}
	
	//Get combine oat and pat coverage
	function f_getTestCoverage($type)
	{
		global $db;
		if($type == 'total') $sql_query = "select total_coverage as coverage from stats_for_web order by id desc limit 1";
		elseif($type == 'PAT') $sql_query = "select pat_coverage as coverage from stats_for_web order by id desc limit 1";
		else  $sql_query = "select oat_coverage as coverage from stats_for_web order by id desc limit 1";
		$result = $db->query($sql_query) or die($db->error);
		$row = $result->fetch_assoc();
		return $row['coverage'];
	}
	
	/*
	 *Display weekly status table
		<th>Week Of</th>
		<th>Decrease in Email</th>
		<th>Decrease in Lync</th>
		<th>Total minute rescued</th>
	*/
	function f_displayWeeklyTable()
	{
		global $db;
		$sql_query = "select * from stats_weekly order by id desc";
		$result = $db->query($sql_query) or die($db->error);
		while($row = $result->fetch_assoc())
		{
			$start_date = '';
			$end_date = '';
			$test_count = '';
			$email_saved = '';
			$email_time_saved = '';
			$lync_saved = '';
			$lync_time_saved = '';
			$total_time_saved = '';
			
			$start_date = $row['start_date'];
			$end_date = $row['end_date'];
			$test_count = $row['test_count'];
			$email_saved = round($row['email_count_savings']);
			$email_time_saved = $row['email_time_savings'];
			$lync_saved = round($row['lync_count_savings']);
			$lync_time_saved = $row['lync_time_savings'];
			$total_time_saved = $row['total_minutes_saved'];
			echo "
				<tr>
					<td><strong>$start_date</strong> <small>to</small> <strong>$end_date</strong></td>
					<td>$test_count</td>
					<td>$email_saved</td>
					<td>$lync_saved</td>
					<td>$total_time_saved</td>
				</tr>
			";
		}//End of while
	}

?>
