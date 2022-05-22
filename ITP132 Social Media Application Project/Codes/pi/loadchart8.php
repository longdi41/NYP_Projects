<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Chart 8</title>
        <link rel="stylesheet" href="style.css" type="text/css">
        <script src="../amchart/amcharts/amcharts.js" type="text/javascript"></script>
        <script src="../amchart/amcharts/serial.js" type="text/javascript"></script>
		<script src="https://www.amcharts.com/lib/3/serial.js"></script>
		<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
 
		<?php
			require_once dirname(__FILE__) . '/../Classes/PHPExcel.php';
			$objPHPExcel = PHPExcel_IOFactory::load('data.xlsx');
			$objWorksheet = $objPHPExcel->getActiveSheet(); 
			$highestRow = $objWorksheet->getHighestRow(); 
			$highestColumn = $objWorksheet->getHighestColumn();
			$highestColumnIndex = PHPExcel_Cell::columnIndexFromString($highestColumn);
			
			$reasons = [];
			$students = [];
			
			for ($row = 0; $row < $highestRow; $row++) {
				$cell = $objWorksheet->getCellByColumnAndRow(12, $row);
				$reasons[] = $cell->getValue();
			}
			
			$option1 = 0;
			$option2 = 0;
			$option3 = 0;
			$option4 = 0;
			
			for ($i=0; $i<count($reasons); $i++) {
				if ($reasons[$i] == "Better IT Opportunities") {
					$option1++;
				}
				
				else if ($reasons[$i] == "Provide decent pay") {
					$option2++;
				}
				
				else if ($reasons[$i] == "IT is influential to our daily lives") {
					$option3++;
				}
				
				else if ($reasons[$i] == "More IT industries") {
					$option4++;
				}
				
			}			
		?>
        <script>
            var echart;

            var echartData = [           
			{
                    "reasons": "Better IT Opportunities",
                    "Number of Students": <?php echo $option1 ?>,
                    "color": "#ff8080"
            },
			{
                    "reasons": "Provide decent pay",
                    "Number of Students": <?php echo $option2 ?>,
                    "color": "#ffff66"
            },
			{
                    "reasons": "IT is influential to our daily lives",
                    "Number of Students": <?php echo $option3 ?>,
                    "color": " #ff9966"
            },
			{
                    "reasons": "More IT industries",
                    "Number of Students": <?php echo $option4 ?>,
                    "color": " #ffcc66"
            },
			];

            AmCharts.ready(function () {
                // SERIAL CHART
                echart = new AmCharts.AmSerialChart();
                echart.dataProvider = echartData;
                echart.categoryField = "reasons";
                echart.startDuration = 1;

                // AXES
                // category
                var categoryAxis = echart.categoryAxis;
				categoryAxis.labelRotation = 0; // this line makes category values to be rotated
                categoryAxis.gridAlpha = 0;
                categoryAxis.fillAlpha = 0;
                categoryAxis.fillColor = "#FAFAFA";
                categoryAxis.gridPosition = "start";
				categoryAxis.title = "Reasons";
				categoryAxis.align= "right";

                // value
                var valueAxis = new AmCharts.ValueAxis();
                valueAxis.dashLength = 5;
                valueAxis.title = "Number of Students";
                valueAxis.axisAlpha = 0;
                echart.addValueAxis(valueAxis);

                // GRAPH
                var egraph = new AmCharts.AmGraph();
                egraph.valueField = "Number of Students";
                egraph.colorField = "color";
                egraph.balloonText = "<b>[[category]]: [[value]]</b>";
                egraph.type = "column";
                egraph.lineAlpha = 0;
                egraph.fillAlphas = 1;
				egraph.columnWidth = 0.6;
				egraph.columnSpacing = 20;
                echart.addGraph(egraph);

                // CURSOR
                var echartCursor = new AmCharts.ChartCursor();
                echartCursor.cursorAlpha = 0;
                echartCursor.zoomable = false;
                echartCursor.categoryBalloonEnabled = false;
                echart.addChartCursor(echartCursor);

                echart.creditsPosition = "top-right";

                // WRITE
                echart.write("chart2divv");
            });
        </script>
    </head>

    <body>
        <div id="chart2divv" style="width: 680px; height: 400px;"></div>
    </body>

</html>