<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WELCOME TO VATE TECHNOLOGY</title>
<meta name="viewport" content="width=device-width initial scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
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
	<nav class="navbar navbar-inverse " data-spy="affix"
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
	<div class="col-sm-3"></div>
	<div class="col-sm-3">
		<div class="thumbnail">
			<img src="e.jpg" width=300 height=400>
			<center>
				<input type="button"
					class="btn btn-success btn-md" value="INVENTORY STATUS" Onclick="window.location.href='edit.jsp'"
					style="background-color: #4CAF50; border: none; color: white; padding: 10px 60px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; margin: 4px 2px;">
			</center>
		</div>
	</div>
	<div class="col-sm-3">
		<div class="thumbnail">
			<img src="7.jpg" width=300 hight="400">
			<center>
				<input type="button" class="btn btn-success btn-md" Onclick="window.location.href='chart.jsp'"
					value="PROGRESS CHART"
					style="background-color: #4CAF50; border: none; color: white; padding: 10px 60px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; margin: 4px 2px;" />
			</center>
		</div>
	</div>



	<div class="panel panel-default">
		<div class="panel-body"></div>
		<div class="panel-footer"
			style="background-color: black; height: 150px; color: white;">
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

















































