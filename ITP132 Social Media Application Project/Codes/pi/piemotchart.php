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
			
			$lectures = $events = $tutorials = $facilities = $practical = $activity = $others = 0;
			
			for ($i = 0; $i < count($motorunmot); $i++) {
				if ($motorunmot[$i] == "yes") {
					if ($reasons[$i] == "lectures") {
						$lectures++;
					}
					else if ($reasons[$i] == "events") {
						$events++;
					}
					else if ($reasons[$i] == "tutorials") {
						$tutorials++;
					}
					else if ($reasons[$i] == "facilities") {
						$facilities++;
					}
					else if ($reasons[$i] == "hands-on") {
						$practical++;
					}
					else if ($reasons[$i] == "activity") {
						$activity++;
					}
					else if ($reasons[$i] == "other motivation reasons") {
						$others++;
					}
				}
			}
		?>	
		
		<script>
			var piemotchart;
			var piemotlegend;
			
			var piemotchartData = [
				{
				reasons: "Lectures",
				studentcount: <?php echo $lectures?>,
				},
				{
				reasons: "SIT Events",
				studentcount: <?php echo $events?>,
				},
				{
				reasons: "Tutorials",
				studentcount: <?php echo $tutorials?>,
				},
				{
				reasons: "NYP Facilities",
				studentcount: <?php echo $facilities?>,
				},
				{
				reasons: "Hands-On Experience",
				studentcount: <?php echo $practical?>,
				},
				{
				reasons: "Activities in SIT",
				studentcount: <?php echo $activity?>,
				},
				{
				reasons: "Other Reasons",
				studentcount: <?php echo $others?>,
				},
			]
			
			AmCharts.ready(function () {
                // PIE CHART
                piemotchart = new AmCharts.AmPieChart();
                piemotchart.dataProvider = piemotchartData;
                piemotchart.titleField = "reasons";
                piemotchart.valueField = "studentcount";
                piemotchart.outlineColor = "#FFFFFF";
                piemotchart.outlineAlpha = 0.8;
                piemotchart.outlineThickness = 2;

                // WRITE
                piemotchart.write("piemotchart");
            });
        </script>
    </head>

    <body>
        <div id="piemotchart" style="width: 100%; height: 400px;"></div>
    </body>

</html>