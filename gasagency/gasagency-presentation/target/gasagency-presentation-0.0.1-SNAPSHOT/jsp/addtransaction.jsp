<%@page import="com.gasagency.pojo.TransactionViewModel"%>
<%@page import="com.gasagency.pojo.DeliveryPersonMaster"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.gasagency.pojo.*"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% Map dataMap = (Map)request.getAttribute("dataMap"); 
System.out.print(dataMap.size()); 
 List<DeliveryPersonMaster> deliveryPersonList =(List<DeliveryPersonMaster>) dataMap.get("deliveryPersonList");
 List<TransactionViewModel> listOfTransactions =(List<TransactionViewModel>) dataMap.get("listOfTransactions");
 request.setAttribute("deliveryPersonList", deliveryPersonList);
 request.setAttribute("listOfTransactions", listOfTransactions);
 System.out.println(deliveryPersonList.size());
 %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="css/jquery.bootgrid.min.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>Add Transaction</title>

</head>

<jsp:include page="tab.jsp"></jsp:include>
<body>
<div class="panel panel-default">
  <div class="panel-heading" style="font-weight: 800;color: #5E9C5E;
    text-align: center;
    font-size: larger;">Add Transaction</div>
  <div class="panel-body">
	<form class="form-inline" action="saveTransaction.html" method="post">
	
	<div class="form-group" style="margin-left: 25px;">
		<select class="form-control" style="margin-left:10px;" name="operationTypeId">
				<option value="1">Add</option>
				<option value="2">Remove</option>
		</select>
	</div>
	<div class="form-group" style="margin-left: 25px;">
		<select class="form-control" style="margin-left:10px;" name="cylinderCategoryId">
				<option value="1">Full</option>
				<option value="2">Empty</option>
				<option value="3">Defective</option>
		</select>
	</div>
	<div class="form-group" style="margin-left: 25px;">
		<select class="form-control" style="margin-left:10px;" name="cylinderTypeId">
				<option value="1">Commodity</option>
				<option value="2">Domestic Sub</option>
				<option value="3">Domestic NonSub</option>
				<option value="4">NonDomestic Small</option>
				<option value="5">NonDomestic Large</option>
		</select>
	</div>
	<div class="form-group" style="margin-left: 25px;">
		<select class="form-control" style="margin-left:10px;" name="deliveryId">
		 
		 <c:forEach items="${deliveryPersonList}" var="person">
				<option value="<c:out value="${person.deliveryPersonId}" />"><c:out value="${ person.deliveryPersonFirstName}" /></option>
		</c:forEach> 
		
		</select>
	</div>
	<div class="form-group" style="margin-left: 25px;">
		<input type="number" class="form-control" id="idQuantity" placeholder="Quantity" name="quantity">
	</div>
	<button type="submit" class="btn btn-success" style="width:200px;margin-left:85px;background-image: linear-gradient(#8add6d, #60b044);">Add Record</button>
    <div>
</div></form>
  </div>
</div>
<div style="margin-top:80px;text-align:center;font-weight:800;font-size: large;    color: #5E9C5E;"> Search Transaction</div>
<table id="grid-basic" class="table table-condensed table-hover table-striped">
<thead>
	<tr>
		<th data-column-id="optype">Operation Type</th>
		<th data-column-id="cylvol" data-order="desc">Cylinder Volume</th>
		<th data-cloumn-id="cyltype">Cylinder Type</th>
		<th data-column-id="quantity" data-order="desc">Quantity</th>
		<th data-column-id="deliveryperson" data-order="desc">Delivery Person</th>
	</tr>
</thead>
<tbody>
	<c:forEach items="${listOfTransactions}" var="transaction">
		<tr>
			<td><c:out value = "${ transaction.operationType }" /> </td>
			<td><c:out value = "${ transaction.cylinderType }" /> </td>
			<td ><c:out value = "${ transaction.cylinderVolume }" /> </td>
			<td><c:out value = "${ transaction.quantity }" /> </td>
			<td><c:out value = "${ transaction.deliveryPerson }" /> </td>
		</tr>		
	</c:forEach>
</tbody>
</table>

</body>
<form method="POST" action="">
	<button type="submit" class="btn btn-success" data-toggle="" data-target="#myModal">Freeze Transaction</button>
	<button ></button>
</form>
<!-- <script>
	$("#grid-basic").bootgrid();
</script> -->
<!-- <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="js/jquery.bootgrid.min.js"></script> -->
</html>