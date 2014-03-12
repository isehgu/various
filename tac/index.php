<?php
	require_once "base_function.php";
	f_dbConnect();
	//if(!isset($_COOKIE['user'])){header('Location: tac_stats.php');}
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
						<script src="tac.js"></script>
    </head>	
    <body>
	<nav id="topnav" class="navbar navbar-default navbar-fixed-top navbar-inverse">
		<div class="container-fluid">
			<p class="text-center" id="slogan">
				<button id="runbtn" class="btn btn-primary btn-lg navbar-btn">Run</button> T.A.C. Run!
			</p>
		</div>
	</nav>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				
				<div id="greeting" class="btn-group">
					<button id="name_btn" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
						Welcome <?php echo $_COOKIE['user'];?> <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="logout.php">Logout</a></li>
					</ul>
				</div>
				<ul class="nav nav-sidebar">
					<li><a class="sidelink" href="http://asg.ise.com/tac/index.php#main">Test Selection <span id="test_stat" class="badge"><?php echo f_statCount('test');?></span></a></li>
					<li><a class="sidelink" href="http://asg.ise.com/tac/index.php#progress">Test in Progress <span id="progress_stat" class="badge"><?php echo f_statCount('progress');?></span></a></li>
					<li><a class="sidelink" href="http://asg.ise.com/tac/index.php#queue">Test in Queue <span id="queue_stat" class="badge"><?php echo f_statCount('queue');?></span></a></li>
					<li><a class="sidelink" href="http://asg.ise.com/tac/index.php#history">Test History <span id="history_stat" class="badge"><?php echo f_statCount('history');?></span></a></li>
					<li><a class="sidelink" href="http://asg.ise.com/tac/index.php#env">Env Setting <span id="env_stat" class="badge"><?php echo f_statCount('env');?></span></a></li>
					<li><a href="http://asg.ise.com/tac/tac_stats.php">Accolades</a></li>
					<li><a href="http://ic-aoc01/isxfiles/">Release Register</a></li>
					
					<!--
					<li><a class="sidelink" href="http://localhost/tac/index.php#main">Test Selection <span id="test_stat" class="badge"><?php echo f_statCount('test');?></span></a></li>
					<li><a class="sidelink" href="http://localhost/tac/index.php#progress">Test in Progress <span id="progress_stat" class="badge"><?php echo f_statCount('progress');?></span></a></li>
					<li><a class="sidelink" href="http://localhost/tac/index.php#queue">Test in Queue <span id="queue_stat" class="badge"><?php echo f_statCount('queue');?></span></a></li>
					<li><a class="sidelink" href="http://localhost/tac/index.php#history">Test History <span id="history_stat" class="badge"><?php echo f_statCount('history');?></span></a></li>
					<li><a class="sidelink" href="http://localhost/tac/index.php#env">Env Setting <span id="env_stat" class="badge"><?php echo f_statCount('env');?></span></a></li>
					<li><a href="http://ic-aoc01/isxfiles/">Release Register</a></li>
				-->
				</ul>
			</div>
		</div>
	
		<div id="main" class="col-sm-9 col-sm-offset-3 col-md10 col-md-offset-2">
			<div id="banner" class="jumbotron">
			<h2>Test Automation Controller (T.A.C.)</h2>
			<ol>
				<li><strong>Make sure you view this page in Firefox or Chrome</strong></li>
				<li>Check the test suite or test case you wish to run.</li>
				<li>Hit <button class="btn btn-primary disabled">Run</button> on top to put them in test queue.</li>
				<li>View test or env stats and results -- in progress, in queue, history, env setting.</li>
			</ol>
			<blockquote id="disney" class="blockquote-reverse">
				<p>It's kind of fun to do the impossible.</p>
				<footer>Walt Disney</footer>
			</blockquote>
		</div>
			<form id="test_request" method="get" action="test_request.php">
				
		<!-- Label as input field
				<div class="row">
					<div class='col-xs-5'>
						<h2 id='test_label'>Test Rquest Label</h2>
						<input class='form-control input-lg' type='text' name='label' placeholder='Label Your Test Request'>
					</div>
				</div>
		-->
		
				<h2 class="sub-header inline_header">Test Suites</h2>
					<div class="pull-right col-xs-5">
						<input id="test_request_search" class="form-control" placeholder="Search Test Suite and Test Cases">
					</div>
					<br><br><br>
				<table class="table">
						<thead>
								<tr>
									<th>Test Suite Name</th>
									<th>Description</th>
								</tr>			
						</thead>
						<tbody id="test_suite_table" class="test_request_searchable">
							<?php f_tableDisplay('suite');?>
							<!--
							<tr>
								<td><input type="checkbox"> PAT IORS</td>
								<td>PAT Regression for IORS that includes rampup, steady load, and various BSI setup</td>

							</tr>
							<tr>
								<td><input type="checkbox"> OAT ISEApps</td>
								<td>All ISEApps related OAT test cases</td>
							</tr>
						-->
						</tbody>
					</table>
				<h2 class="sub-header">Test Cases</h2>
				<br>
					<table class="table">
						<thead>
								<tr>
									<th>Test Name</th>
									<th>Description</th>
								</tr>					
						</thead>
						<tbody id="test_table" class="test_request_searchable">
							<?php f_tableDisplay('test');?>
							<!--
							<tr>
								<td><input type="checkbox"> PAT-PT101</td>
								<td>This is a very long description of this test case.</td>
							</tr>
							<tr>
								<td><input type="checkbox"> PAT-PT102 Long name</td>
								<td>this is a a description</td>
							</tr>
							-->
						</tbody>
					</table>
			</form>
			
			<div id="progress">
				<h2 class="sub-header inline_header">Test in Progress</h2>
				<div class="pull-right col-xs-5">
						<input id="progress_search" class="form-control" placeholder="Search Tests in Progress">
					</div>
					<br><br><br>
				<table class="table">
					<thead>
						<tr>
							<th>Env</th>
							<th>Action</th>
							<th>Request ID</th>
							<th>Label</th>
							<th>Test Name</th>
							<th>Process ID</th>
							<th>Start Time</th>
						</tr>
					</thead>
					<tbody id="progress_searchable">
						<?php f_tableProgress(); ?>
					</tbody>
				</table>
			</div>
			
			
			<div id="queue">
				<h2 class="sub-header inline_header">Test in Queue</h2>
				<div class="pull-right col-xs-5">
						<input id="queue_search" class="form-control" placeholder="Search for Test Queue">
					</div>
					<br><br><br>
				<table class="table">
					<thead>
						<tr>
							<th>Env</th>
							<th>Action</th>
							<th>Request ID</th>
							<th>Label</th>
							<th>Test Name</th>
							<th>Request Time</th>
						</tr>
					</thead>
					<tbody id="queue_searchable">
						<?php f_tableQueue(); ?>
					</tbody>
				</table>
			</div>
		
			
			<div id="history">
				<h2 class="sub-header inline_header">Test History</h2>
				<div class="pull-right col-xs-5">
						<input id="history_search" class="form-control" placeholder="Search Test History">
					</div>
					<br><br><br>
				<table class="table">
					<thead>
						<tr>
							<th>Env</th>
							<th>Request ID</th>
							<th>Label</th>
							<th>Test Name</th>
							<th>Test Status</th>
							<th>Request Time</th>
							<th>Start Time</th>
							<th>End Time</th>
							<th>Report</th>
						</tr>
					</thead>
					<tbody id="history_searchable">
						<?php f_tableHistory(); ?>
					</tbody>
				</table>
			</div>
	
			
			<div id="env">
				<h2 class="sub-header">Env Setting</h2>
				<table class="table">
					<thead>
						<tr>
							<th>Action</th>
							<th>Env Name</th>
							<th>Lock Reason</th>
						</tr>
					</thead>
					<tbody>
						<?php f_tableEnv() ?>
					</tbody>
				</table>
			</div>
		</div><!-- end of main-->
	</div>
    </body>
	
</html>