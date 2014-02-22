<?php
	function f_dbConnect()
	{
		global $db;
		$dbhost = 'localhost';
		$dbuser = 'relregister';
		$dbpwd  = 'Iseoptions1';
		$dbname = 'relregister';
		
		$db = new mysqli($dbhost,$dbuser,$dbpwd,$dbname);
		if(!$db) echo "Connection failed: ".$db->connect_error; //if condition here can also be -- if !$mysqli
		
	}
	
	function f_displayAll($f_env)
	{
		global $db;
		$iseapp     = array();
		$instance   = array();
		$version    = array();
		$timestamp  = array();
		$node       = array();
		$type       = array();
		#$env		= array();
		
		# order if 'Free Text' is selected
		if($_GET['textstring'])
		{
			$sql_query = "SELECT iseappname,instancename,instanceversion,timestamp,instanceNode,type,environment 
						  FROM register ".f_searchBuilder()." 
						  AND environment = '$f_env' 
						  ORDER BY timestamp desc, instanceversion desc, iseappname asc, instancename asc, instancenode asc, type asc, environment asc";
			//echo $sql_query;
		}
		# ELSE IF 'date' is selected
		elseif($_GET['datestring'])
		{
			$sql_query = "SELECT iseappname,instancename,max(instanceversion) as instanceversion,max(timestamp) as timestamp,instanceNode,type,environment
						  FROM register 
						  WHERE timestamp <= '".$_GET['datestring']."' 
						  AND environment = '$f_env' 
						  GROUP BY iseappname,instancename, instanceversion, instanceNode,type,environment 
						  ORDER BY timestamp desc,iseappname asc,instancename asc,instancenode asc, type asc, environment asc";
		}
		# ELSE for everything else
		else
		{
			$sql_query = "SELECT iseappname, instancename, max(instanceversion) as instanceversion, max(timestamp) as timestamp, instanceNode ,type, environment
						  FROM register 
						  WHERE environment = '$f_env'
						  GROUP BY iseappname, instancename, instanceNode, type, environment
						  ORDER BY timestamp desc, iseappname asc, instancename asc, instancenode asc, type asc, environment asc";
		}
		
		//$sql_query = "SELECT iseappname,instancename,instanceversion,max(timestamp) as timestamp,instanceNode FROM register ".f_searchBuilder()." group by iseappname,instancename,instanceNode order by timestamp desc,iseappname asc,instancename asc";
		//echo $sql_query."<br>";
		$result = $db->query($sql_query) or die($db->error);
    
		
		while($row = $result->fetch_assoc())
		{ 
			$iseapp[]    = $row['iseappname'];
			$instance[]  = $row['instancename'];
			$version[]   = $row['instanceversion'];
			$timestamp[] = $row['timestamp'];
			$node[]      = rtrim($row['instanceNode']);
			$type[]      = $row['type'];
			#$env[]       = $row['environment'];
		}
		natcasesort($iseapp);
		natcasesort($instance);
		natcasesort($version);
		natcasesort($timestamp);
		natcasesort($node);
		natcasesort($type);
		#natcasesort($env);
		//echo "<form method='get' action='index.php'>";
		//echo "<button id='filterbtn' class='btn btn-primary' type='submit'>Filter</button>";
		#echo "<div class='row'>";
		#echo "<div id='mid' class='col-md-12'>";
		echo "<table class='table table-bordered table-condensed table-hover'><thead><tr>";
			echo "<th>Application</th>";
			echo "<th>Instance</th>";
			echo "<th>Version</th>";
			echo "<th>Timestamp</th>";
			echo "<th>Node</th>";
			echo "<th>Type</th>";
			#echo "<th>Environment</th>";
		echo "</tr></thead>";
		echo "<tbody>";
		//display the filter option
		echo "<tr>";
			echo "<td>" . f_displaySelect(array_unique($iseapp),'iseappname'). "</td>";
			echo "<td>" . f_displaySelect(array_unique($instance),'instancename'). "</td>";
			echo "<td>" . f_displaySelect(array_unique($version),'instanceversion'). "</td>";
			echo "<td>" . f_displaySelect(array_unique($timestamp),'timestamp'). "</td>";
			echo "<td>" . f_displaySelect(array_unique($node),'instancenode'). "</td>";
			echo "<td>" . f_displaySelect(array_unique($type),'type'). "</td>";
			#echo "<td>" . f_displaySelect(array_unique($env),'environment'). "</td>";
		//echo "<td>Filter temporarily disabled</td>";
		echo "</tr>";
			
		for($counter = 0;$counter < count($iseapp);$counter++)
		{
			echo "<tr class='data'>";
			echo "<td class='iseappname_td'>" . $iseapp[$counter]. "</td>";
			echo "<td class='instancename_td'>" . $instance[$counter]. "</td>";
			echo "<td class='instanceversion_td'>" . $version[$counter] . "</td>";
			echo "<td class='timestamp_td'>" . $timestamp[$counter] . "</td>";
			echo "<td class='instancenode_td'>" . $node[$counter] . "</td>";
			echo "<td class='type_td'>" . $type[$counter] . "</td>";
			#echo "<td class='env_td'>" . $env[$counter] . "</td>";
			echo "</tr>";
		}
		
		//echo "</form>";
    echo "</tbody></table>";
	#echo "</div></div>";
		
	}
	
	//This function return a Select Clause string with all the values of the passed in array
	function f_displaySelect($list,$column)
	{
		$output = "<select id='{$column}_select' class='form-control' name='$column'>";
		$output .= "<option value=''>Not Selected</option>";
		foreach($list as $element)
		{
			$element = rtrim($element);
			//if there's no pre-existing filter, or if the selected filter isn't the current element, then just display normal <option>
			//otherwise, display <option selected='selected'>
			if(empty($_GET[$column]) || $_GET[$column] != $element) $output .= "<option class='{$column}_option' value='$element'>$element</option>";
			else $output .= "<option class='{$column}_option' selected='selected' value='$element'>$element</option>";
		}
		$output .= "</select>";
		return $output;
	}
	
	//This function would read in all the $_GET variables and build the where part of the sql query.
	function f_searchBuilder()
	{
		$columns = array('iseappname','instancename','instanceversion','timestamp','instancenode','type','environment');
		$output = "";
		$sqlor = 0; //stupid flag to see if 'and' is needed in sql query, meaning, if there's already a condition there
		$textstring = $_GET['textstring'];
		
		if($textstring)
		{
			foreach($columns as $column)
			{
				//loop through all the columns(also the GET var names), and if GET has that var, then add to the 'where' condition
				//if $and is defined, meaning there's existing condition, then add that before the condition
				//increment $and only if the column is valid and non-empty, meaning, there's filter specified
				if($sqlor) $output .= ' or '; //if there's more condition before this one.
				if(get_magic_quotes_gpc) $output .= "$column like '%".$textstring."%'";
				else  $output .= "$column like '".addslashes($textstring)."%'";
				$sqlor++;
			} //End of foreach
		}//end of if textstring
		
		if($output) return 'where (' . $output . ')'; //if output is not empty then prefix it with where, and return it
	}
?>
