<?php
	require_once "base_function.php";
	f_dbConnect();
	$env = 'BAT';
?>
	

<!DOCTYPE HTML>
<html>
	<head>
		<title>ISX-files</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<!--bootstrap-->
		<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
		<link href="css/datepicker.css" rel="stylesheet">
		<link href="isxfiles.css" rel="stylesheet">
    

	</head>	
	<body>
		
		<div class="container">
			<div id='top' class='navbar navbar-inverse navbar-fixed-top'>
				<div id='logo'><a href='index.php'>ISX-files</a></div>
				
				<div id='smartcomment'>You can look but don't touch!</div>
				<div id='FixWhateverBoostrapCssDidToBtnDiv'>
					<div class="btn-group">
						<button type='button' class='btn btn-default'>Prod</button>
						<button type='button' class='btn btn-default'>DR</button>
						<button type='button' class='btn btn-default'>PAT</button>
						<button type='button' class='btn btn-default active'>BAT</button>
						<button type='button' class='btn btn-default'>OAT</button>
						<button type='button' class='btn btn-default'>MAT</button>
					</div>
				</div>
					
			
				
				
				
			</div>
		</div><!--End of Container-->

		<div class='container'>
			<div id='searchwrapper' class='row'>
			<div class='col-md-6'>
				<form id='searchtext' method='get' action='#'>
					<div id='searchdiv' class='input-group col-md-4'>
						<input type='text' class='form-control' name='textstring' placeholder='Free text search on all columns' value="<?php echo $_GET['textstring']; ?>">
						<span class='input-group-addon'>
						<span class='glyphicon glyphicon-search'></span>
						</span>
					</div>
				</form>
			</div>

			<div class='col-md-3 col-md-offset-3'>
				<form id='searchdate' method='get' action='#'>
					<div id='datediv' class='input-group col-md-2'>
						<input id='dateinput' class='form-control' data-provide='datepicker' data-date-format='yyyy-mm-dd' name='datestring' placeholder='YYYY-MM-DD' value="<?php echo $_GET['datestring'];?>">
						<span class='input-group-addon'>
						<span class='glyphicon glyphicon-calendar'></span>
						</span>
					</div>
				</form>
			</div>
			
			<div class='row'>
				<div id='mid' class='col-md-12'>
				<?php
					f_displayAll();
				?>
				</div>
			</div>
		</div><!--End of Container-->
		
		<script src="js/jquery-1.10.2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/bootstrap-datepicker.js"></script>
		<script src="isxfiles.js"></script>	
	</body>
	
</html>