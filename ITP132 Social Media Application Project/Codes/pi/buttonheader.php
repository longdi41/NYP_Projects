<?php
require_once '../facebook-php-sdk-v4/src/Facebook/autoload.php';
require_once 'config.php';
session_start();

$fb = new Facebook\Facebook([
  'app_id' => $fb_app_id,
  'app_secret' => $fb_app_secret,
  'default_graph_version' => 'v2.4',
]);

if(empty($_SESSION['username']))
{
	header("Location: login.php");
	exit();
}
$username = $_SESSION["username"];

if(isset($_SESSION['fb_access_token'])){
	$response = $fb->get('/me?fields=id,name,email', $_SESSION['fb_access_token']);
	$user = $response->getGraphUser();
	$image = "https://graph.facebook.com/".$user['id']."/picture?type=normal";
	$profile = "";
	$profile = "<img src='".$image."' />";
}
if(isset($_SESSION['profile'])){
	$image = $_SESSION['profile']['imageurl'];
	$profile = "<img src='".$image."' />";
}
?>
<link rel="stylesheet" href="style.css" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://apis.google.com/js/api:client.js"></script>
<script>
	$(document).ready(function() {
		gapi.load('auth2', function(){
			// Retrieve the singleton for the GoogleAuth library and set up the client.
			auth2 = gapi.auth2.init({
				client_id: '568692009347-ip6i1dc918dpfv91ikik3f87op47biks.apps.googleusercontent.com',
				cookiepolicy: 'single_host_origin',
				// Request scopes in addition to 'profile' and 'email'
				//scope: 'additional_scope'
			});
		});
	});
	function signOut() {
		var auth2 = gapi.auth2.getAuthInstance();
		auth2.signOut().then(function () {
		  console.log('User signed out.');
		});
		$(location).attr('href', 'logout.php');
	  }
</script>
<style>
* {
	font-family: Arial, sans-serif;
}

nav.two {
    display: block;
    background: #374147;
	position: fixed;
	width: 100%;
	top: 0px;
	z-index: 100;
}

.menu {
    display: block;
	margin-right: 60px;
	height: 58px;
}

.menu li {
    display: inline-block;
    position: relative;
    z-index: 100;
	top: 0;
}

.menu li:first-child {
    margin-left: 0;
}

.menu li a {
    font-weight: 600;
    text-decoration: none;
    padding: 20px 15px;
    display: block;
    color: #fff;
    transition: all 0.2s ease-in-out 0s;
}

.menu li a:hover,.menu li:hover>a {
    color: #fff;
    background: #35D359;
}

.menu ul {
    visibility: hidden;
    opacity: 0;
    margin: 0;
    padding: 0;
    width: 170px;
    position: absolute;
    left: 0px;
    background: #fff;
    z-index: 99;
    transform: translate(0,20px);
    transition: all 0.2s ease-out;
}

.menu ul:after {
    bottom: 100%;
    left: 20%;
    border: solid transparent;
    content: " ";
    height: 0;
    width: 0;
    position: absolute;
    pointer-events: none;
    border-color: rgba(255, 255, 255, 0);
    border-bottom-color: #fff;
    border-width: 6px;
    margin-left: -6px;
}

.menu ul li {
    display: block;
    float: none;
    background: none;
    margin: 0;
    padding: 0;
}

.menu ul li a {
    font-size: 12px;
    font-weight: normal;
    display: block;
    color: #797979;
    background: #fff;
}

.menu ul li a:hover,.menu ul li:hover>a {
    background: #9ca3da;
    color: #fff;
}

.menu li:hover>ul {
    visibility: visible;
    opacity: 1;
    transform: translate(0,0);
}

.menu ul ul {
    left: 169px;
    top: 0px;
    visibility: hidden;
    opacity: 0;
    transform: translate(20px,20px);
    transition: all 0.2s ease-out;
}

.menu ul ul:after {
    left: -6px;
    top: 10%;
    border: solid transparent;
    content: " ";
    height: 0;
    width: 0;
    position: absolute;
    pointer-events: none;
    border-color: rgba(255, 255, 255, 0);
    border-right-color: #fff;
    border-width: 6px;
    margin-top: -6px;
}

.menu li>ul ul:hover {
    visibility: visible;
    opacity: 1;
    transform: translate(0,0);
}

.responsive-menu {
    display: none;
    width: 100%;
    padding: 20px 15px;
    background: #374147;
    color: #fff;
    text-transform: uppercase;
    font-weight: 600;
}

.responsive-menu:hover {
    background: #374147;
    color: #fff;
    text-decoration: none;
}

.right {
	text-align: right;
}

.sub-menu li {
	text-align: left;
}

.photo img {
	margin-top: 8px; 
	margin-right: 5px;
	height: 40px;
	width: 40px;
}
</style>
<header>
<nav class="two">
<a id="resp-menu" class="responsive-menu" href="#"><i class="fa fa-reorder"></i></a>    
	<ul class="menu">
		<!--- On the left side ---->
		<li style="position: relative; top: 10px; left: 50px; float: left;">
			<img src = "images/logo.png" height="35" width="35" />
		</li>
		<li style= "position: relative; top: 18px; float: left; left: 60px; color: white; font-size: 20px;">
			<p>Pure Insanity</p>
		</li>
		
		<!--- On the right side ---->
		<li style = "float:right; margin-right: 5%;"><a href="#">Hi, <?php echo $username?>
		<img src = "images/arrow.png" style="position: relative; top: 2px;"height="14" width="15" />
		</a>
			<ul class="sub-menu">
			   <li><a href="#" onclick="signOut();" >Logout</a></li>
		   </ul>
	   </li>
	   	<li class = "photo" style = "float:right;">
			<?php echo $profile; ?>
		</li>
   </ul>
 </nav>
</header>
