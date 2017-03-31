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
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
document.getElementById("date").value = new Date();
</script>
	
	<script type="text/javascript">
<%-- function edit_row(no)
{
	document.getElementById("edit_button"+no).style.display="none";
	document.getElementById("save_button"+no).style.display="inline-block";
	
	
	var item=document.getElementById("item_row"+no);
	var cust=document.getElementById("cust_row"+no);
	var date=document.getElementById("date_row"+no);
	var pcs=document.getElementById("pcs_row"+no);
	var price=document.getElementById("price_row"+no);
	var remain=document.getElementById("remain_row"+no);
	
	
	var item_data=item.innerHTML;
	var cust_data=cust.innerHTML;
	var date_data=date.innerHTML;
	var pcs_data=pcs.innerHTML;
	var price_data=price.innerHTML;
	var remain_data=remain.innerHTML;
	
	
	item.innerHTML="<input type='text' id='item_text"+no+"' value='"+item_data+"'>";
	cust.innerHTML="<input type='text' id='cust_text"+no+"' value='"+cust_data+"'>";
	date.innerHTML="<input type='text' id='date_text"+no+"' value='"+date_data+"'>";
	pcs.innerHTML="<input type='text' style='width:70px' id='pcs_text"+no+"' value='"+pcs_data+"'>";
	price.innerHTML="<input type='text' style='width:70px' id='price_text"+no+"' value='"+price_data+"'>";
	remain.innerHTML="<input type='text' style='width:70px' id='remain_text"+no+"' value='"+remain_data+"'>";
	
}--%>
<%-- function save_row(no)
{
	
	var item_val=document.getElementById("item_text"+no).value;
	var cust_val=document.getElementById("cust_text"+no).value;
	var date_val=document.getElementById("date_text"+no).value;
	var pcs_val=document.getElementById("pcs_text"+no).value;
	var price_val=document.getElementById("price_text"+no).value;
	var remain_val=document.getElementById("remain_text"+no).value;

	
	document.getElementById("item_row"+no).innerHTML=item_val;
	document.getElementById("cust_row"+no).innerHTML=cust_val;
	document.getElementById("date_row"+no).innerHTML=date_val;
	document.getElementById("pcs_row"+no).innerHTML=pcs_val;
	document.getElementById("price_row"+no).innerHTML=price_val;
	document.getElementById("remain_row"+no).innerHTML=remain_val;
	

	document.getElementById("edit_button"+no).style.display="inline-block";
	document.getElementById("save_button"+no).style.display="none";

}
function delete_row(no)
{
	document.getElementById("row"+no+"").outerHTML="";
}--%>
function add_row()
{
	
	var new_item=document.getElementById("new_item").value;
	var new_cust=document.getElementById("new_cust").value;
	var new_date=document.getElementById("new_date").value;
	var new_pcs=document.getElementById("new_pcs").value;
	var new_price=document.getElementById("new_price").value;
	var new_remain=document.getElementById("new_remain").value;
	
	var table=document.getElementById("data_table");
	var table_len=(table.rows.length)-1;
	var row = table.insertRow(table_len).outerHTML="<tr id='row"+table_len+"'><td></td><td id='item_row"+table_len+"'>"+new_item+"</td><td id='cust_row"+table_len+"'>"+new_cust+"</td><td id='date_row"+table_len+"'>"+new_date+"</td><td id='pcs_row"+table_len+"'>"+new_pcs+"</td><td id='price_row"+table_len+"'>"+new_price+"</td><td id='remain_row"+table_len+"'>"+new_remain+"</td><%-- <td><input type='button' style='background-color: #4CAF50; color: white; padding: 5px 10px; text-align: center; display: inline-block; font-size: 15px; margin: 1px 1px' id='edit_button"+table_len+"' value='EDIT' class='edit' onclick='edit_row("+table_len+")'> <input type='button' style='background-color: #4CAF50; color: white; padding: 5px 10px; text-align: center; display: inline-block; font-size: 15px; margin: 1px 1px' id='save_button"+table_len+"' value='SAVE' class='save' onclick='save_row("+table_len+")'> <input type='button' style='background-color: #4CAF50; color: white; padding: 5px 10px; text-align: center; display: inline-block; font-size: 15px; margin: 1px 1px' value='DEL' class='delete' onclick='delete_row("+table_len+")'></td></tr>--%>";

	
	document.getElementById("new_item").value="";
	document.getElementById("new_cust").value="";
	document.getElementById("new_date").value="";
	document.getElementById("new_pcs").value="";
	document.getElementById("new_price").value="";
	document.getElementById("new_remain").value="";
}
</script>
<%-- <script type="text/javascript">
function InvalidMsg(textbox) {
    
    if (textbox.value == '') {
        textbox.setCustomValidity('Required email address');
    
    }
    else {
        textbox.setCustomValidity('');
    }
    return true;
}
	</script> --%>
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

	</br>
	</br>
	</br>
	</br>
	<div class="container">
		<form action="insert" method="post">
		<table class="table table-hover table-bordered" id="data_table" style="width: 300px" >
	
			<thead>
				<tr>
				
					<th>NO.</th>
					<th>ITEM_NAME</th>
					<th>CUST_NAME</th>
					<th>DATE</th>
					<th>PCS</th>
					<th>PRICES</th>
					<th>REMAIN</th>
					<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
					</tr>
					<tbody>
				<% 
				 Class.forName("com.mysql.jdbc.Driver");
                 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory", "root", "2309");
                 Statement stmt=con.createStatement();
                 ResultSet rs=stmt.executeQuery("select * from inventory_table");

                 while(rs.next()){
                	 
				
				
                	 %>
                	 <tr>
                	 <%
                	String n= rs.getString("NO");
                	String i= rs.getString("ITEM_NAME");
                	String c =rs.getString("CUST_NAME");
                	String d= rs.getString("DATE");
                	String p=rs.getString("PCS");
                	String pr=rs.getString("PRICE");
                	String r= rs.getString("REMAIN");
                     %>
                      
                     <td><%= n %></td>
                     <td width="50"><%= i %></td>
                     <td><%= c %></td>
                     <td><%= d %></td>
                     <td><%= p %></td>
                     <td><%= pr %></td>
                     <td><%= r %></td>
                    <td><input type="submit" style="background-color: #4CAF50; border: none; color: white; padding: 5px 5px; text-align: center; text-decoration: none; display: inline-block; font-size: 20px; margin: 2px 2px;"></td>
                     
                	 </tr>
                	 <%
                	 }
                	 %>
				</tbody>
					
				
					<tr>
<td id=td></td>
<td><input type="text" name="item" id="new_item" required="required" /></td>
<td><input type="text" name="cust" id="new_cust" required="required" /></td>
<td><input type="date" name="date" id="new_date" required="required"/></td>
<td><input type="number" name="pcs" id="new_pcs" style="width:70px;" required="required"/></td>
<td><input type="number" name="price" id="new_price" style="width:70px;" required="required"/></td>
<td><input type="number" name="remain" id="new_remain" style="width:70px;" required="required"/></td>

<td><input type="submit" style="background-color: #4CAF50; border: none; color: white; padding: 5px 20px; text-align: center; text-decoration: none; display: inline-block; font-size: 20px; margin: 2px 2px;"></td>
</tr>
				</thead>
				<tbody>
				
			
			
			
		</table>
		</form>

	</div>
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














