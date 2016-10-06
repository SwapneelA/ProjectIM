<%@page import="com.gasagency.pojo.TransactionViewModel"%>
<%@page import="com.gasagency.pojo.DeliveryPersonMaster"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<%@ page import="com.gasagency.pojo.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	Map dataMap = (Map)request.getAttribute("dataMap"); 
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
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Add Transaction</title>
</head>
<jsp:include page="navigationbar.jsp"></jsp:include>
<body>
	<div id="headerDiv" class="bg-danger text-center">Add Transaction</div>
	<!-- <div class="panel-body"> -->
	<form class="form-inline" action="saveTransaction.html" method="post">
		<table class="table table-bordered">
			<tr>
				<td>Select Action</td>
				<td>Select Volume</td>
				<td>Select Cylinder</td>
				<td>Select Delivery Person</td>
				<td>Enter Quantity</td>
				<td>Max Quantity</td>
			</tr>
			<tr>
				<td>
					<div class="form-group" style="margin-left: 25px;">
						<select class="form-control" style="margin-left: 10px;"
							name="operationTypeId">
							<option value="1">Give</option>
							<option value="2">Receive</option>
						</select>
					</div>
				</td>
				<td>
					<div class="form-group" style="margin-left: 25px;">
						<select id="cylinderCategoryId" class="form-control"
							style="margin-left: 10px;" name="cylinderCategoryId"
							onchange="jsOnChangeFunction()">
							<c:forEach items="${ cylinderVolumes }" var="cylinderVolume">
								<option value="${ cylinderVolume.volumeId }"><c:out
										value="${cylinderVolume.volumeName }" /></option>
							</c:forEach>
						</select>
					</div>
				</td>
				<td>
					<div class="form-group" style="margin-left: 25px;">
						<select id="cylinderTypeId" class="form-control"
							style="margin-left: 10px;" name="cylinderTypeId"
							onchange="jsOnChangeFunction()">
							<c:forEach items="${ cylinderTypes }" var="cylinderTypeObj">
								<option value="${ cylinderTypeObj.cylinderTypeId }"><c:out
										value="${ cylinderTypeObj.cylinderType }" /></option>
							</c:forEach>
						</select>
					</div>
				</td>
				<td>
					<div class="form-group" style="margin-left: 25px;">
						<select class="form-control" style="margin-left: 10px;"
							name="deliveryId">
							<c:forEach items="${deliveryPersonList}" var="person">
								<option value="<c:out value="${person.deliveryPersonId}" />"><c:out
										value="${ person.firstName}" /></option>
							</c:forEach>
						</select>
					</div>
				</td>
				<td>
					<div class="form-group" style="margin-left: 25px;">
						<input type="number" class="form-control" id="idQuantity"
							placeholder="Quantity" name="quantity" required>
					</div>
				</td>
				<td><input id="maxQuantity" type="text" readonly disabled>
				</td>
			</tr>
		</table>
		<div class="text-center">
			<button type="submit" class="btn btn-primary">
				<spring:message code="button.add.record" />
			</button>
		</div>

	</form>
	<div
		style="margin-top: 80px; text-align: center; font-weight: 800; font-size: large; color: #5E9C5E;">
		Search Transaction</div>
	<table id="grid-basic"
		class="table table-condensed table-hover table-striped">
		<thead>
			<tr>
				<th data-column-id="optype"><spring:message code="label.action" /></th>
				<th data-column-id="cylvol" data-order="desc"><spring:message
						code="label.CylinderVolume" /></th>
				<th data-cloumn-id="cyltype"><spring:message
						code="label.cylindertype" /></th>
				<th data-column-id="quantity" data-order="desc"><spring:message
						code="label.quantity" /></th>
				<th data-column-id="deliveryperson" data-order="desc"><spring:message
						code="label.delivery.person" /></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${listOfTransactions}" var="transaction">
				<tr>
					<td><c:out value="${ transaction.operationType }" /></td>
					<td><c:out value="${ transaction.cylinderType }" /></td>
					<td><c:out value="${ transaction.cylinderVolume }" /></td>
					<td><c:out value="${ transaction.quantity }" /></td>
					<td><c:out value="${ transaction.deliveryPerson }" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<form action="endTransaction.html" method="POST">
	<div class="modal fade" tabindex="-1" role="dialog" id="confirmationModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">Confirm you want to end today's transaction?</h4>
				</div>
				<!-- <div class="modal-body">
					<p>One fine body&hellip;</p>
				</div> -->
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
					<button type="submit"  class="btn btn-primary">Confirm</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	</form>
	<button class="btn btn-primary" data-toggle="modal"
			data-target="#confirmationModal">End today's transaction</button>
	<!-- </form> -->
</body>
<script>
	$("#grid-basic").bootgrid();
	function jsOnChangeFunction() {
		var search = {}
		search["cylinderTypeId"] = $("#cylinderTypeId").val();
		search["cylinderCategoryId"] = $("#cylinderCategoryId").val();

		$
				.ajax({
					type : "POST",
					Accept : "application/json",
					contentType : "application/json",
					url : "http://localhost:8080/gasagency-presentation/getAvailableQuantity.json",
					data : JSON.stringify(search),
					dataType : 'json',
					timeout : 100000,
					success : function(data) {
						console.log("SUCCESS: ", data);
						display(data);
					},
					error : function(e) {
						console.log("ERROR: ", e);
						display(e);
					}
				});
	}

	function display(data) {
		$('#maxQuantity').val(data);
	}
</script>
</html>