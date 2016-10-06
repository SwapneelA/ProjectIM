<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src ="js/validate.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
 <%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.gasagency.pojo.*" %> 
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<% Map mapOfData = (Map)request.getAttribute("mapOfData");

	List listOfFull = (List<StockDetailsViewModel>) mapOfData.get("FULL");
	List listOfEmpty = (List<StockDetailsViewModel>)mapOfData.get("EMPTY");
	List listOfDefective = (List<StockDetailsViewModel>) mapOfData.get("DEFECTIVE");
	session.setAttribute("full", listOfFull);
	session.setAttribute("empty", listOfEmpty);
	session.setAttribute("defective", listOfDefective);
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<% %>
<jsp:include page="navigationbar.jsp"></jsp:include>
<body>
<div class="page-header">
	  <h3 style="margin-left:20px;">Current Stock <small>View Stock for each type of cylinder</small></h3>
	</div>
<div class="container" style="width:900px;margin-top:150px;">
	
	<table class="table table-bordered">
	<tr>	
		<th> <spring:message code="label.CylinderVolume"/> </th>
		<th> <spring:message code="label.DomesticSubsidised"/> </th>
		<th> <spring:message code="label.DomesticNonSubsidised"/> </th>
		<th> <spring:message code="label.Domestic"/></th>
		<th> <spring:message code="label.NonDomesticSmall"/></th>
		<th> <spring:message code="label.NonDomesticLarge"/></th>
	</tr>
	<tr>
		<td>Full</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>Defective</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>Empty</td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	</table>
	
</div>
</body>
</html>