<?php
$fb_app_id = '548194132006233';
$fb_app_secret = '27a6384eb1f039b5b1bec9bf7f552cc3';

$domainName = $_SERVER['HTTP_HOST'];
$appFolder = substr($_SERVER['SCRIPT_NAME'], 0, strrpos($_SERVER['SCRIPT_NAME'],'/'));
$base_url = "http://" . $domainName . "/" . $appFolder;
?>