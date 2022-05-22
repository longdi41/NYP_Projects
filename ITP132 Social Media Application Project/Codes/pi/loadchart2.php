<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>amCharts examples</title>
        <link rel="stylesheet" href="style.css" type="text/css">
        <script src="../amchart/amcharts/amcharts.js" type="text/javascript"></script>
        <script src="../amchart/amcharts/pie.js" type="text/javascript"></script>
		<?php   
			require_once dirname(__FILE__) . '/../Classes/PHPExcel.php';
			$objPHPExcel = PHPExcel_IOFactory::load('data.xlsx');
			$objWorksheet = $objPHPExcel->getActiveSheet(); 
			$highestRow = $objWorksheet->getHighestRow(); 
			$highestColumn = $objWorksheet->getHighestColumn();
			$highestColumnIndex = PHPExcel_Cell::columnIndexFromString($highestColumn);
			
			$gender = [];
			$yesno = [];
			$maleyes = $maleno = $femaleyes = $femaleno = 0;
				
			for ($row = 0; $row <= $highestRow; $row++) {
				$cell = $objWorksheet->getCellByColumnAndRow(0, $row);
				$gender[] = $cell->getValue();
				
				$cell = $objWorksheet->getCellByColumnAndRow(3, $row);
				$yesno[] = $cell->getValue();
			}
			
			for ($i = 0; $i < count($gender); $i++) {
				if ($gender[$i] == "male") {
					if ($yesno[$i] == "yes") {
						$maleyes++;
					}
					else if ($yesno[$i] == "no") {
						$maleno++;
					}
				}
				else if ($gender[$i] == "female") {
					if ($yesno[$i] == "yes") {
						$femaleyes++;
					}
					else if ($yesno[$i] == "no") {
						$femaleno++;
					}
				}
			}

		?>
		<script>
			var chart1;

            var legend1;

            var chartData1 = [
			{
				"gender": "Men interested",
				"studentCount": <?php echo $maleyes ?>,
			},
			{
				"gender": "Male not interested",
				"studentCount": <?php echo $maleno ?>,
			},
			{
				"gender": "Female interested",
				"studentCount": <?php echo $femaleyes ?>,
			},
			{
				"gender": "Female not interested",
				"studentCount": <?php echo $femaleno ?>,
			},
            ];


            AmCharts.ready(function () {
                // PIE CHART
                chart1 = new AmCharts.AmPieChart();

                // title of the chart
                chart1.dataProvider = chartData1;
                chart1.titleField = "gender";
                chart1.valueField = "studentCount";
                chart1.sequencedAnimation = true;
                chart1.startEffect = "elastic";
                chart1.innerRadius = "30%";
                chart1.startDuration = 2;
                chart1.labelRadius = 15;
                chart1.balloonText = "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>";
                // the following two lines makes the chart 3D
                chart1.depth3D = 15;
                chart1.angle = 15;
				chart1.radius = 90;

                // WRITE
                chart1.write("chart2div");
            });
        </script>
    </head>

    <body>
        <div id="chart2div" style="height: 320px; width: 100%"></div>
    </body>

</html>