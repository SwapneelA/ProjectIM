<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" href="css/header.css" rel="stylesheet"></link>
<link rel="stylesheet" href="css/bootstrap.min.css">
<%@ page import ="java.util.List" %>
<%@ page import ="com.gasagency.pojo.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<% 
	List<InvoiceDetails> invoiceDetailsList = (List<InvoiceDetails>) session.getAttribute("invoiceDetailsList");
%>
<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src ="js/validate.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>Gas Agency</title>
</head>
<%@include file="navigationbar.jsp" %>
<%-- <nav class="navbar navbar-default navbar-static-top app-navbar fixedheader" role="navigation" style="margin:0px;background-color: rgba(59, 90, 183, 0.88);">
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
			<li><a href="<%=request.getContextPath()%>/invoiceEntry.html" style="color:#FDFDFD">Invoice</a></li>
			<li><a href="#" style="color:#FDFDFD">View Reports</a></li>
			<li><a href="<%=request.getContextPath()%>/addDeliveryPerson.html" style="color:#FDFDFD">Delivery Person</a></li>
			<li><a href="<%=request.getContextPath()%>/welcome.html"><span class="glyphicon glyphicon-off" aria-hidden="false" style="color:#FDFDFD"></span></a></li>
			
		</ul>
	<div>
	</div>
	</div>
	
  </div>
</nav> --%>
<body>
	<div class="panel panel-default">
	
	  	<div class="panel-heading" style="font-weight: 800;    color: #5E9C5E;
		    text-align: center;
		    font-size: larger;">Search Invoice Details
	 	</div>
	  
		<form class="form-inline" action="searchInvoiceData.html">
			<div class="form-group">
		    	<label for="fromDate">From Date</label>
		    	<input type="date" class="form-control" name="fromDate">
		  	</div>
		  	<div class="form-group">
		    	<label for="toDate">To Date</label>
		    	<input type="date" class="form-control" name="toDate">
		  	</div>
		  	<button type="submit" class="btn btn-default">Search Invoice</button>
		</form>
		
	</div>

<div style="margin-top:80px;text-align:center;font-weight:800;font-size: large;    color: #5E9C5E;"> Search Results</div>
<table id="grid-basic" class="table table-condensed table-hover table-striped">
<thead>
	<tr>
		<th data-column-id="invoiceId">In No</th>
		<th data-cloumn-id="invoiceValue">Inv val</th>
		<th data-column-id="invoiceType" data-order="desc">Type</th>
		<th data-column-id="truckNumber" data-order="desc">Truck No</th>
		<th data-column-id="invoiceDate" data-order="desc">Inv Date</th>
		
		<th data-column-id="receivedDate" data-order="desc">Rcvd Date</th>
		<th data-column-id="qOfCommodity" data-order="desc">Qnty Sub</th>
		<th data-column-id="qOfDomSub" data-order="desc">Qnty NonSub</th>
		<th data-column-id="qOfCommodity" data-order="desc">Qnty ND Sml</th>
		<th data-column-id="qOfDomSub" data-order="desc">Qnty ND Lrg</th>
	</tr>
	</thead>
<tbody>
<c:forEach items="${invoiceDetailsList}" var="invoice">
		<tr>
			<td><c:out value="${ invoice.invoiceNumber }" /></td>
			<td><c:out value="${ invoice.invoiceValue }" /></td>
			<td><c:out value="${ invoice.invoiceType }" /></td>
			<td><c:out value="${ invoice.truckNumber }"></c:out></td>
			<td><c:out value="${ invoice.invoiceDate }" /></td>
			<td><c:out value="${ invoice.receivedDate }" /></td>
			<td><c:out value="${ invoice.qtySubDomestic}" /></td>
			<td><c:out value="${ invoice.qtyNonSubDomestic }"></c:out></td>
			<td><c:out value="${ invoice.qtyNonDomesticSmall}" /></td>
			<td><c:out value="${ invoice.qtyNonDomesticLarge}" /></td>
		</tr>
		</c:forEach>

</tbody>
</table>
</body>
<script src="js/jquery.bootgrid.min.js"></script>
<link rel="stylesheet" href="css/jquery.bootgrid.min.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.2.8/jquery.form-validator.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.9.3/css/bootstrap-select.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.9.3/js/bootstrap-select.min.js"></script>
<script>
$("#grid-basic").bootgrid();
</script>
</html>