<!DOCTYPE html>
<html>
	<head>
		<title>Survey</title>
		<link rel="stylesheet" type="text/css" href="style.css">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	
		<meta charset="utf-8" />
		<link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css' />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		<script>
		$(document).ready(function() {
			$('#survey').submit(function(event) {
				//Cancel the default action (navigation) submit			
				event.preventDefault();
				$.ajax({
					type: 'POST',
					url: 'toexcel.php',
					data: $(this).serialize(),
					dataType: 'json',
					success: function (data) {
					console.log(data);
					$('#info').html(data.msg);
						if(!data.error) {
							$('#submit').val("");
							$('#clear').val("");
						}
					}
				});
			});
		});
		</script>
		<style>
		fieldset {
			width: 85%;
			padding: 10px;
			margin: 5px;
		}

		legend {
			font-weight: bold;
		}
		
		.surveycontent {
			margin-left: 130px;
			margin-top: 30px;
		}
		
		form {
			height: 1300px;
		}
		</style>
	</head>
	<body>
		<?php include "surveyheader.php" ?>
		
		<div class = "surveycontent">
			<h2 style="margin-left: 4px;">Survey Form</h2>
			<p style="margin-left: 4px;">Hey guys, please help to fill this up to improve the results!!</p>
			<br>
			<form method="post" name="survey" id="survey">
			<fieldset>
				<!--- Gender --->
				<h4>Gender:</h4>
				<p>
					<input type="radio" value="male" name="gender" id="gender"/> 
					<label for="male">Male</label>
				
					<input type="radio" value="female" name="gender" id="gender"/> 
					<label for="female">Female</label>		
				</p>
				
				<br>
				<!--- Course --->
				<h4>Course:</h4>
				<p>
					<input type="radio" value="dit" name="course" id="course" /> 
					<label for="dit">DIT</label>
				
					<input type="radio" value="dbi" name="course" id="course" /> 
					<label for="dbi">DBI</label>		
				
					<input type="radio" value="dei" name="course" id="course" /> 
					<label for="dei">DEI</label>
				
					<input type="radio" value="dfi" name="course" id="course" /> 
					<label for="dfi">DFI</label>		
				
					<input type="radio" value="dbt" name="course" id="course" /> 
					<label for="dbt">DBT</label>
				
					<input type="radio" value="dsf" name="course" id="course" /> 
					<label for="dsf">DSF</label>		
				</p>
			</fieldset>
			<fieldset>
				<legend>Interest</legend>
				
				<!--- Chart 1 ---->
				<h4> Why you want to join NYPSIT? </h4>
				<p>
					<input type="radio" value="Passion in IT" name="chart1qns" id="chart1qns" /> 
					<label for="Passion in IT">Passion in IT</label>
				</p>
				<p>
					<input type="radio" value="Influence from friends" name="chart1qns" id="chart1qns" /> 
					<label for="Influence from friends">Influence from friends</label>
				</p>
				<p>
					<input type="radio" value="Family" name="chart1qns" id="chart1qns" /> 
					<label for="Family">Family</label>
				</p>
				<p>
					<input type="radio" value="Module Contents" name="chart1qns" id="chart1qns" /> 
					<label for="Module Contents">Module Contents</label>
				</p>
				<p>
					<input type="radio" value="Future Careers" name="chart1qns" id="chart1qns" /> 
					<label for="Future Careers">Future Careers</label>
				</p>
				<p>
					<input type="radio" value="Others" name="chart1qns" id="chart1qns" /> 
					<label for="Others">None of the above</label>
				</p>
				<br>
				
				<!--- Chart 2 --->
				<h4>Are you interested in IT Sector in the first place?</h4>
				<p>
					<input type="radio" value="yes" name="chart2qns" id="chart2qns" /> 
					<label for="yes">Yes</label>
				
					<input type="radio" value="no" name="chart2qns" id="chart2qns" /> 
					<label for="no">No</label>		
				</p>
			</fieldset>
			
			<fieldset>
				<legend>Motivation</legend>
				<!--- Chart 3 --->
				<h4>Before you came to SIT, what was your interest level on the scale of 10?</h4>
				<select name="before" id="before">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
				</select>
				<br><br>
				<h4>When you are in first semester, what was your interest level on the scale of 10?</h4>
				<select name="s1" id="s1">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
				</select>
				<br><br>
				<h4>When you are in second semester, what was your interest level on the scale of 10?</h4>
				<select name="s2" id="s2">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
				</select>
				<br><br><hr><br>
				
				<h4>Are you motivated in SIT?</h4>
				<p>
					<input type="radio" value="yes" name="motivationqns" id="motivationqns" /> 
					<label for="yes">Yes</label>

					<input type="radio" value="no" name="motivationqns" id="motivationqns" /> 
					<label for="no">No</label>		
				</p>
				
				<br>
				<!--- Chart 4 --->
				<h4><u>If previous question is yes:</u></h4>
				<h4>If yes, why you are motivated in SIT?</h4>
					<p>
						<input type="radio" value="lectures" name="chart4qns" id="chart4qns" /> 
						<label for="lectures">Lectures</label>
					</p>
					<p>
						<input type="radio" value="events" name="chart4qns" id="chart4qns" /> 
						<label for="events">SIT Events</label>
					</p>
					<p>
						<input type="radio" value="tutorials" name="chart4qns" id="chart4qns" /> 
						<label for="tutorials">Tutorials</label>
					</p>
					<p>
						<input type="radio" value="facilities" name="chart4qns" id="chart4qns" /> 
						<label for="facilities">NYP Facilities</label>
					</p>
					<p>
						<input type="radio" value="hands-on" name="chart4qns" id="chart4qns" /> 
						<label for="hands-on">Hands-On Experience</label>		
					</p>
					<p>
						<input type="radio" value="activity" name="chart4qns" id="chart4qns" /> 
						<label for="activity">Activities in SIT</label>
					</p>
					<p>
						<input type="radio" value="other motivation reasons" name="chart4qns" id="chart4qns" /> 
						<label for="other motivation reasons">Other Reasons</label>
					</p>
				<br>
				
				<h4><u>If previous question is no:</u></h4>
				<h4>If no, why you are unmotivated in SIT?</h4>
					<p>
						<input type="radio" value="timetable" name="chart4qns" id="chart4qns" /> 
						<label for="timetable">Timetable</label>
					</p>
					<p>
						<input type="radio" value="lectures unmotivation" name="chart4qns" id="chart4qns" /> 
						<label for="lectures unmotivation">Lectures</label>
					</p>
					
					<p>
						<input type="radio" value="boring" name="chart4qns" id="chart4qns" /> 
						<label for="boring">Boring</label>
					</p>
					<p>
						<input type="radio" value="difficult" name="chart4qns" id="chart4qns" /> 
						<label for="difficult">Difficult</label>
					</p>
					<p>
						<input type="radio" value="no interest" name="chart4qns" id="chart4qns" /> 
						<label for="no interest">Non-interest Modules</label>		
					</p>
					<p>
						<input type="radio" value="other unmotivation reasons" name="chart4qns" id="chart4qns" /> 
						<label for="other unmotivation reasons">Other Reasons</label>
					</p>
			</fieldset>
		
			<fieldset>
				<legend>Course Relevance</legend>
					<!--- Chart 5 --->
					<h4>Are you motivated because of course relevance?</h4>
					<p>
						<input type="radio" value="yes" name="chart5qns" id="chart5qns" /> 
						<label for="yes">Yes</label>

						<input type="radio" value="no" name="chart5qns" id="chart5qns" /> 
						<label for="no">No</label>		
					</p>
					<br>
					<!--- Chart 6 --->
					<h4>In SIT Courses, which field of study you interested in?</h4>
					<p>
						<input type="radio" value="it" name="chart6qns" id="chart6qns" /> 
						<label for="it">IT</label>
					</p>
					<p>
						<input type="radio" value="business" name="chart6qns" id="chart6qns" /> 
						<label for="business">Business</label>		
					</p>
					<p>
						<input type="radio" value="engine" name="chart6qns" id="chart6qns" /> 
						<label for="yes">Engineering</label>
					</p>
			</fieldset>
			
			<fieldset>
				<legend>Career</legend>
					<!--- Chart 7 --->
					<h4>Are you interested working in IT Sector?</h4>
					<p>
						<input type="radio" value="yes" name="chart7qns" id="chart7qns" /> 
						<label for="yes">Yes</label>
		
						<input type="radio" value="no" name="chart7qns" id="chart7qns" /> 
						<label for="no">No</label>		
					</p>
					<br>
					<!--- Chart 8 --->
					<h4>Imagine you interested working in IT Sector, why you want to work in IT Sector?</h4>
					<p>
						<input type="radio" value="Better IT Opportunities" name="chart8qns" id="chart8qns" /> 
						<label for="Better IT Opportunities">Better IT Opportunities</label>
					</p>
					<p>
						<input type="radio" value="More IT industries" name="chart8qns" id="chart8qns" /> 
						<label for="More IT industries">More IT industries</label>		
					</p>
					<p>
						<input type="radio" value="Provide decent pay" name="chart8qns" id="chart8qns" /> 
						<label for="Provide decent pay">Provide decent pay</label>
					</p>
					<p>
						<input type="radio" value="IT is influential to our daily lives" name="chart8qns" id="chart8qns" /> 
						<label for="IT is influential to our daily lives">IT is influential to our daily lives</label>
					</p>
			</fieldset>
			<br>
			<div id="info" style = "text-align: center"></div>
			<br>
			<p style = "text-align: center">
				<input type="submit" style="width: 120px; height: 30px;" value="Submit" id="submit"/>
				<input type="reset" style="width: 120px; height: 30px;" value="Clear" id="clear"/>
			</p>
			<br>
		</form>
		<br><br>
		</div>
	</body>
</html>