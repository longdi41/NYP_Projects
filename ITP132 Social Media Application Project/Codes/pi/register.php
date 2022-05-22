<?php
/** Include PHPExcel */
require_once dirname(__FILE__) . '/../Classes/PHPExcel.php';
require_once dirname(__FILE__) . '/../Classes/PHPExcel/Writer/Excel2007.php';
	
//Put form elements into post variables (this is where you would sanitize your data)
$username = @$_POST['username'];
$password = @$_POST['password'];
$repassword = @$_POST['repassword'];

//Establish values that will be returned via ajax
$return = array();
$return['msg'] = '';
$return['error'] = false;

//Begin form validation functionality
if (empty($username) || empty($password) || empty($repassword)) {
	$return['error'] = true;
	$return['msg'] .= 'Register failed! (Empty username and password)';
} 				

if ($password != $repassword) {
	$return['error'] = true;
	$return['msg'] = 'Register failed! (Password is not matched!)';
}

//Begin form success functionality
if ($return['error'] == false){
	$return['msg'] .= 'Success! Click <a href="login.php">here</a> to login!';
	
	$objPHPExcel = PHPExcel_IOFactory::load('profile.xlsx');
	$objWorksheet = $objPHPExcel->getActiveSheet(); 
	$row = $objWorksheet->getHighestRow() + 1;
	$objWorksheet->setCellValue('A'.$row, $username);
	$objWorksheet->setCellValue('B'.$row, $password);
	
	$writer = new PHPExcel_Writer_Excel2007($objPHPExcel);
	$writer->save('profile.xlsx');
}

//Return json encoded results
echo json_encode($return);
?>
