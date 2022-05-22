<!DOCTYPE html>
<html>
	<head>
		<title>Career Charts</title>
		<link rel="stylesheet" type="text/css" href="style.css">
	
		<style>
			#item-5 {
				background-color: #9ca3da;
			}
			
			#chart7 {
				padding-top: 15px;
				border: 1px solid black;
				box-shadow: 6px 6px #888888;
				width: 1440px;
				height: 500px;
				background-color: white;		
			}
				
			#chart8 {
				padding-top: 15px;
				border: 1px solid black;					
				box-shadow: 6px 6px #888888;
				width: 1440px;
				height: 500px;
				margin-left: 5px;
				margin-top: 30px;
				background-color: white;
			}
			
			h2 {
				text-align: center;
			}
			
			#analytics7 {
				position:relative;
				left: 680px;
				bottom: 380px;
				font-size: 20px;
				width: 51%;
			}
			
			#analytics8 {
				position: relative;
				left: 730px;
				bottom: 320px;
				font-size: 20px;
				
			}
			
			#analytics7 .highlight {
				font-size: 23px;
				color: #00b1b3;
			}
			
			#analytics8 .highlight {
				font-size: 23px;
				color: #00b1b3;
			}
			
			#analytics8 .highlight2 {
				font-size: 21px;
				color: #00b36a;
			}
			
			hr {
				display: block;
				border-style: dashed;
			}
			
			#graphs {
				margin-left: 60px;
			}
			
			.social {
				margin-top: 30px;
				margin-left: 65px;
				width: 1440px;
				height: 420px;
				background-color: white;
				border: 1px solid black;
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
	
	<!--Google --->
	<script src="https://apis.google.com/js/platform.js" async defer></script>


		<?php include "header.php" ?>
		<?php include "navbar.php" ?>
		
		<div class = "content">
		<div id = "graphs">
		
			<div id = "chart7">
				<h2>Number of Y1 students interested working in IT sector</h2>
				<div id = "grapha">
					<?php include "loadchart7.php" ?>
				</div>
				<div id = "analytics7">
					<p>Most students from the following diplomas are <strong class="highlight">interested</strong> working in IT sector:</p>
					<br />
					<p>Diploma in <em><strong>Information Technology</em></strong></p>
					<br />
					<p>Diploma in <em><strong>Cyber Security and Forensics</em></strong></p>
					
					<br/>
					<br/>
					<hr width = "42%">
					<br />
					<br />
					
					<p>Most students from the following diplomas are <strong class="highlight">NOT interested</strong> working in IT sector:</p>
					<br />
					<p>Diploma in <em><strong>Business Informatics</em></strong></p>
					<br />
					<p>Diploma in <em><strong>Business Enterprise IT</em></strong></p>
					<br />
					<p>Diploma in <em><strong>Financial Informatics</em></strong></p>
				</div>
			</div>
			
			<div id = "chart8">
				<h2>Reasons to work in IT sector</h2>
				<div id = "graphb">
					<?php include "loadchart8.php" ?>
				</div>
				<div id = "analytics8">
					<p><strong class="highlight">6</strong> students think that <strong class="highlight">IT sector</strong> can provide:</p>
					<br />
					<p>- a <strong class="highlight2">decent</strong> salary</p> 
					<br/>
					<p>- <strong class="highlight2">better</strong> job opportunities</p>
					
					<br />
					<br />
					<hr width="42%">
					<br />
					<br/>
					
					<p><strong class="highlight">Only 3</strong> students chose <strong class="highlight2">IT industries </strong> as their choice.</p>
				</div>
			</div>
		</div>	
			
		<div class = "social">
			<h2 class = "titleofchart">Share this graph to your friends </h2>
			<div class="fb-share-button" data-href="http://nypsitdev.edu.sg/itp132proj_2015s2/01a/pi/career.php" data-layout="button_count"></div>
			<div id = "google">
			<!-- Place this tag where you want the share button to render. -->
			<div class="g-plus" data-action="share" data-annotation="bubble" data-href="http://nypsitdev.edu.sg/itp132proj_2015s2/01a/pi/career.php"></div>
			</div>

			<h3 class = "titleofchart"> Comments </h3>
			<div class="fb-comments" data-href="http://nypsitdev.edu.sg/itp132proj_2015s2/01a/pi/career.php" data-numposts="1"></div>
		</div>
		
		
		</div>
		<div style="clear:both">
			<br>
			<?php include "footer.php" ?>
			<br>
		</div>
	</body>
</html>