<!DOCTYPE html>
<html>
	<head>
		<title>Relevance Charts</title>
		<link rel="stylesheet" type="text/css" href="style.css">
		<style>
			#item-4 {
				background-color: #9ca3da;
			}
			
			.graph5 h2 {
				left: 312px;
				position: relative;
			}
			.graph6 h2 {
				position: relative;
				left: 312px;
			}
			
			.chartSize5 {
				width: 80%;
				margin-left: 66px;
			}
			
			.chart5 {
				margin-top: 50px;
				padding-top: 70px;
				border: 1px solid black;
				box-shadow: 6px 6px #888888;
				width: 1420px;
				height: 430px;
				margin-left: 75px;
				background: white;
			}
			
			.chartSize6 {
				width: 90%;
				margin-left: 66px;
			}
			
			.chart6 {
				margin-top: 30px;
				padding-top: 70px;
				padding-bottom: 28px;
				border: 1px solid black;
				box-shadow: 6px 6px #888888;
				width: 1420px;
				height: 420px;
				background: white;
				margin-left: 75px;
			}
			
			.graph5 {
				float: left;
			}
			
			.analytics5 {
				float: right;
				top: 80px;
				position: relative;
				right: 106px;
			}
			
			.graph6 {
				float: left;
			}
			
			.analytics6 {
				float: right;
				top: 110px;
				position: relative;
				right: 106px;
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
			
			em {
				color: #81F7D8;
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
		<div class="content">
			
			<div class="chart5">
				<div class="graph5">
					<h2>Number of students motivated by course relevance to their future careers</h2>
					<div class = "chartSize5">
						<?php include "loadchart5.php" ?>
						
					</div>
				</div>
				<div class="analytics5">
					<p>Diploma/s with <strong>most number of students</strong> motivated by</p>
					<p style = "margin-left: 35px;"><br />courses's relevance :</p>
					<p style = "margin-left: 15px;"><br />Diploma in <em>Cyber Security & Forensics</em></p>
					<p style = "margin-left: 15px;"><br />Diploma in <em>Financial Informatics</em></p>
					
					<p><br /><br />Diploma/s with <strong>least number of  students</strong> motivated by </p>
					<p style = "margin-left: 35px;"><br />courses's relevance :</p>
					<p style = "margin-left: 15px;"><br />Diploma in <em>Engineering Informatics</em></p>
					<p style = "margin-left: 15px;"><br />Diploma in <em>Business Informatics</em></p>
				</div>
			</div>
			<div class="chart6">
				<div class="graph6">
					<h2>Students interested in different field of study under SIT courses</h2>
					<div class = "chartSize6">
						<?php include "loadchart6.php" ?>
					</div>
				</div>
				<div class="analytics6">
					<p>Field of study that is <strong>most welcoming</strong> among students : </p>
					<p style = "margin-left: 15px;"><br />Field study <em>Business</em></p>
					<p><br />Field of study that is <strong>least welcoming</strong> among students :</p>
					<p style = "margin-left: 15px;"><br />Field study <em>Engineering</em></p>
				</div>
			</div>
			
			<div class = "social">
			<h2 class = "titleofchart">Share this graph to your friends </h2>
			<div class="fb-share-button" data-href="http://nypsitdev.edu.sg/itp132proj_2015s2/01a/pi/relevance.php" data-layout="button_count"></div>
			<div id = "google">
			<!-- Place this tag where you want the share button to render. -->
			<div class="g-plus" data-action="share" data-annotation="bubble" data-href="http://nypsitdev.edu.sg/itp132proj_2015s2/01a/pi/relevance.php"></div>
			</div>

			<h3 class = "titleofchart"> Comments </h3>
			<div class="fb-comments" data-href="http://nypsitdev.edu.sg/itp132proj_2015s2/01a/pi/relevance.php" data-numposts="1"></div>
		</div>
		</div>
		<?php include "footer.php" ?>
	</body>
</html>