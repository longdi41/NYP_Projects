<!DOCTYPE HTML>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>amCharts examples</title>
        <script src="../amchart/amcharts/amcharts.js" type="text/javascript"></script>
        <script src="../amchart/amcharts/pie.js" type="text/javascript"></script>
		
		<?php    
			require_once dirname(__FILE__) . '/../Classes/PHPExcel.php';
			$objPHPExcel = PHPExcel_IOFactory::load('data.xlsx');
			$objWorksheet = $objPHPExcel->getActiveSheet(); 
			$highestRow = $objWorksheet->getHighestRow(); 
			$highestColumn = $objWorksheet->getHighestColumn();
			$highestColumnIndex = PHPExcel_Cell::columnIndexFromString($highestColumn);

			$motorunmot = [];
			$reasons = [];
			
			for ($row = 2; $row <= $highestRow; $row++) {
				$cell = $objWorksheet->getCellByColumnAndRow(7, $row);
				$motorunmot[] = $cell->getValue();	
				
				$cell = $objWorksheet->getCellByColumnAndRow(8, $row);
				$reasons[] = $cell->getValue();	
			}
			
			$timetable = $lecturesun = $boring = $difficult = $xinterest = $other = 0;
			
			for ($i = 0; $i < count($motorunmot); $i++) {
				if ($motorunmot[$i] == "no") {
					if ($reasons[$i] == "timetable") {
						$timetable++;
					}
					else if ($reasons[$i] == "lectures unmotivation") {
						$lecturesun++;
					}
					else if ($reasons[$i] == "boring") {
						$boring++;
					}
					else if ($reasons[$i] == "difficult") {
						$difficult++;
					}
					else if ($reasons[$i] == "no interest") {
						$xinterest++;
					}
					else if ($reasons[$i] == "other unmotivation reasons") {
						$other++;
					}
				}
			}
		?>	
		
		<script>
			var pieunmotchart;
			var pieunmotlegend;
			
			var pieunmotchartData = [
			{
				reasons: "Timetables",
				studentcount: <?php echo $timetable?>,
				},
				{
				reasons: "Lectures",
				studentcount: <?php echo $lecturesun?>,
				},
				{
				reasons: "Boring",
				studentcount: <?php echo $boring?>,
				},
				{
				reasons: "Difficult",
				studentcount: <?php echo $difficult?>,
				},
				{
				reasons: "Non-interest Modules",
				studentcount: <?php echo $xinterest?>,
				},
				{
				reasons: "Other Reasons",
				studentcount: <?php echo $other?>,
				},
			]
			
			AmCharts.ready(function () {
                // PIE CHART
                pieunmotchart = new AmCharts.AmPieChart();
                pieunmotchart.dataProvider = pieunmotchartData;
                pieunmotchart.titleField = "reasons";
                pieunmotchart.valueField = "studentcount";
                pieunmotchart.outlineColor = "#FFFFFF";
                pieunmotchart.outlineAlpha = 0.8;
                pieunmotchart.outlineThickness = 2;

                // WRITE
                pieunmotchart.write("pieunmotchart");
            });
        </script>
    </head>

    <body>
        <div id="pieunmotchart" style="width: 100%; height: 400px;"></div>
    </body>

</html>