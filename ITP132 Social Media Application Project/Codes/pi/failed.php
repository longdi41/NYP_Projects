
<!DOCTYPE html>
<html>
	<head>
		<title>Login Page</title>
		<link rel = "stylesheet" href="style.css" type="text/css">
		<style>
		#header1 img {
			height: 80px;
			width: 80px;
			float: left;
			margin-left: 290px;
			margin-top: 40px;
		}

		#header1 h1 {
			font-size: 48px;
			width: 430px;
			float: left;
			margin-left: 5px;
			margin-top: 55px;
		}
		
		.message {
			text-align: center;
			margin-top: 15%;
			margin-bottom: 15%;
		}
		</style>
	</head>
	<body>
		<?php include "loginheader.php" ?>
		<div class = "message">
			<p style = "margin-bottom: 10%;">Please enter your username and password to use our application.</p>
			<button onclick="window.location.href='login.php'" style="width: 120px; height: 30px;">Back to Login</button>
		</div>
		</div>
		<?php include "footer.php" ?>
	</body>
</html>
			