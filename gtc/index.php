<?php
	//require_once "base_function.php";
	//f_dbConnect();
	
?>
	

<!DOCTYPE HTML>
<html lang="en">
    <head>
            <title>GTC Checkout Central Mockup</title>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta name="description" content="GTC Checkout Central Mockup">
            <meta name="author" content="ASG">
            <!--bootstrap-->
            <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
						<link href="css/datepicker.css" rel="stylesheet">
            <link href="gtc.css" rel="stylesheet">

            <script src="js/jquery-1.11.0.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
						<script src="js/jquery.cookie.js"></script>
						<script src="js/bootstrap-datepicker.js"></script>
						<script src="gtc.js"></script>
    </head>	
    <body>
			<div class="container-fluid">
<!------------------------------ wrapper_date: From start_date to end_date ------------------------------------>
				<div class="text-center" id="wrapper_date">
					<div class="row">
						<div class="col-md-3"> </div>
						<div class="col-md-6 ">
							<div class="row">
								<div id="from_text" class="col-sm-2 col-md-2 daterange">From </div>
								<div class="col-sm-4 col-md-4 date_box">
									<form role="form">
										<input id="start_date_input" type="text" class="form-control" data-provide='datepicker' 
								data-date-format='yyyy-mm-dd' name='start_date' value="2014-03-25">
									</form>
								</div>
								<div class="col-sm-2 col-md-2 daterange">
									To 
								</div>
								<div class="col-sm-4 col-md-4 date_box">
									<form role="form">
										<fieldset disabled>
											<input id="end_date_input" type="text" class="form-control" value="2014-03-26">
										</fieldset>
									</form>
								</div>
							</div>
						</div>
						<div class="col-md-3"> </div>
					</div>
					<!--
					<div class="row">
						<div class="col-sm-2 col-md-2 border-box" style="font-size:28px; font-weight:bold;">From</div>
						<div class="col-sm-2 col-md-2 border-box">
							<form role="form">
								<input type="text" class="form-control" placeholder="3/25/14">
							</form>
						</div>
						<div class="col-sm-8 col-md-8 border-box" style="font-size:28px; font-weight:bold;">To 3/26/14</div>
					</div>
					-->
					
					<!--
					<div class="row">
						<form class="form-horizontal" role="form">
							<div class="form-group">
								<label class="col-md-2 col-sm-2" style="font-size: 28px;">From</label>
								<div class="col-sm-2 col-md-2">
									<input type="text" class="form-control" placeholder="3/25/14">
								</div>
								<div class="col-sm-2 col-md-2" style="font-size:28px; font-weight:bold;">
									To 3/26/14
								</div>
							</div>
						</form>
					</div>
		-->
				</div>
<!------------------------------ end of wrapper_date ------------------------------------>
				
<!------------------------------ wrapper_4am: 4am check ------------------------------------>
				<div class="wrapper text-center" id="wrapper_4am">
					<div class="row">
						<div class="col-md-3"> </div>
						<div class="col-md-5">
							<h2 class="sub-header checkout_header">4AM Check</h2>
						</div>
						<div class="col-md-4">
							<input type="text" class="form-control" placeholder="Search Text">
						</div>
					</div>
					
					<table class="table table-hover">
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
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
              </tbody>
            </table>
				</div>
<!------------------------------ end of wrapper_4am ------------------------------------>

<!------------------------------ wrapper_3am: 3am check ------------------------------------>

				<div class="wrapper text-center wrapper_hide" id="wrapper_3am">
					<div class="row">
						<div class="col-md-3"> </div>
						<div class="col-md-5">
							<h2 class="sub-header checkout_header">3AM Check</h2>
						</div>
						<div class="col-md-4">
							<input type="text" class="form-control" placeholder="Search Text">
						</div>
					</div>
					<table class="table table-hover">
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
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
              </tbody>
            </table>
				</div>
				
<!------------------------------ end of wrapper_3am ------------------------------------>

<!------------------------------ wrapper_2am: 2am check ------------------------------------>
				<div class="wrapper text-center wrapper_hide wrapper_discrepancy" id="wrapper_2am">
					<div class="row">
						<div class="col-md-3"> </div>
						<div class="col-md-5">
							<h2 class="sub-header checkout_header">2AM Check</h2>
						</div>
						<div class="col-md-4">
							<input type="text" class="form-control" placeholder="Search Text">
						</div>
					</div>
					<table class="table table-hover">
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
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
              </tbody>
            </table>
				</div>
<!------------------------------ end of wrapper_2am ------------------------------------>

<!------------------------------ wrapper_10pm: 10pm check ------------------------------------>
				<div class="wrapper text-center wrapper_hide" id="wrapper_10pm">
					<div class="row">
						<div class="col-md-3"> </div>
						<div class="col-md-5">
							<h2 class="sub-header checkout_header">10PM Check</h2>
						</div>
						<div class="col-md-4">
							<input type="text" class="form-control" placeholder="Search Text">
						</div>
					</div>
					<table class="table table-hover">
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
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
              </tbody>
            </table>
				</div>
<!------------------------------ end of wrapper_10pm ------------------------------------>

<!------------------------------ wrapper_6pm: 6pm check ------------------------------------>
				<div class="wrapper text-center wrapper_hide wrapper_discrepancy" id="wrapper_6pm">
					<div class="row">
						<div class="col-md-3"> </div>
						<div class="col-md-5">
							<h2 class="sub-header checkout_header">6PM Check</h2>
						</div>
						<div class="col-md-4">
							<input type="text" class="form-control" placeholder="Search Text">
						</div>
					</div>
					<table class="table table-hover">
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
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td> 
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
                <tr>
                  <td>3/10/14</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                  <td>32423</td>
                </tr>
              </tbody>
            </table>
				</div>
<!------------------------------ end of wrapper_6pm ------------------------------------>

<!------------------------------ wrapper_button: Button Display ------------------------------------>
				<nav class="navbar navbar-default navbar-fixed-bottom">
					<div class="container-fluid text-center">
							<a href="#" id="6pm_btn" class="btn btn-lg navbar-btn">6pm</a>
							<a href="#" id="10pm_btn" class="btn btn-lg navbar-btn">10pm</a>
							<a href="#" id="2am_btn" class="btn btn-lg navbar-btn">2am</a>
							<a href="#" id="3am_btn" class="btn btn-lg navbar-btn">3am</a>
							<a href="#" id="4am_btn" class="btn btn-lg navbar-btn">4am</a>
							
					</div>
				</nav>
<!------------------------------ end of wrapper_button ------------------------------------>		
				
			</div>
			<!-- End of main container-fluid -->
    </body>
	
</html>