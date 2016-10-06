<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
 <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> 
 

<link type="text/css" href="css/header.css" rel="stylesheet"></link>
</head>
<body>

<nav class="navbar navbar-default">
<div class="container-fluid">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>                        
      	</button>
	  <a class="navbar-brand" href="#" style="color:white;">Chiplun Gas Agency</a>
	</div>
	<div class="collapse navbar-collapse" id="myNavbar">
		<ul class="nav navbar-nav">
	      <li class="active"><a href="<%=request.getContextPath()%>/DataEntry.html">Transaction</a></li>
	      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Invoice <span class="caret"></span></a>
	        <ul class="dropdown-menu">
	          <li><a href="<%=request.getContextPath()%>/invoiceEntry.html">Add Invoice Details</a></li>
	          <li><a href="<%=request.getContextPath()%>/viewInvoiceDetails.html">View Invoice</a></li>
	        </ul>
	      </li>
	      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Delivery Person <span class="caret"></span></a>
	      	<ul class="dropdown-menu">
	          <li><a href="<%=request.getContextPath()%>/AddDeliveryPerson.html" >Add Delivery Person</a></li>
	          <li><a href="#">View Details</a></li>
	        </ul>
	      </li>
	      <li><a href="<%=request.getContextPath()%>/welcome.html">Logout</a></li>
	    </ul>
    </div>
</div>

</nav>
</body>
</html>