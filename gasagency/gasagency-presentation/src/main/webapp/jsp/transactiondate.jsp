								<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<title>Gas Agency</title>
</head>
<body>
<jsp:include page="navigationbar.jsp"></jsp:include>

<div class="container">
  
  <form:form modelAttribute="transactionInfo" action="saveCurrentTransactionDate.html" method="POST">
  	<table class="table table-bordered" style="width:400px;">
  		<tr style="height:50px;">
  			<td colspan="2" style="text-align:center;">Enter Transaction Date below</td>
  		</tr>
	  	<tr>
	  		<td>Transaction date</td>
	  		<td><input id="transactionDate" type="date" class="form-control" name="transactionDate" /></td>
	  	</tr>
	  	<tr>
	  		<td colspan="2" style="text-align:center;">
	  		<input class="btn btn-default" type="submit" value="Submit">
	  		</td>
	  	</tr>
	  	<input type="hidden" value="true"  name="openTransaction" id="openTransaction"/>

	</table>
  </form:form>
  

</div>


</body>
</html>