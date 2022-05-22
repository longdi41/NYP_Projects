<!DOCTYPE html>
<html>
	<head>
		<title>Motivation Charts</title>
		<link rel="stylesheet" type="text/css" href="style.css">
		<style>
			.chart3a {
				margin-top: 100px;
				margin-left: 350px;
				width: 1440px;
				height: 480px;
				background-color: white;
				border: 1px solid black;
				box-shadow: 6px 6px #888888;
			}
			
			.chart3b {
				margin-top: 30px;
				margin-left: 350px;
				width: 1440px;
				height: 480px;
				background-color: white;
				border: 1px solid black;
				box-shadow: 6px 6px #888888; 
			}
			
			.chart4a {
				margin-top: 30px;
				margin-left: 350px;
				width: 1440px;
				height: 400px;
				background-color: white;
				border: 1px solid black;
				box-shadow: 6px 6px #888888;
			}
			
			.chart4b {
				margin-top: 30px;
				margin-left: 350px;
				width: 1440px;
				height: 400px;
				background-color: white;
				border: 1px solid black;
				box-shadow: 6px 6px #888888; 
			}
			
			.social {
				margin-top: 30px;
				margin-left: 350px;
				width: 1440px;
				height: 450px;
				background-color: white;
				border: 1px solid black;
			}
			
			.titleofchart {
				text-align: center;
				padding-top: 25px;
				
			}
			
			#linechart {
				height: 360px;
				width: 47%;
				float: left;
				margin-top: 20px;
			}
			
			#piechart {
				position: relative;
				bottom: 50px;
				height: 400px;
				width: 47%;
				float: left;
			}
			
			#analytics {
				float: left;
				margin-top: 27px;
				margin-left: 40px;
				width: 47%;
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
			
			.green {
				color: green;
				font-size: 25px;
			}
			
			.red {
				color: red;
				font-size: 25px;
			}
			
			.highlight {
				font-size: 25px;
				color: #00b1b3;
			}
			
			#analytics p {
				font-size: 20px;
			}
		</style>
	</head>
	<body>
		<!--- Facebook ---->
		<div id="fb-root"></div>
		<script>(function(d, s, id) {
		  var js, fjs = d.getElementsByTagName(s)[0];
		  if (d.getElementById(id)) return;
		  js = d.createElement(s); js.id = id;
		  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5&appId=548194132006233";
		  fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));</script>
		
		<!--- Google --->
		<!-- Place this tag in your head or just before your close body tag. -->
		<script src="https://apis.google.com/js/platform.js" async defer></script>

		<!--- Line Chart (Chart 3) --->
		<div class = "chart3a">
			<h3 class = "titleofchart">Interest Level for Motivated Students</h3>
			<div id = "linechart">
				<?php include "linemotchart.php"?>
			</div>
			<div id = "analytics">
				<p>Motivated students who <strong class="green">interested</strong> in the past but <strong class = "red">not interested</strong> recently:</p>
				<br />
				<p>DSF, DBI, DIT & DEI students</p>
					
				<br/>
				<br/>
				<hr width = "45%">
				<br />
				<br />
				
				<p>Motivated students who <strong class="red">not interested</strong> in the past but <strong class = "green">interested</strong> recently:</p>
				<br />
				<p>DBT & DFI students</p>
			</div>
		</div>
		
		<div class = "chart3b">
			<h3 class = "titleofchart">Interest Level for Unmotivated Students</h3>
			<div id = "linechart">
				<?php include "lineunmotchart.php"?>
			</div>
			<div id = "analytics">
				<p>Motivated students who <strong class="green">interested</strong> in the past but <strong class = "red">not interested</strong> recently:</p>
				<br />
				<p>DFI, DIT & DEI students</p>
					
				<br/>
				<br/>
				<hr width = "45%">
				<br />
				<br />
				
				<p>Motivated students who <strong class="red">not interested</strong> in the past but <strong class = "green">interested</strong> recently:</p>
				<br />
				<p>DBI students</p>
			</div>
		</div>
		
		<div class = "chart4a">
			<h3 class = "titleofchart">Reasons of Motivation in SIT</h3>
			<div id = "piechart">
				<?php include "piemotchart.php"?>
			</div>
			<div id = "analytics">
				<p><strong class = "highlight">Majority</strong> of students have motivation in SIT due to:-</p>
				<br />
				
				<p>- Activities in SIT</p>
				<p>- Hands-On Experience (Practical)</p>
				
				<br/>
				<br/>
				<hr width = "45%">
				<br />
				<br />
				
				<p>However, there are <strong class = "highlight">1</strong> student says that they are motivated due to lectures.</p>
				<br />
			</div>
		</div>
		
		<div class = "chart4b">
			<h3 class = "titleofchart">Reasons of Unmotivation in SIT</h3>
			<div id = "piechart">
				<?php include "pieunmotchart.php"?>
			</div>
			<div id = "analytics">
				<p><strong class = "highlight">Majority</strong> of students have no motivation in SIT due to:-</p>
				<br />
				
				<p>- Non-interest Modules</p>
				<p>- Difficult</p>
				
				<br/>
				<br/>
				<hr width = "45%">
				<br />
				<br />
				
				<p>However, there are <strong class = "highlight">1</strong> student says that they are not motivated due to boring lessons and work.</p>
				<br />
			</div>
		</div>

		<div class = "social">
			<h3 class = "titleofchart"> Share this graph to your friends </h3>
			<div class="fb-share-button" data-href="http://nypsitdev.edu.sg/itp132proj_2015s2/01a/pi/motivation.php" data-layout="button_count"></div>
			<div id = "google">
			<!-- Place this tag where you want the share button to render. -->
			<div class="g-plus" data-action="share" data-annotation="bubble" data-href="http://nypsitdev.edu.sg/itp132proj_2015s2/01a/pi/motivation.php"></div>
			</div>

			<h3 class = "titleofchart"> Comments </h3>
			<div class="fb-comments" data-href="http://nypsitdev.edu.sg/itp132proj_2015s2/01a/pi/motivation.php" data-numposts="1"></div>
		</div>
		
	
		<?php include "header.php" ?>
		<?php include "navbar.php" ?>

		
		<div style="clear:both">
			<br>
			<?php include "footer.php" ?>
			<br>
		</div>
	</body>
</html>