<%@ page import="java.util.List" %>
<%@ page import="com.gasagency.pojo.StockDetails" %>
<html>
<head>
<title>Getting started with Bootstrap</title>
<link href="css/bootstrap.min.css" rel="stylesheet"/>
<link href="css/style.css" rel="stylesheet"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<div>
<nav class="navbar navbar-default navbar-static-top app-navbar fixedheader" role="navigation" style="margin:0px;background-color: black;">
  <div class="container-fluid">
    <div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="CGA-navbar-collapse-1">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="#">Chiplun Gas Agency</a>
    </div>
	
	<div class="navbar-header navbar-right" id="CGA-navbar-collapse-1">
		<ul class="nav navbar-nav default">
			<li><a href="#">Home</a></li>
			<li><a href="#">Add Transaction</a></li>
			<li><a href="<%=request.getContextPath()%>/invoiceEntry.html">Invoice Entry</a></li>
			<li><a href="#">View Reports</a></li>
			<li><a href="<%=request.getContextPath()%>/addDeliveryPerson.html">Add Delivery Person</a></li>
			<li><a href="<%=request.getContextPath()%>/welcome.html"><span class="glyphicon glyphicon-off" aria-hidden="false"></span></a></li>
			
		</ul>
	<div>
  </div>
</nav>
<div class="container">
<div class="page-header no-margin no-padding" style="background-color:white;font-family:calibri;-webkit-font-smoothing: antialiased;">
	<br>
	<h1 class="center-h1">Current Stock</h1>
	<br>
	<table class="table table-bordered table-hover center-table" style="width:50%">

	<th>
		Cylinder Type
	</th>
	<th>
	Quantity Of Full Cylinder
	</th>
	<th>
	Quantity Of Defective Cylinder
	</th>
	<th>
	Quantity Of Empty Cylinder
	</th>
	<tr>
		<td>Domestic Subsidised Cylinder</td>
		<td>150</td>
		<td>5</td>
		<td>200</td>
	</tr>
	<tr>
		<td>Domestic Non Subsidised Cylinder</td>
		<td>150</td>
		<td>5</td>
		<td>200</td>
	</tr>
	<tr>
		<td>Domestic Commodity Cylinder</td>
		<td>150</td>
		<td>5</td>
		<td>200</td>
	</tr>
	<tr>
		<td>NonDomestic Cylinder 19Kg</td>
		<td>50</td>
		<td>2</td>
		<td>25</td>
	</tr>
	<tr>
		<td>NonDomestic Cylinder 42.5Kg</td>
		<td>15</td>
		<td>0</td>
		<td>20</td>
	</tr>
</table>
</div>
<div>
<script src="js/bootstrap.min.js" />
<script src="jquery-1.11.3.min.js" />
</body>
</html>