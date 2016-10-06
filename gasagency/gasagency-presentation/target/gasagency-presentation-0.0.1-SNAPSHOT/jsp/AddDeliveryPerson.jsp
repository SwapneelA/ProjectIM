<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<%@ page import="java.util.List" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% List deliveryPersonList = (List)session.getAttribute("deliveryPersonList"); %>
<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src ="js/validate.js"></script>
<link type="text/css" href="css/header.css" rel="stylesheet"></link>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>Add Delivery Person</title>
</head>


<body>
<nav class="navbar navbar-default navbar-static-top app-navbar fixedheader" role="navigation" style="margin:0px;background-color: rgba(59, 90, 183, 0.88);">
  <div class="container-fluid">
    <div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="CGA-navbar-collapse-1">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="#" style="color:#FDFDFD">Chiplun Gas Agency</a>
    </div>
	
	<div class="navbar-header navbar-right" id="CGA-navbar-collapse-1">
		<ul class="nav navbar-nav default">
			<li><a href="<%=request.getContextPath()%>/currentstock.html" style="color:#FDFDFD">Current Stock</a></li>
			<li><a href="<%=request.getContextPath()%>/DataEntry.html" style="color:#FDFDFD">Data Entry</a></li>
			<li><a href="<%=request.getContextPath()%>/invoiceEntry.html" style="color:#FDFDFD">Invoice</a></li>
			<li><a href="#" style="color:#FDFDFD">View Reports</a></li>
			<li><a href="<%=request.getContextPath()%>/welcome.html"><span class="glyphicon glyphicon-off" aria-hidden="false" style="color:#FDFDFD"></span></a></li>
			
		</ul>
	<div>
	</div>
	</div>
	
  </div>
</nav>
 <div class="panel panel-default">  
<div class="panel-heading" style=" font-size: large;    color: #5E9C5E;
    font-weight: 800;/* margin: 0 auto; */
    text-align: center;
">Create Delivery Person</div>
<div class="panel-body">
<form class="form-inline" action="saveDeliveryPerson.html" method="post">
	<div class="form-group">
  		<label style="margin-left 25px;">First Name</label>
	    <input type="text" class="form-control" name="firstname" placeholder="First Name">
  	</div>
  	<div class="form-group">
  <label style="margin-left 25px;">Last Name</label>
	  <input type="text" class="form-control" name="lastname" placeholder="Last Name">
</div>
  	<div class="form-group">
  <label style="margin-left 25px;">Phone Number</label>
	    <input type="text" class="form-control" name="phoneNumber" placeholder="Phone Number">
  	</div>
  	<div class="form-group">		
  <label style="margin-left 25px;">Address</label>
			<textarea name="address" class="form-control" rows="5"> </textarea>
	</div><button type="submit" class="btn btn-success" style="width:200px;margin-left:520px;;background-image: linear-gradient(#8add6d, #60b044);">Add Record</button>
</form>
</div>
</div>
<div style="margin-top:60px;font-weight:800;text-align:center;font-size: large;    color: #5E9C5E;'">Search Delivery Person</div>
<table id="grid-basic" class="table table-condensed table-hover table-striped">
<thead>
	<tr>
		<th data-column-id="fname">First Name</th>
		<th data-cloumn-id="lname">Last Name</th>
		<th data-column-id="phnum" data-order="desc">Phone number</th>
		<th data-column-id="address" data-order="desc">Address</th>
		
	</tr>
</thead>
<tbody>
	
		<c:forEach items="${deliveryPersonList}" var="person">
		<tr>
			<td><c:out value="${ person.deliveryPersonFirstName }" /></td>
			<td><c:out value="${ person.deliveryPersonLastName }" /></td>
			<td><c:out value="${ person.phoneNumber }" /></td>
			<td><c:out value="${ person.address }"></c:out></td>
		</tr>
		</c:forEach>
	
	
	</tbody>
</table>


<!-- <form action="main.html" id="loginform" style="width:400px;margin-top:100px;border:5px;position:absolute;" method="post" >
	<div class="panel panel-default fontstyle" style="border-style:outset;border-width:2px;border-color:silver">
		<div class="panel-heading lead">Add delivery person</div>
		<div class="panel-body form-group">
			<label for="deliveryPersonFirstName">First Name</label>
			<input type="text" class="form-control" id="deliveryPersonFirstName" placeholder="First Name" />
		</div>
		<div class="panel-body form-group">
			<label for="deliveryPersonLasttName" >Last Name</label>
			<input type="text" class="form-control" id="deliveryPersonLasttName" placeholder="Last Name" required> 
		</div>
		<div class="panel-body form-group">
			<label for="phoneNumber">Phone Number</label>
			<input type="text" class="form-control" id="phoneNumber" placeholder="Phone Number" name="phoneNumber" required>
		</div>
		<div class="panel-body form-group">
			<label for="address">Address</label>
			<textarea class="form-control" rows="5"></textarea>
		</div>
		<button type="submit" class="btn btn-success" style="width:200px;margin-left:85px;background-image: linear-gradient(#8add6d, #60b044);">Add Record</button>
	
	</div>
</form> -->



</body>
<script src="js/jquery.bootgrid.min.js"></script>
<link rel="stylesheet" href="css/jquery.bootgrid.min.css">
<script>
$("#grid-basic").bootgrid();

</script>
</html>