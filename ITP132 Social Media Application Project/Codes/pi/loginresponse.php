<?php
require_once dirname(__FILE__) . '/../Classes/PHPExcel.php';

if(empty($_POST["username"]) || empty($_POST["password"]))
{
	header("Location: failed.php");
	exit();
}

$objPHPExcel = PHPExcel_IOFactory::load('profile.xlsx');
$objWorksheet = $objPHPExcel->getActiveSheet(); 
$highestRow = $objWorksheet->getHighestRow(); 

$username = [];
$password = [];

for ($row = 2; $row <= $highestRow; $row++) {
	$cell = $objWorksheet->getCellByColumnAndRow(0, $row);
	$username[] = $cell->getValue();	

	$cell = $objWorksheet->getCellByColumnAndRow(1, $row);
	$password[] = $cell->getValue();
}

$chance = 0;
for ($i = 0; $i <= count($username); $i++) {
	if ($_POST["username"]!= $username[$i] || $_POST["password"]!= $password[$i])
	{
		$chance++;
	}
}

if ($chance != count($username)) {
	header("Location: failed.php");
	exit();
}

session_start();
$_SESSION['username']=strtolower($_POST['username']);
header("Location: button.php");
exit();
?>

