<!DOCTYPE html>
<html>
	<head>
		<title>Login Page</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	
		<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css' />
		<link rel="stylesheet" href="style.css" type='text/css' />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		<style>
			.back {
				margin-left: 45%;
				margin-top: 20px;
			}
			
			#register {
				margin-top: 15px;
			}
		</style>
		<script>
			$(document).ready(function() {
				$('#register').submit(function(event) {
					//Cancel the default action (navigation) submit			
					event.preventDefault();
					$.ajax({
						type: 'POST',
						url: 'register.php',
						data: $(this).serialize(),
						dataType: 'json',
						success: function (data) {
							console.log(data);
							$('#message').html(data.msg);
							if(!data.error)
								$('#submit').val("");
						}
					});
				});
			});
		</script>
		</head>
		<body>
			<?php include "loginheader.php" ?>
			<button class="back" onclick="window.location.href='login.php'" style="width: 120px; height: 30px;">Back to Login</button>
			<h1 style = "margin-left: 45%; margin-top: 10px;"> Sign Up </h1>
			
			<form method="post" name="register" id="register">
				<div class="input">
					<h3 style="float: left; margin-left: 30%;"> New Username: <h3>
					<input style="float: left; margin-left: 93px;" type="text" id="email" name="username">
					<br><br>
					<h3 style="float: left; margin-left: 30%;"> New Password: </h3>
					<input style="float: left; margin-left: 96px;" type="text" id="email" name="password">
					<br><br>
					<h3 style="float: left; margin-top: 5px; margin-left: 30%;"> Re-confirmed Password: </h3>
					<input style="float: left; margin-left: 15px; margin-top: 5px;" type="text" id="email" name="repassword">
					<br>
					<input type="submit" class="button" id="submit" value="Sign Up" style="width: 120px; height: 30px; clear: both; margin-top: 20px; margin-left: 45%;">
					<br><br>
				</div>
				<div style="text-align: center" id="message"></div>
				<br>
			</form>

			<?php include "footer.php" ?>
		</body>
	</html>