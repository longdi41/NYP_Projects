<!DOCTYPE HTML>
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
			
			$reasons = "";
			
			$passion = $influence = $family = $module = $careers = $others = 0;
			
			for ($row = 2; $row <= $highestRow; $row++) {
				$cell = $objWorksheet->getCellByColumnAndRow(2, $row);
				$reasons = $cell->getValue();
			
				
			if ($reasons == "Influence from friends") {
				$influence++;
			}	
			else if ($reasons == "Passion in IT") {
				$passion++;
			}
			else if ($reasons == "Module Contents") {
				$module++;
			}
			else if ($reasons == "Future Careers") {
				$careers++;
			}
			else if ($reasons == "Family") {
				$family++;
			}
			else if ($reasons == "Others") {
				$others++;
			}
		}
		?>

        <script>
            var achart;
            var alegend;

            var achartData = [
		
				{
					"reasons": "Influence from friends",
					"studentCount": "<?php echo $influence ?>",
				},
				{
					"reasons": "Passion in IT",
					"studentCount": "<?php echo $passion ?>",
				},				
				{
					"reasons": "Module Contents",
					"studentCount": "<?php echo $module ?>",
				},				
				{
					"reasons": "Future Careers",
					"studentCount": "<?php echo $careers ?>",
				},				
				{
					"reasons": "Family",
					"studentCount": "<?php echo $family ?>",
				},				
				{
					"reasons": "Others",
					"studentCount": "<?php echo $others ?>",
				},
          
			];
                    
            AmCharts.ready(function () {
                // PIE CHART
                achart = new AmCharts.AmPieChart();
                achart.dataProvider = achartData;
                achart.titleField = "reasons";
                achart.valueField = "studentCount";
                achart.outlineColor = "#FFFFFF";
                achart.outlineAlpha = 0.8;
                achart.outlineThickness = 2;
                achart.balloonText = "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>";
                // this makes the chart 3D
                achart.depth3D = 15;
                achart.angle = 30;
				achart.radius = 90;

                // WRITE
                achart.write("chart1div");
            });
        </script>
		
	
    </head>

    <body>
        <div id="chart1div"; style="height: 320px; width: 80%"></div>
    </body>

</html>