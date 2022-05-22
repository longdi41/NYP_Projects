<!DOCTYPE html>
<html>
	<head>
		<title>Interest Charts</title>
		<link rel="stylesheet" type="text/css" href="style.css">
		<style>
			#item-2 {
				background-color: #9ca3da;
			}
			
			@media screen and (max-width: 1399px) {
				#chart1 {
					
					margin-top: 20px;
					margin-left: 20px;	
					border: 1px solid black;
					height: 380px;
					width: 1200px;
					box-shadow: 6px 6px #888888;
					
					
				}
				#chart2 {
					
					margin-top: 15px;
					margin-left: 20px;
					border: 1px solid black;
					height: 450px;
					width: 1200px;
					box-shadow: 6px 6px #888888;
					
					
				}
				.graph1 {
					float: left;
					width: 800px;
					
				}
				.analytic1 {
					float: right;
				}
				.analytic2 {
					float: right;
				}
				.graph2 {
					float: left;
					width: 800px;
				}
				
				
				
			}
			
			@media screen and (min-width: 1400px) {
				#chart1 {
					margin-top: 50px;
					margin-left: 75px;
					border: 1px solid black;
					height: 500px;
					width: 1400px;
					background: white;
					box-shadow: 6px 6px #888888;
				}
				#chart2 {
					margin-top: 30px;
					margin-left: 75px;
					border: 1px solid black;
					height: 450px;
					width: 1400px;
					background: white;
					box-shadow: 6px 6px #888888;
				}
				.graph1 {
					float: left;
					width: 750px;
					
				}
				.analytic1 {
					float: right;
					margin-right: 70px;
					margin-top: 10px;
					width: 520px;
				}
				.analytic2 {
					float: right;
					margin-right: 20px;;
					margin-top: 10px;
					width: 580px;
				}
				.graph2 {
					float: left;
					width: 700px;
				}
				
			}
			.graph2 h2 {
				margin-left: 50px;
				margin-top: 60px;
			}
			
			.graph1 h2 {
				margin-left: 50px;
				margin-top: 60px;
			}
			#title {
				margin-left: 80px;
				margin-top: 20px;
			}
			
			.titleofchart {
				text-align: center;
				padding-top: 25px;
				
			}
			
			.fb-share-button {
				position: relative;
				left: 41%;
				top: 10px;
			}
			
			#google {
				position: relative;
				left: 53%;
				bottom: 10px;
			}
			
			.fb-comments {
				position: relative;
				left: 30%;
				top: 10px;
			}
			
			.social {
				margin-top: 30px;
				margin-left: 80px;
				width: 1440px;
				height: 450px;
				background-color: white;
				border: 1px solid black;
			}
			
		</style>
	</head>
	<body>
		<div id="fb-root"></div>
	<script>(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5&appId=548194132006233";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));</script>
	
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	
		<?php include "header.php" ?>
		<?php include "navbar.php" ?>
		
		<div class = "content">

			<div id="chart1" >
				<div class="graph1">
					<h2>Reasons why year 1 students join NYPSIT:</h2>
					<?php include "loadchart1.php" ?>
				</div>
				<div class="analytic1">
					<div style="float: left; width: 380px">
					<p style="margin-left: 230px">Students</p>
					<h2 style="margin-left: 245px; color: #00B7EB"><strong>20</strong></h2>
					<p style="margin-left: 180px">Took part in this survey</p>
					<p style="font-size: 15px; margin-left: 240px; color: #32CD32"><i>100%</i></p>
					<br />
					<br />
					<p>Influence from friends</p>
					<h2 style="margin-left: 95px; color: #00B7EB"><strong>8</strong></h2>
					<p style="margin-left: 55px">------------------</p>
					<p style="font-size: 18px; margin-left: 85px; color: #FF003F"><i>40%</i></p>
					<br />
					<br />
					<p style="margin-left: 55px">Passion in IT</p>
					<h2 style="margin-left: 95px; color: #00B7EB"><strong>1</strong></h2>
					<p style="margin-left: 55px">------------------</p>
					<p style="font-size: 18px; margin-left: 85px; color: #FF003F"><i>5%</i></p>
					<br />
					<br />
					<p style="margin-left: 50px">Module Contents</p>
					<h2 style="margin-left: 95px; color: #00B7EB"><strong>3</strong></h2>
					<p style="margin-left: 55px">------------------</p>
					<p style="font-size: 18px; margin-left: 85px; color: #FF003F"><i>15%</i></p>
					</div>
					<div style="float: right; width: 130px">
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					
					<p style="margin-top: 9px; margin-right:10px">Future Careers</p>
					<h2 style="margin-left: 40px; color: #00B7EB"><strong>3</strong></h2>
					<p>------------------</p>
					<p style="font-size: 18px; margin-left: 30px; color: #FF003F"><i>15%</i></p>
					<br />
					
					<p style="margin-top: 16px; margin-left: 22px">Family</p>
					<h2 style="margin-left: 40px; color: #00B7EB"><strong>2</strong></h2>
					<p>------------------</p>
					<p style="font-size: 18px; margin-left: 30px; color: #FF003F"><i>10%</i></p>
					<br />
					<p style="margin-top: 18px; margin-left: 22px">Others</p>
					<h2 style="margin-left: 40px; color: #00B7EB"><strong>3</strong></h2>
					<p>------------------</p>
					<p style="font-size: 18px; margin-left: 30px; color: #FF003F"><i>15%</i></p>
					
					</div>
				
					
				</div>
			</div>
			<div id="chart2">
				<div class="graph2">
					<h2>Percentage of males and females that are interested and not interested in IT Sector</h2>
					<?php include "loadchart2.php" ?>
				</div>
				<div class="analytic2">
					<div style="float: left; width: 380px">
					<p style="margin-left: 230px">Students</p>
					<h2 style="margin-left: 245px; color: #00B7EB"><strong>20</strong></h2>
					<p style="margin-left: 180px">Took part in this survey</p>
					<p style="font-size: 15px; margin-left: 240px; color: #32CD32"><i>100%</i></p>
					<br />
					<br />
					<br />
					<p style="margin-left: 55px">Men interested</p>
					<h2 style="margin-left: 95px; color: #00B7EB"><strong>10</strong></h2>
					<p style="margin-left: 55px">------------------</p>
					<p style="font-size: 18px; margin-left: 90px; color: #FF003F"><i>50%</i></p>
					<br />
					<br />
					<br />
					<br />
					<p style="margin-left: 45px">Female interested</p>
					<h2 style="margin-left: 95px; color: #00B7EB"><strong>7</strong></h2>
					<p style="margin-left: 55px">------------------</p>
					<p style="font-size: 18px; margin-left: 85px; color: #FF003F"><i>35%</i></p>
					</div>
					<div style="float: right; width: 190px">
					<br />
					<br />
					<br />
					<br />
					<br />
					<br />
					
					<p style="margin-top: 26px; margin-right:10px">Males uninterested</p>
					<h2 style="margin-left: 60px; color: #00B7EB"><strong>2</strong></h2>
					<p style="margin-left: 25px">------------------</p>
					<p style="font-size: 18px; margin-left: 52px; color: #FF003F"><i>10%</i></p>
					<br />
					<br />
					<br />
					<p style="margin-top: 18px; margin-right: 20px">Females uninterested</p>
					<h2 style="margin-left: 65px; color: #00B7EB"><strong>1</strong></h2>
					<p style="margin-left: 30px">------------------</p>
					<p style="font-size: 18px; margin-left: 60px; color: #FF003F"><i>15%</i></p>
					
					</div>
				</div>
			</div>
		
			<div class = "social">
				<h3 class = "titleofchart"> Share this graph to your friends </h3>
				<div class="fb-share-button" data-href="http://nypsitdev.edu.sg/itp132proj_2015s2/01a/pi/interest.php" data-layout="button_count"></div>
				<div id = "google">
				<!-- Place this tag where you want the share button to render. -->
				<div class="g-plus" data-action="share" data-annotation="bubble" data-href="http://nypsitdev.edu.sg/itp132proj_2015s2/01a/pi/interest.php"></div>
				</div>

				<h3 class = "titleofchart"> Comments </h3>
				<div class="fb-comments" data-href="http://nypsitdev.edu.sg/itp132proj_2015s2/01a/pi/interest.php" data-numposts="1"></div>
			</div>
		</div>
		<?php include "footer.php" ?>
	</body>
</html>