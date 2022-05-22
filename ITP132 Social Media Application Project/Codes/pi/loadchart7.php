<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Chart 7</title>
        <link rel="stylesheet" href="style.css" type="text/css">
        <script src="../amchart/amcharts/amcharts.js" type="text/javascript"></script>
        <script src="../amchart/amcharts/serial.js" type="text/javascript"></script>
		
		<?php
			require_once dirname(__FILE__) . '/../Classes/PHPExcel.php';
			$objPHPExcel = PHPExcel_IOFactory::load('data.xlsx');
			$objWorksheet = $objPHPExcel->getActiveSheet(); 
			$highestRow = $objWorksheet->getHighestRow(); 
			$highestColumn = $objWorksheet->getHighestColumn();
			$highestColumnIndex = PHPExcel_Cell::columnIndexFromString($highestColumn);
			
			$diploma = [];
			$yesorno = [];
			for ($row = 0; $row <= $highestRow; $row++ ) {
				$cell = $objWorksheet->getCellByColumnAndRow(1, $row);
				$diploma[] = $cell->getValue();
				
				$cell = $objWorksheet->getCellByColumnAndRow(11, $row);
				$yesorno[] = $cell->getValue();
			}
			
			$yes[] = 7;
			$no[] = 7;
			$dityes = $dbiyes = $deiyes = $dfiyes = $dbtyes = $dsfyes = 0;
			$ditno = $dbino = $deino = $dfino = $dbtno = $dsfno = 0;
			for ($i = 0; $i < count($diploma);$i++) {
				if ($diploma[$i] == "dit") {
					if ($yesorno[$i] == "yes") {
						$dityes += 1; 
					}
					else if ($yesorno[$i] == "no") {
						$ditno += 1;
					}
				}
				
				else if ($diploma[$i] == "dbi") {
					if ($yesorno[$i] == "yes") {
						$dbiyes += 1; 
					}
					else if ($yesorno[$i] == "no") {
						$dbino += 1;
					}
				}
				
				else if ($diploma[$i] == "dei") {
					if ($yesorno[$i] == "yes") {
						$deiyes += 1; 
					}
					else if ($yesorno[$i] == "no") {
						$deino += 1;
					}
				}
				
				else if ($diploma[$i] == "dfi") {
					if ($yesorno[$i] == "yes") {
						$dfiyes += 1; 
					}
					else if ($yesorno[$i] == "no") {
						$dfino += 1;
					}
				}
				
				else if ($diploma[$i] == "dbt") {
					if ($yesorno[$i] == "yes") {
						$dbtyes += 1; 
					}
					else if ($yesorno[$i] == "no") {
						$dbtno += 1;
					}
				}
				
				else if ($diploma[$i] == "dsf") {
					if ($yesorno[$i] == "yes") {
						$dsfyes += 1; 
					}
					else if ($yesorno[$i] == "no") {
						$dsfno += 1;
					}
				}
			}
		?>
        <script>
            var chart;

           var chartData = [
                {
                    "diploma": "DIT",
					"Yes": "<?php echo $dityes ?>",
					"No": "<?php echo $ditno ?>",
                },
				{
                    "diploma": "DBI",
					"Yes": "<?php echo $dbiyes ?>",
					"No": "<?php echo $dbino ?>",
                },
				{
                    "diploma": "DEI",
					"Yes": "<?php echo $deiyes ?>",
					"No": "<?php echo $deino ?>",
                },
				{
                    "diploma": "DFI",
					"Yes": "<?php echo $dfiyes ?>",
					"No": "<?php echo $dfino ?>",
                },
				{
                    "diploma": "DBT",
					"Yes": "<?php echo $dbtyes ?>",
					"No": "<?php echo $dbtno ?>",
                },
				{
                    "diploma": "DSF",
					"Yes": "<?php echo $dsfyes ?>",
					"No": "<?php echo $dsfno ?>",
                },
            ];

            AmCharts.ready(function () {
                // SERIAL CHART
                chart = new AmCharts.AmSerialChart();
                chart.dataProvider = chartData;
                chart.categoryField = "diploma";
                chart.plotAreaBorderAlpha = 0.2;
				

                // AXES
                // category
                var categoryAxis = chart.categoryAxis;
                categoryAxis.gridAlpha = 0.1;
                categoryAxis.axisAlpha = 0;
                categoryAxis.gridPosition = "start";
				categoryAxis.title = "Diplomas";
				

                // value
                var valueAxis = new AmCharts.ValueAxis();
                valueAxis.stackType = "regular";
                valueAxis.gridAlpha = 0.1;
                valueAxis.axisAlpha = 0;
				valueAxis.title = "Number of Students"
                chart.addValueAxis(valueAxis);

                // GRAPHS
                // first graph
                var graph = new AmCharts.AmGraph();
                graph.title = "Yes";
                graph.labelText = "[[value]]";
                graph.valueField = "Yes";
                graph.type = "column";
                graph.lineAlpha = 0;
                graph.fillAlphas = 1;
                graph.lineColor = "#ffff66";
                graph.balloonText = "<span style='color:#555555;'>[[category]]</span><br><span style='font-size:14px'>[[title]]:<b>[[value]]</b></span>";
                chart.addGraph(graph);

                // second graph
                graph = new AmCharts.AmGraph();
                graph.title = "No";
                graph.labelText = "[[value]]";
                graph.valueField = "No";
                graph.type = "column";
                graph.lineAlpha = 0;
                graph.fillAlphas = 1;
                graph.lineColor = "#ccff33";
                graph.balloonText = "<span style='color:#555555;'>[[category]]</span><br><span style='font-size:14px'>[[title]]:<b>[[value]]</b></span>";
                chart.addGraph(graph);

                // LEGEND
                var legend = new AmCharts.AmLegend();
                legend.borderAlpha = 0.2;
                legend.horizontalGap = 10;
                chart.addLegend(legend);

                // WRITE
                chart.write("chartdiv");
            });

            // this method sets chart 2D/3D
            function setDepth() {
                if (document.getElementById("rb1").checked) {
                    chart.depth3D = 0;
                    chart.angle = 0;
                } else {
                    chart.depth3D = 25;
                    chart.angle = 30;
                }
                chart.validateNow();
            }
        </script>
    </head>

    <body>
        <div id="chartdiv" style="width: 650px; height: 400px;"></div>
        <div style="margin-left:30px;">
	        <input type="radio" checked="true" name="group" id="rb1" onclick="setDepth()">2D
	        <input type="radio" name="group" id="rb2" onclick="setDepth()">3D
		</div>
    </body>

</html>