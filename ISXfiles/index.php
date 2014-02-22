<?php
	require_once "base_function.php";
	f_dbConnect();
?>
	

<!DOCTYPE HTML>
<html>
	<head>
		<title>ISX-files</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<!--bootstrap-->
		<link href="css/bootstrap.css" rel="stylesheet" media="screen">
		<link href="css/datepicker.css" rel="stylesheet">
		<link href="css/isxfiles.css" rel="stylesheet">
		<link href="css/justified-nav.css" rel="stylesheet">
    
		
		<script src="js/jquery-1.10.2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/bootstrap-datepicker.js"></script>
		<script src="js/isxfiles.js"></script>	
		
	</head>	
	<body>
		
		<div class="container">
			<div id='top' class='navbar navbar-inverse navbar-fixed-top'>
				<div id='logo'><a href='index.php'>ISX-files</a></div>
				<div id='smartcomment'>You can look but don't touch!</div>
			</div>
		</div><!--End of Container-->


		<div class="container">		
			<div id='searchwrapper' class='row'>			
				
				<!-- 	WORKING ON IT -->
				<div class='col-md-6'>
					<form id='searchtext' method='get' action='#'>
						<div id='searchdiv' class='input-group col-md-4'>
							<input id='textinput' type='text' class='form-control' 
								name='textstring' placeholder='Free text search on all columns' 
								value="<?php echo $_GET['textstring']; ?>">
							<span class='input-group-addon'>
							<span class='glyphicon glyphicon-search'></span>
							</span>
						</div>
					</form>
				</div>

				
				
				<!--div class='col-md-6'>
					<form id='searchtext' method='get' action='#'>
						<div id='searchdiv' class='input-group col-md-4'>
							<input type='text' class='form-control' name='textstring' placeholder='Free text search on all columns' value="<?php echo $_GET['textstring']; ?>">
							<span class='input-group-addon'>
							<span class='glyphicon glyphicon-search'></span>
							</span>
						</div>
					</form>
				</div-->
				
				<div class='col-md-3 col-md-offset-3'>
					<form id='searchdate' method='get' action='#'>
						<div id='datediv' class='input-group col-md-2'>
							<input id='dateinput' class='form-control' data-provide='datepicker' 
								data-date-format='yyyy-mm-dd' name='datestring' placeholder='YYYY-MM-DD' 
								value="<?php echo $_GET['datestring'];?>">
							<span class='input-group-addon'>
							<span class='glyphicon glyphicon-calendar'></span>
							</span>
						</div>
					</form>
				</div>
			</div>
		</div><!--End of Container-->			

		<br>
		<div class='container'>
			<div class="masthead">
				<ul class="nav nav-justified">
					<li class="active"><a href="index.php">PROD</a></li>
					<li><a href="dr.php">DR</a></li>
					<li><a href="bat.php">BAT</a></li>
					<li><a href="mat.php">MAT</a></li>
					<li><a href="oat.php">OAT</a></li>
					<li><a href="pat.php">PAT</a></li>
				</ul>
			</div>
		</div>
		
		<div id='mid' class='col-md-12'>
		<?php
			f_displayAll('PROD');
		?>
		</div>
	</body>
</html>