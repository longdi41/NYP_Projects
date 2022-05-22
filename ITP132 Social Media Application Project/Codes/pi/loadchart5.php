<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>amCharts examples</title>
        <script src="../amchart/amcharts/amcharts.js" type="text/javascript"></script>
        <script src="../amchart/amcharts/serial.js" type="text/javascript"></script>
		
		<?php
			require_once dirname(__FILE__) . '/../Classes/PHPExcel.php';
			$objPHPExcel = PHPExcel_IOFactory::load('data.xlsx');
			$objWorksheet = $objPHPExcel->getActiveSheet();
			$highestRow = $objWorksheet->getHighestRow();
			
			$courses = [];
			$yesorno = [];
			
			for ($row = 2; $row <= $highestRow; $row++) {
				$cell = $objWorksheet->getCellByColumnAndRow(1, $row);
				$courses[] = $cell->getValue();
				
				$cell = $objWorksheet->getCellByColumnAndRow(9, $row);
				$yesorno[] = $cell->getValue();
			}
			
			$dit = $dbi = $dei = $dfi = $dbt = $dsf = 0;
			
			for ($i = 0; $i < count($courses); $i++) {
				if ($yesorno[$i] == "yes") {
					if ($courses[$i] == "dit") {
						$dit++;
					}
					else if ($courses[$i] == "dbi") {
						$dbi++;
					}
					else if ($courses[$i] == "dei") {
						$dei++;
					}
					else if ($courses[$i] == "dfi") {
						$dfi++;
					}
					else if ($courses[$i] == "dbt") {
						$dbt++;
					}
					else if ($courses[$i] == "dsf") {
						$dsf++;
					}
				}
			}
			

		?>
        <script>
            var barmotchart;

            var barmotchartData = [
                {
                   "Diploma": "DIT",
				   "StudentCount": "<?php echo $dit ?>",
                },
				 {
                   "Diploma": "DBI",
				   "StudentCount": "<?php echo $dbi ?>",
                },
				 {
                   "Diploma": "DEI",
				   "StudentCount": "<?php echo $dei ?>",
                },
				 {
                   "Diploma": "DFI",
				   "StudentCount": "<?php echo $dfi ?>",
                },
				 {
                   "Diploma": "DBT",
				   "StudentCount": "<?php echo $dbt ?>",
                },
				 {
                   "Diploma": "DSF",
				   "StudentCount": "<?php echo $dsf ?>",
                },
			];
            AmCharts.ready(function () {
                // SERIAL CHART
                barmotchart = new AmCharts.AmSerialChart();
                barmotchart.dataProvider = barmotchartData;
                barmotchart.categoryField = "Diploma";
                // the following two lines makes chart 3D
                barmotchart.depth3D = 20;
                barmotchart.angle = 30;

                // AXES
                // category
                var barmotcategoryAxis = barmotchart.categoryAxis;
                barmotcategoryAxis.labelRotation = 360;
                barmotcategoryAxis.dashLength = 5;
                barmotcategoryAxis.gridPosition = "start";

                // value
                var barmotvalueAxis = new AmCharts.ValueAxis();
                barmotvalueAxis.title = "Number of students";
                barmotvalueAxis.dashLength = 5;
                barmotchart.addValueAxis(barmotvalueAxis);

                // GRAPH
                var barmotgraph = new AmCharts.AmGraph();
                barmotgraph.valueField = "StudentCount";
                barmotgraph.colorField = "color";
				barmotgraph.fillColors = "#BCF5A9";
                barmotgraph.balloonText = "<span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>";
                barmotgraph.type = "column";
                barmotgraph.lineAlpha = 0;
                barmotgraph.fillAlphas = 1;
                barmotchart.addGraph(barmotgraph);

                // CURSOR
                var barmotchartCursor = new AmCharts.ChartCursor();
                barmotchartCursor.cursorAlpha = 0;
                barmotchartCursor.zoomable = false;
                barmotchartCursor.categoryBalloonEnabled = false;
                barmotchart.addChartCursor(barmotchartCursor);

                barmotchart.creditsPosition = "top-right";


                // WRITE
                barmotchart.write("chartdiv");
            });
        </script>
    </head>

    <body>
        <div id="chartdiv" style="width: 100%; height: 400px;"></div>
    </body>

</html>