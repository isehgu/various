<?php
	//require_once "base_function.php";
	//f_dbConnect();
?>
	

<!DOCTYPE HTML>
<html lang="en">
    <head>
            <title>Test Automation Controller</title>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta name="description" content="Test Automation Controller">
            <meta name="author" content="Autobots">
            <!--bootstrap-->
            <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
            <link href="tac.css" rel="stylesheet">

            <script src="js/jquery-1.11.0.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
    </head>	
    <body>
	<nav id="topnav" class="navbar navbar-default navbar-fixed-top navbar-inverse">
		<div class="container-fluid">
			<p class="text-center" id="slogan"><button id="runbtn" class="btn btn-primary btn-lg navbar-btn">Run</button> Tac Run!</p>
		</div>
	</nav>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li class="active"><a href="#action">Test in Action</a></li>
					<li><a href="#queue">Test in Queue</a></li>
					<li><a href="#history">Test History</a></li>
				</ul>
			</div>
		</div>
		<div id="main" class="col-sm-9 col-sm-offset-3 col-md10 col-md-offset-2">
			<form>
				<h2 class="sub-header">Test Suites</h2>
				
				<table class="table">
						<tbody>
							<tr>
								<td><input type="checkbox"> PAT IORS</td>
								<td><input type="checkbox"> PAT RTP</td>
								<td><input type="checkbox"> PAT CORE</td>
								<td><input type="checkbox"> PAT LVC</td>
							</tr>
							<tr>
								<td><input type="checkbox"> OAT ISEApps</td>
								<td><input type="checkbox"> OAT Revamp</td>
								<td><input type="checkbox"> OAT CORE</td>
								<td></td>
							</tr>
				
						</tbody>
					</table>
				
				<h2 class="sub-header">Test Cases</h2>
				<div class="row" id="test_check_box">
					<table class="table">
						<tbody>
							<tr>
								<td><input type="checkbox"> PAT-PT101</td>
								<td><input type="checkbox"> PAT-PT102 asdfasdfasdfasdfasdfasdfasdfasdfasdf asdfadsfadsfadsfasdfasd</td>
								<td><input type="checkbox"> PAT-PT102 asdfasdfasdfasdfasdfasdfasdfasdfasdf</td>
								<td><input type="checkbox"> PAT-PT102 asdfasdfasdfasdfasdfasdfasdfasdfasdf</td>
							</tr>
							<tr>
								<td><input type="checkbox"> PAT-PT102 asdfasdfasdfasdfasdfasdfasdfasdfasdf</td>
								<td><input type="checkbox"> OAT-ME Failover</td>
								<td><input type="checkbox"> PAT-PT102 asdfasdfasdfasdfasdfasdfasdfasdfasdf</td>
								<td><input type="checkbox"> OAT-ME Failover</td>
							</tr>
		
							<tr>
								<td><input type="checkbox"> OAT-ME Failover</td>
								<td><input type="checkbox"> PAT-PT102 asdfasdfasdfasdfasdfasdfasdfasdfasdf</td>
								<td></td>
								<td></td>
							</tr>
				
						</tbody>
					</table>
					
				</div>
			</form>
		</div>
	</div>
    </body>
	
</html>