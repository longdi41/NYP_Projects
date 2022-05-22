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
			$ditno = $dbino = $deino = $dfino = $dbtno = $dsfno = 0;
			$ditbefore = $dbibefore = $deibefore = $dfibefore = $dbtbefore = $dsfbefore = 0;
			$dits1 = $dbis1 = $deis1 = $dfis1 = $dbts1 = $dsfs1 = 0;
			$dits2 = $dbis2 = $deis2 = $dfis2 = $dbts2 = $dsfs2 = 0;
			$dit1 = $dit2 = $dit3 = 0;
			$dbi1 = $dbi2 = $dbi3 = 0;
			$dei1 = $dei2 = $dei3 = 0;
			$dfi1 = $dfi2 = $dfi3 = 0;
			$dbt1 = $dbt2 = $dbt3 = 0;
			$dsf1 = $dsf2 = $dsf3 = 0;
			
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
					$ditno += 1;
				}
					
				else if ($diploma[$h] == "dbi") {
					$dbino += 1;
				}
					
				else if ($diploma[$h] == "dei") {
					$deino += 1;	
				}
					
				else if ($diploma[$h] == "dfi") {
					$dfino += 1;
				}
					
				else if ($diploma[$h] == "dbt") {
					$dbtno += 1;
				}
					
				else if ($diploma[$h] == "dsf") {
					$dsfno += 1;
				}
			}
			
			for ($i = 0; $i < count($diploma); $i++) {
				if ($check[$i] == "yes") {
					if ($diploma[$i] == "dit") {
						$dit1 += $before[$i];
						$dit2 += $sem1[$i];
						$dit3 += $sem2[$i];
					}
					
					else if ($diploma[$i] == "dbi") {
						$dbi1 += $before[$i];
						$dbi2 += $sem1[$i];
						$dbi3 += $sem2[$i];
					}
					
					else if ($diploma[$i] == "dei") {
						$dei1 += $before[$i];
						$dei2 += $sem1[$i];
						$dei3 += $sem2[$i];
					}
					
					else if ($diploma[$i] == "dfi") {
						$dfi1 += $before[$i];
						$dfi2 += $sem1[$i];
						$dfi3 += $sem2[$i];
					}
					
					else if ($diploma[$i] == "dbt") {
						$dbt1 += $before[$i];
						$dbt2 += $sem1[$i];
						$dbt3 += $sem2[$i];
					}
					
					else if ($diploma[$i] == "dsf") {
						$dsf1 += $before[$i];
						$dsf2 += $sem1[$i];
						$dsf3 += $sem2[$i];
					}
				}
			}
			
			// Average 
			$ditbefore = $dit1 / $ditno;
			$dbibefore = $dbi1 / $dbino;
			$deibefore = $dei1 / $deino;
			$dfibefore = $dfi1 / $dfino;
			$dbtbefore = $dbt1 / $dbtno;
			$dsfbefore = $dsf1 / $dsfno;
			
			$dits1 = $dit2 / $ditno;
			$dbis1 = $dbi2 / $dbino;
			$deis1 = $dei2 / $deino;
			$dfis1 = $dfi2 / $dfino;
			$dbts1 = $dbt2 / $dbtno;
			$dsfs1 = $dsf2 / $dsfno;
			
			$dits2 = $dit3 / $ditno;
			$dbis2 = $dbi3 / $dbino;
			$deis2 = $dei3 / $deino;
			$dfis2 = $dfi3 / $dfino;
			$dbts2 = $dbt3 / $dbtno;
			$dsfs2 = $dsf3 / $dsfno;
		?>
        <script>
            var linemotchart;
			
            var linemotchartData = [
                {
                    "month": "Before",
                    "DIT": <?php echo round($ditbefore,1)?>,
                    "DBI": <?php echo round($dbibefore,1)?>,
                    "DEI": <?php echo round($deibefore,1)?>,
					"DFI": <?php echo round($dfibefore,1)?>,
					"DBT": <?php echo round($dbtbefore,1)?>,
					"DSF": <?php echo round($dsfbefore,1)?>
                },
				{
                    "month": "Sem 1",
                    "DIT": <?php echo round($dits1,1)?>,
                    "DBI": <?php echo round($dbis1,1)?>,
                    "DEI": <?php echo round($deis1,1)?>,
					"DFI": <?php echo round($dfis1,1)?>,
					"DBT": <?php echo round($dbts1,1)?>,
					"DSF": <?php echo round($dsfs1,1)?>
                },
				{
                    "month": "Sem 2",
                    "DIT": <?php echo round($dits2,1)?>,
                    "DBI": <?php echo round($dbis2,1)?>,
                    "DEI": <?php echo round($deis2,1)?>,
					"DFI": <?php echo round($dfis2,1)?>,
					"DBT": <?php echo round($dbts2,1)?>,
					"DSF": <?php echo round($dsfs2,1)?>
                },
            ];

            AmCharts.ready(function () {
                // SERIAL CHART
                linemotchart = new AmCharts.AmSerialChart();
                linemotchart.dataProvider = linemotchartData;
                linemotchart.categoryField = "month";
                linemotchart.startDuration = 0.5;
                linemotchart.balloon.color = "#000000";

                // AXES
                // category
                var categoryAxis = linemotchart.categoryAxis;
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
                linemotchart.addValueAxis(valueAxis);

                // GRAPHS
				// DIT graph
                var linemotgraph = new AmCharts.AmGraph();
                linemotgraph.title = "DIT";
                linemotgraph.valueField = "DIT";
                linemotgraph.balloonText = "Information Technology: [[value]]";
                linemotgraph.lineAlpha = 1;
                linemotgraph.bullet = "round";
                linemotchart.addGraph(linemotgraph);

                // DBI graph
                var linemotgraph = new AmCharts.AmGraph();
                linemotgraph.title = "DBI";
                linemotgraph.valueField = "DBI";
                linemotgraph.balloonText = "Business Informatics: [[value]]";
                linemotgraph.bullet = "round";
                linemotchart.addGraph(linemotgraph);

                // DEI graph
                var linemotgraph = new AmCharts.AmGraph();
                linemotgraph.title = "DEI";
				linemotgraph.valueField = "DEI";
                linemotgraph.balloonText = "Engineering Informatics: [[value]]";
                linemotgraph.bullet = "round";
                linemotchart.addGraph(linemotgraph);
				
				// DFI graph
                var linemotgraph = new AmCharts.AmGraph();
                linemotgraph.title = "DFI";
                linemotgraph.valueField = "DFI";
                linemotgraph.balloonText = "Financial Informatics: [[value]]";
                linemotgraph.bullet = "round";
                linemotchart.addGraph(linemotgraph);
				
				// DBT graph
                var linemotgraph = new AmCharts.AmGraph();
                linemotgraph.title = "DBT";
                linemotgraph.valueField = "DBT";
                linemotgraph.balloonText = "Business Enterprise IT: [[value]]";
                linemotgraph.bullet = "round";
                linemotchart.addGraph(linemotgraph);
				
				// DSF graph
                var linemotgraph = new AmCharts.AmGraph();
                linemotgraph.title = "DSF";
                linemotgraph.valueField = "DSF";
                linemotgraph.balloonText = "Cyber Security and Forensics: [[value]]";
                linemotgraph.bullet = "round";
                linemotchart.addGraph(linemotgraph);

                // CURSOR
                var linemotchartCursor = new AmCharts.ChartCursor();
                linemotchartCursor.cursorPosition = "mouse";
                linemotchartCursor.zoomable = false;
                linemotchartCursor.cursorAlpha = 0;
                linemotchart.addChartCursor(linemotchartCursor);
				
                // LEGEND
                var linemotlegend = new AmCharts.AmLegend();
                linemotlegend.useGraphSettings = true;
                linemotchart.addLegend(linemotlegend);

                // WRITE
                linemotchart.write("linemotchart");
            });
        </script>
    </head>

    <body>
        <div id="linemotchart" style="width: 100%; height: 400px;"></div>
    </body>

</html>