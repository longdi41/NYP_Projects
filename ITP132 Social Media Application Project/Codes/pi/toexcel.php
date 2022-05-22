<?php
/** Include PHPExcel */
require_once dirname(__FILE__) . '/../Classes/PHPExcel.php';
require_once dirname(__FILE__) . '/../Classes/PHPExcel/Writer/Excel2007.php';
	
//Put form elements into post variables (this is where you would sanitize your data)
$gender = @$_POST['gender'];
$course = @$_POST['course'];
$chart1 = @$_POST['chart1qns'];
$chart2 = @$_POST['chart2qns'];
$before = @$_POST['before'];
$semester1 = @$_POST['s1'];
$semester2 = @$_POST['s2'];
$motivationqns = @$_POST['motivationqns'];
$chart4 = @$_POST['chart4qns'];
$chart5 = @$_POST['chart5qns'];
$chart6 = @$_POST['chart6qns'];
$chart7 = @$_POST['chart7qns'];
$chart8 = @$_POST['chart8qns'];

//Establish values that will be returned via ajax
$return = array(); // Declare $return array
$return['msg'] = '';
$return['error'] = false;

//Begin form validation functionality
if (empty($gender) || empty($course) || empty($chart1) || empty($chart2) || empty($motivationqns) || empty($chart4) || empty($chart5) || empty($chart6) || empty($chart7) || empty($chart8)) {
	$return['error'] = true;
	$return['msg'] .= 'Please check again whether you finish the survey before submitting!!!';
} 
else {
	if ($motivationqns == "yes") {
		if ($chart4 == "timetable" || $chart4 == "lectures unmotivation" || $chart4 == "boring" || $chart4 == "difficult" || $chart4 == "no interest" || $chart4 == "other unmotivation reasons") {
			$return['error'] = true;
			$return['msg'] .= 'Please check again becase you never read the instructions properly!!!';
		}
	}

	else if ($motivationqns == "no") {
		if ($chart4 == "lectures" || $chart4 == "events" || $chart4 == "tutorials" || $chart4 == "facilities" || $chart4 == "hands-on" || $chart4 == "activity" || $chart4 == "other motivation reasons") {
			$return['error'] = true;
			$return['msg'] .= 'Please check again because you never read the instructions properly!!!';
		}
	}
}
//Begin form success functionality
if ($return['error'] == false){
		$return['msg'] .= 'Thank you for your response! <br>Click <a href="button.php">here</a> to return!';
		
		$objPHPExcel = PHPExcel_IOFactory::load('data.xlsx');
		$objWorksheet = $objPHPExcel->getActiveSheet(); 
		$row = $objWorksheet->getHighestRow() + 1;
		$objWorksheet->setCellValue('A'.$row, $gender);
		$objWorksheet->setCellValue('B'.$row, $course);
		$objWorksheet->setCellValue('C'.$row, $chart1);
		$objWorksheet->setCellValue('D'.$row, $chart2);
		$objWorksheet->setCellValue('E'.$row, $before);
		$objWorksheet->setCellValue('F'.$row, $semester1);
		$objWorksheet->setCellValue('G'.$row, $semester2);
		$objWorksheet->setCellValue('H'.$row, $motivationqns);
		$objWorksheet->setCellValue('I'.$row, $chart4);
		$objWorksheet->setCellValue('J'.$row, $chart5);
		$objWorksheet->setCellValue('K'.$row, $chart6);
		$objWorksheet->setCellValue('L'.$row, $chart7);
		$objWorksheet->setCellValue('M'.$row, $chart8);
		
		$writer = new PHPExcel_Writer_Excel2007($objPHPExcel);
		$writer->save('data.xlsx');
}

//Return json encoded results
echo json_encode($return);
?>
