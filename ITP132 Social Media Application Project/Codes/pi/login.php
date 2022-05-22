<?php
require_once '../facebook-php-sdk-v4/src/Facebook/autoload.php';
require_once 'config.php';
session_start();

$fb = new Facebook\Facebook([
  'app_id' => $fb_app_id,
  'app_secret' => $fb_app_secret,
  'default_graph_version' => 'v2.4',
]);

$helper = $fb->getRedirectLoginHelper();
$permissions = ['email']; // Optional permissions
$loginUrl = htmlspecialchars($helper->getLoginUrl($base_url.'/fb-callback.php', $permissions));
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Login</title>
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
		
		#login {
			height: 600px;
		}
		
		.rightfacebook {
			margin-right: 130px;
		}
		
		#my-signin2 {
			margin-left: 75px;
		}
		</style>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<meta name="google-signin-client_id" content="568692009347-ip6i1dc918dpfv91ikik3f87op47biks.apps.googleusercontent.com">
		<script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>
		<script>
		function onSuccess(googleUser) {
		  var profile = googleUser.getBasicProfile();		  
		  $.ajax({
			url: 'gl-callback.php',
			type: 'POST',
			data: {
				"username": profile.getName(),
				"email": profile.getEmail(),
				"imageurl": profile.getImageUrl()
			},
			success: function (data) {
				$(location).attr('href', 'button.php');
			}
		  });
		}
		function onFailure(error) {
		  console.log(error);
		}
		function renderButton() {
		  gapi.signin2.render('my-signin2', {
		    'scope': 'https://www.googleapis.com/auth/plus.login',
			'width': 288,
			'height': 62,
			'longtitle': true,
			'theme': 'dark',
			'onsuccess': onSuccess,
			'onfailure': onFailure
		  });
		}
	</script>
	</head>
	<body>
		<?php include "loginheader.php" ?>
		
			<div id = "login">
				<div id = "userpass">
					<form action="loginresponse.php" method="post" id="login-form">
						<div class="left">
							<label for="username">Username</label> <br />
							<input type="username" name="username" id="username" /> <br />
							
							<label for="password">Password</label> <br />
							<input type="password" name="password" id="pass" /> <br />
							
							<input type="submit" value="Login" style="margin-left: 22%;"/>
						</div>
						<div class="right">
							<div class="connect">Connect with</div>
							<div class="rightfacebook"><a href='<?php echo $loginUrl?>'><img src="images/facebookbtn.png" /></a></div>
							<div id = "my-signin2"></div>
						</div>
						
						<a href="create.php" style="position: relative; top: 150px; right: 70px;">Create New Account</a>
					</form>  
				</div>
			</div>
		
		</div>
		<?php include "footer.php" ?>
	</body>
</html>
			