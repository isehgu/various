<?php

function sendMail($environment,$date_dashes){

	$db			= 'relregister';
	$reg_table  = 'register';
	#$environment

	
	# Connect to a local database server (or die) #
	$dbH = mysql_connect('localhost', 'root', 'Iseoptions1') or die('Could not connect to MySQL server.<br>' . mysql_error()); 
	mysql_select_db($db) or die('Could not select database.<br>' . mysql_error()); 
	
	# Selecting Subject line depending on query result(s)
	$query_date  = "SELECT * FROM  $reg_table where timestamp = '$date_dashes'";
	$result_date = mysql_query($query_date) or die('Could not query $reg_table.<br/>'.mysql_error());

	if( mysql_num_rows($result_date) != 0) {
		$subject = "INFO: $environment: Following applications were released today for $date_dashes";
	} else {
		$subject = "INFO: $environment: No applications were released today for $date_dashes";
	}
	
	$recipients = array(
	  "OptiCheckoutAlerts@ise.com"
	  //"drozentsvay@ise.com"
	);
	$to = implode(',', $recipients); // your email address
	
	
	// # query main table and check if any releases were done
	$query_date  = "SELECT * FROM  $reg_table WHERE timestamp = '$date_dashes' AND environment='$environment'";
	$result_date = mysql_query($query_date) or die('Could not query $reg_table.<br/>'.mysql_error());

	if( mysql_num_rows($result_date) != 0) {
		$msg = "<html>
		<head>
			<title>Title of email</title>
				<style type=\"text/css\">
					table.gridtable {
						font-family: verdana,arial,sans-serif;
						font-size:11px;
						color:#333333;
						border-width: 1px;
						border-color: #666666;
						border-collapse: collapse;
					}
					table.gridtable th {
						border-width: 1px;
						align: center;
						padding: 8px;
						border-style: solid;
						border-color: #666666;
						background-color: #dedede;
					}
					table.gridtable td {
						border-width: 1px;
						padding: 8px;
						border-style: solid;
						border-color: #666666;
						background-color: #ffffff;
					}
			</style>
		</head>

		<body>

		<table class=\"gridtable\" >
		  
		  <tr>
		  <th align=\"center\">Name</th>
		  <th align=\"center\">Instance</th>
		  <th align=\"center\">Version</th>
		  <th align=\"center\">Timestamp</th>
		  <th align=\"center\">Server</th>
		  <th align=\"center\">Type</th>
		  <th align=\"center\">Environment</th>
		  </tr>";
		  
		  
			while( $row = mysql_fetch_row($result_date)){
				$msg .= "<tr>";
				$msg .= "<td>".$row[0]."</td>";
				$msg .= "<td>".$row[1]."</td>";
				$msg .= "<td>".$row[2]."</td>";
				$msg .= "<td>".$row[3]."</td>";
				$msg .= "<td>".$row[4]."</td>";
				$msg .= "<td>".$row[5]."</td>";
				$msg .= "<td>".$row[6]."</td>";
				$msg .= "</tr>";
			}

		  
		$msg .= "</table>
		</body>
		</html>";
	
	} else {
		$msg = "No new releases were found for today.";
	}
	// Make sure to escape quotes

	$headers  = 'MIME-Version: 1.0' . "\r\n";
	$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
	$headers .= 'From: no-reply@ise.com' . "\r\n";

	ini_set ( "SMTP", "ix-smtp01.inf.ise.com" ); 
	mail($to, $subject, $msg, $headers);
}
?>
