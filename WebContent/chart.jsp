<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>CHART</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width initial scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://www.amcharts.com/lib/3/amcharts.js"></script>
		<script type="text/javascript" src="https://www.amcharts.com/lib/3/serial.js"></script>
		<script src="http://www.amcharts.com/lib/3/plugins/dataloader/dataloader.min.js" type="text/javascript"></script>
		<script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
		<script type="text/javascript">
		var chart = AmCharts.makeChart( "chartdiv", {
			"theme": "light",
			  "type": "serial",
			  "startDuration": 2,
			  "dataLoader": {
			    "url": "JsonServlet"
			  },
			  "categoryField": "ITEM",
			  "graphs": [ {
				  "fillColorsField": "color",
				  "fillAlphas": 1,
			        "lineAlpha": 0.1,
			    "valueField": "REMAIN",
			    "type": "column"
			  } ],
			  "depth3D": 20,
				"angle": 30,
				
			 
			} );
		
		
		
		
		</script>
		<script type="text/javascript">
		var chart = AmCharts.makeChart( "chartdiv1", {
			"theme": "light",
			  "type": "serial",
			  "startDuration": 2,
			  "dataLoader": {
			    "url": "JsonServlet2"
			  },
			  "categoryField": "ITEM",
			  "graphs": [ {
				  "fillColorsField": "color",
				  "fillAlphas": 1,
			        "lineAlpha": 0.1,
			    "valueField": "PCS",
			    "type": "column"
			  } ],
			  "depth3D": 20,
				"angle": 30,
				
			 
			} );
		
		
		
		
		</script>
<style>

footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

.affix {
	top: 0;
	width: 100%;
}

.affix+.container-fluid {
	padding-top: 70px;
}

li {
	color: white;
}
</style>
</head>
<body>
	<div class="container-fluid"
		style="background-color: red; color: white; height: 100px;">
		<h1>
			<center>VATE TECHNOLOGY</center>
		</h1>
	</div>
	<nav class="navbar navbar-inverse" data-spy="affix"
		data-offset-top="197">
	<div class="container">
		<a class="navbar-brand"><h4 style="color: white">VATE
				TECHNOLOGIES</h4></a>

		<ul class="nav nav-tabs navbar-right">
			<li><a href="inventory.jsp"><font color="white"><h4>HOME</h4></font>
			</a></li>
			
			<li><a href="index.jsp"><font color="white"><h4>SIGNOUT
						</h4></font></a></li>

		</ul>
	</div>
	</nav>

	<center><div class=col-sm-3></div>
		<div class=col-sm-6 style="background-color: #4CAF50; color:white"  ><h1> <font face="georgia">ITEM_NAME AND REMAIN</font></h1></div>
		<div class=col-sm-3></div>
	</center>
	
		<div class="container" id="chartdiv" style="width: 60%; height: 400px; length: 400px; background-color: #FFFFFF;" ></div><br/><br/><br/><br/><br/>
		<center><div class=col-sm-3></div>
		<div class=col-sm-6 style="background-color: #4CAF50; color:white"  ><h1> <font face="georgia">ITEM_NAME AND PCS</font></h1></div>
		<div class=col-sm-3></div>
	</center>
<div class="container" id="chartdiv1" style="width: 60%; height: 400px; length: 400px; background-color: #FFFFFF;" ></div><br/><br/><br/><br/><br/>

	
	<div class="panel panel-default">
		<div class="panel-body" style="position: down"></div>
		<div class="panel-footer"
			" style="background-color: black; height: 150px; color: white;">
			<h4>
				<p align="right">VATE TECHNOLOGY</p>
			</h4>
			<p align="right">ETAWAH</p>
			<p align="right">U.P.-206001</p>
			<p align="right">www.knowvatw.com</p>
		</div>
	</div>
	
</body>
</html>