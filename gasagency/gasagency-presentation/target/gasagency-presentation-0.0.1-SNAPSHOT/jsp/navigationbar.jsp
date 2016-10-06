<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.9.3/css/bootstrap-select.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link type="text/css" href="css/header.css" rel="stylesheet"></link>
-->
<link rel="stylesheet" href="css/bootstrap-select.min.css" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-default navigationclass" role="navigation" style="margin:0px;background-color: rgba(59, 90, 183, 0.88);">
  <div class="container-fluid">
    <div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="CGA-navbar-collapse-1">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span> 
		</button>
		<a class="navbar-brand" href="#">Gas Agency</a>
    </div>
	<div class="collapse navbar-collapse navbar-header navbar-right" id="myNavbar">
		<ul class="nav navbar-nav default">
			<li><a class="navigationclass" href="<%=request.getContextPath()%>/DataEntry.html">Transaction</a></li>
			<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Invoice <span class="caret"></span></a>
		        <ul class="dropdown-menu">
		          <li><a class="navigationclass" href="<%=request.getContextPath()%>/invoiceEntry.html" style="color:white">Add Invoice Details</a></li>
		          <li><a class="navigationclass" href="<%=request.getContextPath()%>/viewInvoiceDetails.html" style="color:white">View Invoice</a></li>
		        </ul>
	      	</li>
	      	<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">CRD <span class="caret"></span></a>
		        <ul class="dropdown-menu">
		          <li><a class="navigationclass" href="<%=request.getContextPath()%>/CRDEntry.html" style="color:white">Add CRD Details</a></li>
		          <li><a class="navigationclass" href="<%=request.getContextPath()%>/viewInvoiceDetails.html" style="color:white">View CRD</a></li>
		        </ul>
	      	</li>
			<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Delivery Person <span class="caret"></span></a>
	      		<ul class="dropdown-menu">
		          <li><a class="navigationclass" href="<%=request.getContextPath()%>/AddDeliveryPerson.html" style="color:white">Add Delivery Person</a></li>
		          <li><a class="navigationclass" href="#" style="color:white">View Details</a></li>
	        	</ul>
	      	</li>
	      	<li class="navigationclass"><a class="navigationclass" href="<%=request.getContextPath()%>/welcome.html">Logout</a></li>
	      	
		</ul>
		<div>
		
		</div>
	</div>
	
  </div>
</nav>
</body>
</html>