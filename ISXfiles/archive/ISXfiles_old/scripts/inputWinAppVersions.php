<?php 

require_once "sendMail.php";

$db			= 'relregister';
$reg_table  = 'register';
$date_dashes= date("Y-m-d");
# RERUNS
#$date_dashes= '2014-01-10';
$today      = date("Ymd_His");
$environment= "";

# PROD #
$CSVFile_win    = "//ix-ftp01/EFTRoot/data/ApplicationVersions/windowsAppVersions.csv"; 
$CSVFile_unx    = "//ix-ftp01/EFTRoot/data/ApplicationVersions/coreAppVersions.csv"; 

# DR #
$CSVFile_DR_win    = "//ix-ftp01/EFTRoot/data/ApplicationVersions/windowsAppVersions_DR.csv"; 
$CSVFile_DR_unx    = "//ix-ftp01/EFTRoot/data/ApplicationVersions/coreAppVersions_DR.csv"; 

# BAT #
$CSVFile_BAT_win    = "//ix-ftp01/EFTRoot/data/ApplicationVersions/windowsAppVersions_BAT.csv"; 
$CSVFile_BAT_unx    = "//ix-ftp01/EFTRoot/data/ApplicationVersions/coreAppVersions_BAT.csv"; 

# MAT #
$CSVFile_MAT_win    = "//ix-ftp01/EFTRoot/data/ApplicationVersions/windowsAppVersions_MAT.csv"; 
$CSVFile_MAT_unx    = "//ix-ftp01/EFTRoot/data/ApplicationVersions/coreAppVersions_MAT.csv"; 

# PAT #
$CSVFile_PAT_win    = "//ix-ftp01/EFTRoot/data/ApplicationVersions/windowsAppVersions_PAT.csv"; 
$CSVFile_PAT_unx    = "//ix-ftp01/EFTRoot/data/ApplicationVersions/coreAppVersions_PAT.csv"; 

# deciding which environment we are working with:
if (file_exists($CSVFile_win) or file_exists($CSVFile_unx)) {
	$environment = "PROD";
	$rows_win    = explode("\r\n", file_get_contents($CSVFile_win));
	$rows_unx    = explode("\r\n", file_get_contents($CSVFile_unx));
	
} elseif (file_exists($CSVFile_DR_win) or file_exists($CSVFile_DR_unx)) {
	$environment = "DR";
	$rows_win    = explode("\r\n", file_get_contents($CSVFile_DR_win));
	$rows_unx    = explode("\r\n", file_get_contents($CSVFile_DR_unx));
	
} elseif (file_exists($CSVFile_BAT_win) or file_exists($CSVFile_BAT_unx)) {
	$environment = "BAT";
	$rows_win    = explode("\r\n", file_get_contents($CSVFile_BAT_win));
	$rows_unx    = explode("\r\n", file_get_contents($CSVFile_BAT_unx));

} elseif (file_exists($CSVFile_MAT_win) or file_exists($CSVFile_MAT_unx)) {
	$environment = "MAT";
	$rows_win    = explode("\r\n", file_get_contents($CSVFile_MAT_win));
	$rows_unx    = explode("\r\n", file_get_contents($CSVFile_MAT_unx));
	
} elseif (file_exists($CSVFile_PAT_win) or file_exists($CSVFile_PAT_unx)) {
	$environment = "PAT";
	$rows_win    = explode("\r\n", file_get_contents($CSVFile_PAT_win));
	$rows_unx    = explode("\r\n", file_get_contents($CSVFile_PAT_unx));
	
} else {
	echo "No files to process.\n";
	exit();
}

# report file
$reportFile = fopen("D:/xampp/htdocs/ISXfiles/log/new_releases_$environment_$today.txt","w");

############################
# Initializing report file #
############################
fprintf($reportFile, "%-20s | %-20s | %-10s | %-10s | %-10s\r\n",'System', 'Instance', 'Version', 'Date', 'Server');

###############################################
# Connect to a local database server (or die) #
###############################################
$dbH = mysql_connect('localhost', 'root', 'Iseoptions1') or die('Could not connect to MySQL server.<br>' . mysql_error()); 
mysql_select_db($db) or die('Could not select database.<br>' . mysql_error()); 

###################################################################################
# Reading windowsAppVersions.csv file and checking contents against 'register' db #
###################################################################################
$rows = array_merge($rows_win,$rows_unx);

array_shift($rows_unx);
array_shift($rows_win);

foreach($rows as $row => $data ){

	if(empty($data)) { continue; }

#	get row data
	$row_data = explode(",", $data );
	
	$temp_iseappname      = $row_data[0];
	$temp_instancename    = $row_data[1];
	$temp_instanceversion = $row_data[2];
	$temp_timestamp	      = $row_data[3];
	$temp_instanceNode    = $row_data[4];
	$temp_type            = $row_data[5];
	$temp_env             = $row_data[6];

	# date conversion from mm/dd/yyyy to yyyy-mm-dd
	#$temp_timestamp = preg_replace("/(\d+)\D+(\d+)\D+(\d+).*/","$3-$1-$2",$temp_timestamp);

	#print "Apps detected: $temp_iseappname... $temp_instancename... $temp_instanceversion... $temp_timestamp... $temp_instanceNode... $temp_type...$temp_env...\n";
	
	###########################################################################################
	# quering 'main' db to see if the entire row is present. If not, we'll need to insert it. #
	###########################################################################################
	$query = "SELECT * FROM  $reg_table WHERE iseappname='$temp_iseappname'
										AND instancename='$temp_instancename'
										AND instanceversion='$temp_instanceversion'
										AND instanceNode='$temp_instanceNode'
										AND environment='$temp_env'
										";
	$result = mysql_query($query);
	
	###################################################################################
	# If row is new (i.e. new Application was released), insert into 'register' table #
	###################################################################################
	if(!mysql_fetch_row($result)) {
		$insert = "INSERT INTO $reg_table (
		iseappname,
		instancename,
		instanceversion,
		timestamp,
		instanceNode,
		type,
		environment
			) 
			VALUES('$temp_iseappname',
			'$temp_instancename',
			'$temp_instanceversion',
			'$temp_timestamp',
			'$temp_instanceNode',
			'$temp_type',
			'$temp_env')";
			
			
		#print "New value: $temp_iseappname, $temp_instancename, $temp_instanceversion, $temp_timestamp, $temp_instanceNode, $temp_type, $temp_env.\n";
		fprintf($reportFile, "%-20s | %-20s | %-10s | %-10s | %-10s | %-10s | %-10s\r\n", $temp_iseappname, $temp_instancename, $temp_instanceversion, $temp_timestamp, $temp_instanceNode, $temp_type, $temp_env);
		
		$result = mysql_query($insert) or die ("Could not insert row into: $reg_table.\n".mysql_error());
	}
}
#################################
# move file to backup directory #
#################################
print "Moving the file on FTP server to /backup folder.\n";
foreach (glob("//ix-ftp01/EFTRoot/data/ApplicationVersions/*.csv") as $csvFile) {
	$newFile = basename($csvFile,".csv")."_".$environment."_".$today.".csv";
	rename($csvFile, "//ix-ftp01/EFTRoot/data/ApplicationVersions/Backup/$newFile");
}

# sending mail
sendMail($environment,$date_dashes);

# closing report handle
fclose($reportFile);

# closing connection
mysql_close($dbH); 

?>