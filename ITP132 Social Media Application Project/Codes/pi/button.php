<!DOCTYPE html>
<html>
	<head>
		<title>Welcome</title>
		<link rel="stylesheet" type="text/css" href="style.css" media="all">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	</head>
	
	<style>
		body {
			width: 100%;
			height: 100%;
			margin: 0 auto;
			
		}
		.image {
			width: 250px;
			height: 250px;
		}
		
		h1 {
			text-align: center;
		}
		
		a {
			text-decoration: none;
		}
		
		a:link, a:active, a:visited {
			color: black;
		}
		
		a:hover {
			color:  #ff704d;
		}
		
		#select {
			height: auto;
			padding-top: 100px;
			width: 1200px;
			margin-left: auto;
			margin-right: auto;
		}
		
		#click {
			padding: 25px;
		}
		
		#interest {
			display: inline-block;
			margin-left: 95px;
			margin-top: 180px;
		}
		
		#motivation {
			display: inline-block;
			position: fixed;
			left: 50px;
		}
		
		#relevance {
			display: inline-block;
			position: fixed;
			left: 100px;
		}
		
		#career {
			display: inline-block;
			position: fixed;
			left: 150px;
		}
		
		#interest, #motivation, #relevance, #career{
			display: inline-block;
			position: relative;
			z-index: 0;
			margin: 2px 2px 2px -2px;
			transition: all .15s ease-in-out;
			background: white;
		}
			
		#interest:hover, #motivation:hover, #relevance:hover, #career:hover {
			z-index: 100;
			transform: scale(1.2,1.2);				
			box-shadow: 0 5px 10px 0 rgba(0,0,0,.2);
		}
		
	</style>
	
	<body>
		<?php include "buttonheader.php" ?>
		
		<div class = "contentbutton">

			
			<!------ 4 charts button ------->
			<div id = "select" style="zoom:1.4">
			
			<h1>Please select one category to begin: </h1>
			<br/>
				<div id = "click">
				<!--- Interest ---->
					<a href = "interest.php">
					<div id = "interest">
						<img src = "images/earth.jpg" class = "image" id = "button" />
						<div id = "des">
						<h3 class = "title1">Interest</h3>
						<p class = "click1">Click to find out more..</p>
						</div>
					</div>
					</a>
					
				<!---- Motivation ----->
					<a href = "motivation.php">
					<div id = "motivation">
						<img src = "images/motivation.jpg" class = "image" id = "button" />
						<h3 class = "title2">Motivation</h3>
						<p class = "click2">Click to find out more..</p>
					</div>
					</a>
					
				<!---- Course Relevance ----->
					<a href = "relevance.php">
					<div id = "relevance">
						<img src = "images/relevance.jpg" class = "image" id = "button" />
						<h3 class = "title3">Course Relevance</h3>
						<p class = "click3">Click to find out more..</p>
					</div>
					</a>
					
				<!------ Career---------->
					<a href = "career.php">
					<div id = "career">
						<img src = "images/career.jpg" class = "image" id = "button" />
						<h3 class = "title4">Career</h3>
						<p class = "click4">Click to find out more..</p>
					</div>
					</a>
				</div>	
				<br><br>
				<?php include 'footer.php'?>
			</div>
			
	</body>
</html>