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

			$study = "";
			$business = $it = $engineering = 0;
			
			for ($row = 2; $row <= $highestRow; $row++) {
				$cell = $objWorksheet->getCellByColumnAndRow(10, $row);
				$study = $cell->getValue();
				
				if ($study == "business") {
					$business++;
				}
				else if ($study == "it") {
					$it++;
				}
				else if ($study == "engineering") {
					$engineering++;
				}
			}
			
			
		?>
        <script>
            var foschart;

            var foschartData = [
                {
                    "study": "Business",
                    "studentcount": <?php echo $business ?>
                },
				{
                    "study": "IT",
                    "studentcount": <?php echo $it ?>
                },
				{
                    "study": "Engineering",
                    "studentcount": <?php echo $engineering ?>
                },
            ];
			
            AmCharts.ready(function () {
                // SERIAL CHART
                foschart = new AmCharts.AmSerialChart();
                foschart.dataProvider = foschartData;
                foschart.categoryField = "study";
                foschart.startDuration = 1;
                foschart.rotate = true;

                // AXES
                // category
                var categoryAxis = foschart.categoryAxis;
                categoryAxis.gridPosition = "start";
                categoryAxis.axisColor = "#DADADA";
                categoryAxis.dashLength = 3;

                // value
                var valueAxis = new AmCharts.ValueAxis();
                valueAxis.dashLength = 3;
                valueAxis.axisAlpha = 0.2;
                valueAxis.position = "top";
                valueAxis.title = "Number of Students";
                valueAxis.minorGridEnabled = true;
                valueAxis.minorGridAlpha = 0.08;
                valueAxis.gridAlpha = 0.15;
                foschart.addValueAxis(valueAxis);

                // GRAPHS
                // column graph
                var fosgraph1 = new AmCharts.AmGraph();
                fosgraph1.type = "column";
                fosgraph1.title = "Number of students";
                fosgraph1.valueField = "studentcount";
                fosgraph1.lineAlpha = 0;
                fosgraph1.fillColors = "#FE642E";
                fosgraph1.fillAlphas = 0.8;
                fosgraph1.balloonText = "<span style='font-size:13px;'>[[title]] in [[category]]:<b>[[value]]</b></span>";
                foschart.addGraph(fosgraph1);

                // WRITE
                foschart.write("foschart");
            });
        </script>
    </head>

    <body>
        <div id="foschart" style="width: 100%; height: 400px;"></div>
    </body>

</html>