<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>
	<spring:message code="site.title" />
</title>
</head>
<jsp:include page="navigationbar.jsp"></jsp:include>
<body>
	
	<!-- <div class="panel-body"> -->
	<form:form modelAttribute="deliveryPerson" class="form-inline" action="saveDeliveryPerson.html" method="post">
		<div id="headerDiv" class="bg-danger text-center">
			<span>Create Delivery person</span>
			<span>
				<button type="submit" class="btn btn-success"
					 style="width:200px;margin-left:520px;
					 background-image: linear-gradient(#8add6d, #60b044);">
				 Add Person
				 </button>
			</span>
		</div>
		<table class="table table-bordered">
			<tr>
				<td>First Name</td>
				<td>Last Name</td>
				<td>Phone Number</td>
				<td>Delivery Person Type</td>
			</tr>
			<tr>
				<td>
					<div class="form-group" style="margin-left: 25px;">
						<input type="text" class="form-control" name="firstName" placeholder="First Name" required />
					</div>
				</td>
				<td>
					<div class="form-group" style="margin-left: 25px;">
						<input type="text" class="form-control" name="lastName" placeholder="Last Name" required />
					</div>
				</td>
				<td>
					<div class="form-group" style="margin-left: 25px;">
						<input type="text" class="form-control" name="phoneNumber" placeholder="Phone Number" required />
					</div>
				</td>
				<td>
					<div class="form-group" style="margin-left: 25px;">
						<select class="form-control" style="margin-left: 10px;"
							name="deliveryPersonType">
							<option value="1">Delivery Person</option>
							<option value="2">Outside Delivery Person</option>
							<option value="3">Other</option>
						</select>
					</div>
				</td>
			</tr>
		</table>
	</form:form>
	<div style="margin-top: 80px; text-align: center; font-weight: 400; font-size: 20px;float:left">
		Search and View Delivery Persons</div>
	<table id="grid-basic"
		class="table table-condensed table-hover table-striped">
		<thead>
			<tr>
				<th data-column-id="firstname"><spring:message code="label.firstname"/></th>
				<th data-column-id="lastname" data-order="desc"><spring:message code="label.lastname"/></th>
				<th data-cloumn-id="phonenumber"><spring:message code="label.phonenumber"/></th>
				<th data-column-id="deliverypersontype" data-order="desc"><spring:message code="label.deliverypersontype"/></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${deliveryPersons}" var="deliveryPerson">
				<tr>
					<td><c:out value="${ deliveryPerson.firstName }" /></td>
					<td><c:out value="${ deliveryPerson.lastName }" /></td>
					<td><c:out value="${ deliveryPerson.phoneNumber }" /></td>
					<td><c:out value="${ deliveryPerson.deliveryPersonType }" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
<script>$("#grid-basic").bootgrid();</script>
</html>