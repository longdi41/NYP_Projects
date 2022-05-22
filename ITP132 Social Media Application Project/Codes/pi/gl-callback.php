<?php
session_start();

if (isset($_POST["username"])) {
	
	$_SESSION["username"] = $_POST["username"];
	$_SESSION["profile"]["username"] = $_POST["username"];
	$_SESSION["profile"]["email"] = $_POST["email"];
	$_SESSION["profile"]["imageurl"] = $_POST["imageurl"];
	echo $_POST["username"];
}
?>