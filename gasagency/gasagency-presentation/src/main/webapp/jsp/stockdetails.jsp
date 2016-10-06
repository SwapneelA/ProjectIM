<html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><spring:message code="site.title"/></title>
</head>
<jsp:include page="navigationbar.jsp"></jsp:include> 
<body>
	<div class="page-header commoncss">
		<h3 style="margin-left: 20px;">
			<spring:message code="stockdetail.header"/> <small><spring:message code="stockdetail.subheader"/></small>
		</h3>
	</div>
	<div class="container" style="width: 900px; margin-top: 150px;">

		<table class="table table-bordered table-hover" style="height: 300px;">
			<tr>
				<td><spring:message code="label.CylinderVolume" /></td>
				<td><spring:message code="label.DomesticSubsidised" /></td>
				<td><spring:message code="label.DomesticNonSubsidised" /></td>

				<td><spring:message code="label.NonDomesticSmall" /></td>
				<td><spring:message code="label.NonDomesticLarge" /></td>
				<td><spring:message code="label.Domestic" /></td>
			</tr>
			<tr>
				<td><spring:message code="label.full"/></td>

				<c:forEach var="stockFull" items="${stockData['FULL']}">
					<td>${stockFull.quantity}</td>
				</c:forEach>
				</td>
				<td><spring:message code="label.notapplicable"/></td>

			</tr>
			<tr>
				<td><spring:message code="label.defective"/></td>
				<c:forEach var="stockDefective" items="${stockData['DEFECTIVE']}">
					<td>${stockDefective.quantity}</td>
				</c:forEach>
				<td><spring:message code="label.notapplicable"/></td>
			</tr>
			<tr>
				<td><spring:message code="label.empty"/></td>
				<td><spring:message code="label.notapplicable"/></td>
				<td><spring:message code="label.notapplicable"/></td>
				<c:forEach var="stockEmpty" items="${stockData['EMPTY']}">
					<td>${stockEmpty.quantity}</td>
				</c:forEach>
			</tr>
		</table>

	</div>
</body>
</html>