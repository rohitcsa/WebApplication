<%@ page import="com.mysql.*" %>
<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>inventory table</title>
<meta name="viewport" content="width=device-width initial scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/jquery-1.10.2.js"
	type="text/javascript"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.debug.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js"></script>
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="jquery.table2excel.js"></script>
		<script type="text/javascript" src="tableExport.js"></script>
<script type="text/javascript" src="jquery.base64.js"></script>
		<script type="text/javascript" src="html2canvas.js"></script>
		<script type="text/javascript" src="html2canvas.js"></script>



<script type="text/javascript">
$(document).ready(function() {
	
		$.ajax({
			url : ' ajax ',
			success : function(result) {
				$('#table').html(result);
			}
		});
	});


</script>		
		
	<script type="text/javascript">
	function genPDF()
	{
		html2canvas(document.getElementById("testdiv"),
				{
			
			onrendered: function(canvas)
			{
				var img = canvas.toDataURL("image/png");
				var doc=new jsPDF();
				doc.addImage(img,'JPEG',0,20);
				doc.save('test.pdf');
				
				
			}
		});
	}
	</script>
	 <script>
		
		
			$(function() {
				$("#qwe").click(function(){
				$("#table2excel").table2excel({
					exclude: ".noExl",
    				name: "Excel Document Name",
    				fileext: "xls"
				}); 
				 });
			});
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
	 	
	 	
	 	
	
		<div class=col-sm-4></div>
			
	<center>
		<div class=col-sm-4>
			<input type="button" class="btn btn-success btn-md" value="EDIT" name="deleteRow"  onclick="window.location.href='edittable.jsp'"
				style="background-color: #4CAF50; border: none; color: white; padding: 10px 60px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; margin: 4px 2px;">
		</div>
	</center>
	
	</br></br></br>

		<div class="container" id="testdiv" style="width:800px;">
		
		<table class="table table-hover table-bordered" id="table2excel" >
	
			<thead>
				<tr>
				
					<th>NO.</th>
					<th>ITEM_NAME</th>
					<th>CUST_NAME</th>
					<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DATE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					<th>PCS</th>
					<th>PRICES</th>
					<th>REMAIN</th>
				</tr>
				</thead>
				<tbody id="table">
				
				</tbody>
				</table>
				</div>
				<center>
		<div class=col-sm-4>
			<input type="button" class="btn btn-success btn-md"
				value="SAVE AS PDF" id="pdf" onclick="window.location.href='javascript:genPDF()'"
				style="background-color: #4CAF50; border: none; color: white; padding: 10px 60px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; margin: 4px 2px;">
		</div>
	</center>
	<center>
		<div class=col-sm-4>
			<input type="button" class="btn btn-success btn-md" id="qwe"
				value="SAVE AS EXCEL"
				style="background-color: #4CAF50; border: none; color: white; padding: 10px 60px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; margin: 4px 2px;">
		</div>
	</center>
	<center>
		<div class=col-sm-4>
			<input type="button" class="btn btn-success btn-md" 
				value="SAVE AS PNG" id="export" onClick="$('#table2excel').tableExport({type:'png',escape:'false'})"
				style="background-color: #4CAF50; border: none; color: white; padding: 10px 60px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; margin: 4px 2px;">
		</div>
	</center></br></br></br>
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