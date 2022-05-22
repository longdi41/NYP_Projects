<!DOCTYPE HTML>
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
			$highestColumn = $objWorksheet->getHighestColumn();
			$highestColumnIndex = PHPExcel_Cell::columnIndexFromString($highestColumn);
			
			// Declare an array
			$diploma = [];
			$check = [];
			$before = [];
			$sem1 = [];
			$sem2 = [];
			
			// Initialise
			$ditno1 = $dbino1 = $deino1 = $dfino1 = $dbtno1 = $dsfno1 = 0;
			$ditbefore1 = $dbibefore1 = $deibefore1 = $dfibefore1 = $dbtbefore1 = $dsfbefore1 = 0;
			$dits11 = $dbis11 = $deis11 = $dfis11 = $dbts11 = $dsfs11 = 0;
			$dits21 = $dbis21 = $deis21 = $dfis21 = $dbts21 = $dsfs21 = 0;
			$dit4 = $dit5 = $dit6 = 0;
			$dbi4 = $dbi5 = $dbi6 = 0;
			$dei4 = $dei5 = $dei6 = 0;
			$dfi4 = $dfi5 = $dfi6 = 0;
			$dbt4 = $dbt5 = $dbt6 = 0;
			$dsf4 = $dsf5 = $dsf6 = 0;
			
			for ($row = 2; $row <= $highestRow; $row++) {
				// To collect which diploma you are in into $diploma array
				$cell = $objWorksheet->getCellByColumnAndRow(1, $row);
				$diploma[] = $cell->getValue();
				
				// To check whether they are motivated
				$cell = $objWorksheet->getCellByColumnAndRow(7, $row);
				$check[] = $cell->getValue();
				
				// To collect the data before, sem1, sem2
				$cell = $objWorksheet->getCellByColumnAndRow(4, $row);
				$before[] = $cell->getValue();
				
				$cell = $objWorksheet->getCellByColumnAndRow(5, $row);
				$sem1[] = $cell->getValue();
				
				$cell = $objWorksheet->getCellByColumnAndRow(6, $row);
				$sem2[] = $cell->getValue();
			}  
			
			// to store number of students (total of average)
			for ($h = 0; $h < count($diploma); $h++) {
				if ($diploma[$h] == "dit") {
					$ditno1 += 1;
				}
					
				else if ($diploma[$h] == "dbi") {
					$dbino1 += 1;
				}
					
				else if ($diploma[$h] == "dei") {
					$deino1 += 1;	
				}
					
				else if ($diploma[$h] == "dfi") {
					$dfino1 += 1;
				}
					
				else if ($diploma[$h] == "dbt") {
					$dbtno1 += 1;
				}
					
				else if ($diploma[$h] == "dsf") {
					$dsfno1 += 1;
				}
			}
			
			for ($i = 0; $i < count($diploma); $i++) {
				if ($check[$i] == "no") {
					if ($diploma[$i] == "dit") {
						$dit4 += $before[$i];
						$dit5 += $sem1[$i];
						$dit6 += $sem2[$i];
					}
					
					else if ($diploma[$i] == "dbi") {
						$dbi4 += $before[$i];
						$dbi5 += $sem1[$i];
						$dbi6 += $sem2[$i];
					}
					
					else if ($diploma[$i] == "dei") {
						$dei4 += $before[$i];
						$dei5 += $sem1[$i];
						$dei6 += $sem2[$i];
					}
					
					else if ($diploma[$i] == "dfi") {
						$dfi4 += $before[$i];
						$dfi5 += $sem1[$i];
						$dfi6 += $sem2[$i];
					}
					
					else if ($diploma[$i] == "dbt") {
						$dbt4 += $before[$i];
						$dbt5 += $sem1[$i];
						$dbt6 += $sem2[$i];
					}
					
					else if ($diploma[$i] == "dsf") {
						$dsf4 += $before[$i];
						$dsf5 += $sem1[$i];
						$dsf6 += $sem2[$i];
					}
				}
			}
			
			// Average 
			$ditbefore1 = $dit4 / $ditno1;
			$dbibefore1 = $dbi4 / $dbino1;
			$deibefore1 = $dei4 / $deino1;
			$dfibefore1 = $dfi4 / $dfino1;
			$dbtbefore1 = $dbt4 / $dbtno1;
			$dsfbefore1 = $dsf4 / $dsfno1;
			
			$dits11 = $dit5 / $ditno1;
			$dbis11 = $dbi5 / $dbino1;
			$deis11 = $dei5 / $deino1;
			$dfis11 = $dfi5 / $dfino1;
			$dbts11 = $dbt5 / $dbtno1;
			$dsfs11 = $dsf5 / $dsfno1;
			
			$dits21 = $dit6 / $ditno1;
			$dbis21 = $dbi6 / $dbino1;
			$deis21 = $dei6 / $deino1;
			$dfis21 = $dfi6 / $dfino1;
			$dbts21 = $dbt6 / $dbtno1;
			$dsfs21 = $dsf6 / $dsfno1;
			
		?>
        <script>
            var lineunmotchart;
			
             var lineunmotchartData = [
               {
                    "month": "Before",
                    "DIT": <?php echo round($ditbefore1,1)?>,
                    "DBI": <?php echo round($dbibefore1,1)?>,
                    "DEI": <?php echo round($deibefore1,1)?>,
					"DFI": <?php echo round($dfibefore1,1)?>,
					"DBT": <?php echo round($dbtbefore1,1)?>,
					"DSF": <?php echo round($dsfbefore1,1)?>
                },
				{
                    "month": "Sem 1",
                    "DIT": <?php echo round($dits11,1)?>,
                    "DBI": <?php echo round($dbis11,1)?>,
                    "DEI": <?php echo round($deis11,1)?>,
					"DFI": <?php echo round($dfis11,1)?>,
					"DBT": <?php echo round($dbts11,1)?>,
					"DSF": <?php echo round($dsfs11,1)?>
                },
				{
                    "month": "Sem 2",
                    "DIT": <?php echo round($dits21,1)?>,
                    "DBI": <?php echo round($dbis21,1)?>,
                    "DEI": <?php echo round($deis21,1)?>,
					"DFI": <?php echo round($dfis21,1)?>,
					"DBT": <?php echo round($dbts21,1)?>,
					"DSF": <?php echo round($dsfs21,1)?>
                },
            ];

            AmCharts.ready(function () {
                // SERIAL CHART
                lineunmotchart = new AmCharts.AmSerialChart();
                lineunmotchart.dataProvider = lineunmotchartData;
                lineunmotchart.categoryField = "month";
                lineunmotchart.startDuration = 0.5;
                lineunmotchart.balloon.color = "#000000";

                // AXES
                // category
                var categoryAxis = lineunmotchart.categoryAxis;
                categoryAxis.fillAlpha = 1;
                categoryAxis.fillColor = "#FAFAFA";
                categoryAxis.gridAlpha = 0;
                categoryAxis.axisAlpha = 0;
                categoryAxis.gridPosition = "start";
                categoryAxis.position = "top";
				
                // value
                var valueAxis = new AmCharts.ValueAxis();
                valueAxis.title = "Interest Level";
                valueAxis.dashLength = 5;
                valueAxis.axisAlpha = 0;
                valueAxis.minimum = 0;
                valueAxis.maximum = 10;
                valueAxis.integersOnly = true;
                valueAxis.gridCount = 10;
                lineunmotchart.addValueAxis(valueAxis);

                // GRAPHS
                // DIT graph
                var lineunmotgraph = new AmCharts.AmGraph();
                lineunmotgraph.title = "DIT";
                lineunmotgraph.valueField = "DIT";
                lineunmotgraph.balloonText = "Information Technology: [[value]]";
                lineunmotgraph.lineAlpha = 1;
                lineunmotgraph.bullet = "round";
                lineunmotchart.addGraph(lineunmotgraph);

                // DBA graph
                var lineunmotgraph = new AmCharts.AmGraph();
                lineunmotgraph.title = "DBI";
                lineunmotgraph.valueField = "DBI";
                lineunmotgraph.balloonText = "Business Informatics: [[value]]";
                lineunmotgraph.bullet = "round";
                lineunmotchart.addGraph(lineunmotgraph);

                // DEI graph
                var lineunmotgraph = new AmCharts.AmGraph();
                lineunmotgraph.title = "DEI";
				lineunmotgraph.valueField = "DEI";
                lineunmotgraph.balloonText = "Engineering Informatics: [[value]]";
                lineunmotgraph.bullet = "round";
                lineunmotchart.addGraph(lineunmotgraph);
				
				// DFI graph
                var lineunmotgraph = new AmCharts.AmGraph();
                lineunmotgraph.title = "DFI";
                lineunmotgraph.valueField = "DFI";
                lineunmotgraph.balloonText = "Financial Informatics: [[value]]";
                lineunmotgraph.bullet = "round";
                lineunmotchart.addGraph(lineunmotgraph);
				
				// DBT graph
                var lineunmotgraph = new AmCharts.AmGraph();
                lineunmotgraph.title = "DBT";
                lineunmotgraph.valueField = "DBT";
                lineunmotgraph.balloonText = "Business Enterprise IT: [[value]]";
                lineunmotgraph.bullet = "round";
                lineunmotchart.addGraph(lineunmotgraph);
				
				// DSF graph
                var lineunmotgraph = new AmCharts.AmGraph();
                lineunmotgraph.title = "DSF";
                lineunmotgraph.valueField = "DSF";
                lineunmotgraph.balloonText = "Cyber Security and Forensics: [[value]]";
                lineunmotgraph.bullet = "round";
                lineunmotchart.addGraph(lineunmotgraph);

                // CURSOR
                var lineunmotchartCursor = new AmCharts.ChartCursor();
                lineunmotchartCursor.cursorPosition = "mouse";
                lineunmotchartCursor.zoomable = false;
                lineunmotchartCursor.cursorAlpha = 0;
                lineunmotchart.addChartCursor(lineunmotchartCursor);
				
                // LEGEND
                var lineunmotlegend = new AmCharts.AmLegend();
                lineunmotlegend.useGraphSettings = true;
                lineunmotchart.addLegend(lineunmotlegend);

                // WRITE
                lineunmotchart.write("lineunmotchart");
            });
        </script>
    </head>

    <body>
        <div id="lineunmotchart" style="width: 100%; height: 400px;"></div>
    </body>

</html>