<%@ page import="com.mysql.*"%>
<%@ page import="java.sql.*"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>inventory project</title>
<meta name="viewport" content="width=device-width initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
	HTMLElementObject.disabled = true;
</script>
<script type="text/javascript">
	$('#submit').click(function() {
		alert('wrong password');
		$('#login').submit();
	});
</script>

<script type="text/javascript">
	function InvalidMsg(textbox) {

		if (textbox.value == '') {
			textbox.setCustomValidity('Required email address');
		}

		else {
			textbox.setCustomValidity('');
		}
		return true;
	}
</script>
<style>
body {
	width: 1350px !important;
}

footer {
	
	background-color: #555;
	color: white;
	padding: 15px !important;
	!important
}

.affix {
	top: 0;
	width: 100% !important;
	!important
}

.affix+.container-fluid {
	padding-top: 70px;
	!important
}

li {
	color: white;
}
</style>



</head>
<body>

	<div class="container-fluid"
		style="background-color: red; color: white; height: 100px !important;">
		<h1>
			<center>VATE TECHNOLOGY</center>
		</h1>
	</div>
	<nav class="navbar navbar-inverse" data-spy="affix"
		data-offset-top="197">

	<div class="navbar-header">
		<a class="navbar-brand"><h4 style="color: white">VATE
				TECHNOLOGIES</h4></a>



	</div>

	</nav>
	<center>
		<img src="5.jpg" class="img-rounded" width=300 hight=300 !important>
	</center>
	<center>
		<h1>
			<font color="red">LOGIN FORM</font>
		</h1>
	</center>
	<form class="form-horizontal" method="post" name="myform"
		action="login" id="login" !important>
		<div class="form-group">
			<label class="control-label col-sm-4 !important" !important >Email:</label>
			<div class="col-sm-4 !important">
				<input type="text" class="form-control" id="email"
					placeholder="Enter email" name="uname" required="required"
					oninput="InvalidMsg(this);" />
			</div>
		</div>
		<div class="form-group !important" !important>
			<label class="control-label col-sm-4 !important" !important>Password:</label>
			<div class="col-sm-4 !important" !important>
				<input type="password" class="form-control" id="pwd"
					placeholder="Enter password" name="password" maxlength="8"
					required="required" oninput="InvalidMsg(this);" />
			</div>
		</div>
		<br />

		<center>
			<font color="red"><p id="v"></p></font>
		</center>
		<div class="col-sm-4">
			<div class="col-sm-4"></div>
		</div>
		<input type="submit" class="btn btn-success btn-md" value="LOGIN"
			id="submit" onclick="validate()"
			style="position: static; background-color: #4CAF50; border: none; color: white; padding: 10px 60px !important; text-align: center; text-decoration: none; display: inline-block; font-size: 16px !important; margin: 4px 2px !important; !important" />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="reset" value="RESET" class="btn btn-success btn-md"
			style="position: static; background-color: #4CAF50; border: none; color: white; padding: 10px 60px !important; text-align: center; text-decoration: none; display: inline-block; font-size: 16px !important; margin: 4px 2px !important; cursor: pointer; !important"></br>
		</br> </br>


	</form>

	<footer class="container-fluid">
	<h4>
		<p align="right">VATE TECHNOLOGY</p>
	</h4>
	<p align="right">ETAWAH</p>
	<p align="right">U.P.-206001</p>
	<p align="right">www.knowvatw.com</p>
	</footer>
</body>
</html>








