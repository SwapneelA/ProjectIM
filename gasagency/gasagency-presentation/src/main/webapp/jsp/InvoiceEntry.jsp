<html>
<head>
<title>Gas Agency</title>
</head>
<link type="text/css" href="css/header.css" rel="stylesheet"></link>
<link type="text/css" href="css/style.css" rel="stylesheet"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.9.3/css/bootstrap-select.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="navigationbar.jsp"></jsp:include>
<body>
<c:if test="${ invoicesaved }">
	<div class="alert alert-success" role="alert" style="
    font-family: &quot;Whitney SSm A&quot;, &quot;Whitney SSm B&quot;, &quot;Avenir&quot;, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Ubuntu&quot;, sans-serif;
    font-weight: normal;
    clear: both;
    font-size: 20px;
    text-align: center;
">Invoice Saved Successfully</div>
</c:if>

<c:if test="${ invoicesaved eq 'false'}">
	<div class="alert alert-danger" role="alert" style="
    font-family: &quot;Whitney SSm A&quot;, &quot;Whitney SSm B&quot;, &quot;Avenir&quot;, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Ubuntu&quot;, sans-serif;
    font-weight: normal;
    clear: both;
    font-size: 20px;
    text-align: center;
">Invoice data not saved. Check Invoice number if it is already entered</div>
</c:if>
	
	<div class="page-header">
	  <h3 style="margin-left:20px;">Invoice Details <small>Add Invoice Details below</small></h3>
	</div>
	
	<div style="margin-top:80px;" class="container">
		<form:form modelAttribute="invoiceDetails" class="form-horizontal" action="saveInvoice.html" method="post" data-toggle="validator" role="form">
		<div class="form-group invoice-div">
			<label for="invoiceNumber" class="col-sm-4 control-label invoice-label ">Invoice Number</label>
			<div class="col-sm-1"></div>
			<div class="col-sm-2" style=" ">
				<input type="text" class="form-control invoice-label" name="invoiceNumber" required data-validation="required" data-validation-error-msg="Invoice no is required">
			</div>
		</div>
		<br>
		<div class="form-group invoice-div">
			<label for="invoiceValue" class="col-sm-4 control-label invoice-label">Invoice Value</label>
			<div class="col-sm-1"></div>
			<div class="col-sm-2" style=" ">
				<input type="text" class="form-control invoice-label" name="invoiceValue" required data-validation="required"
				 data-validation-error-msg="Invoice value is required"/> 
			</div>
		</div>
		<br>
		<div class="form-group invoice-div">
			<label for="InvoiceType" class="col-sm-4 control-label invoice-label">Invoice Type</label>
			<div class="col-sm-1"></div>
			<div class="col-sm-2" style=" ">
				<select class="form-control" name="invoiceType">
						<option value="1">Non-EMR</option>
						<option value="2">EMR</option>
				</select>
			</div>
		</div>
		<br>
		<div class="form-group invoice-div">
			<label for="truckNumber" class="col-sm-4 control-label invoice-label">Truck Number</label>
			<div class="col-sm-1"></div>
			<div class="col-sm-2" style=" ">
				<input type="text" class="form-control invoice-label" name="truckNumber" required
				  data-validation-error-msg="Truck no is required"> 
			</div>
		</div>
		<br>
		<div class="form-group invoice-div">
			<label  for="invoiceDate" class="col-sm-4 control-label invoice-label">Invoice Date</label>
			<div class="col-sm-1"></div>
			<div class="col-sm-2" style=" ">
				<input type="date" class="form-control" name="invoiceDate" required data-validation-error-msg="Invoice date is required"/>
			</div>
			
		</div>
		<br>
		<div class="form-group invoice-div">
			<label for="receivedDate" class="col-sm-4 control-label invoice-label">Received Date</label>
			<div class="col-sm-1"></div>
			<div class="col-sm-2" style=" ">
				<input type="date" class="form-control" name="receivedDate" required data-validation-error-msg="Received date is required"/>
			</div>
		</div>
		<br>
		<div class="form-group invoice-div">
			<label for="quantityOfSDomestic" class="col-sm-4 control-label invoice-label">Domestic Subsidised(Q)</label>
			<div class="col-sm-1"></div>
			<div class="col-sm-2" style=" ">
				<input type="numeric" class="form-control" name="qtySubDomestic"/>
			</div>
		</div>
		<br>
		<div class="form-group invoice-div">
			<label for="quantityOfNSDomestic" class="col-sm-4 control-label invoice-label">Domestic NonSubsisdised(Q)</label>
			<div class="col-sm-1"></div>
			<div class="col-sm-2" style=" ">
				<input type="numeric" class="form-control" name="qtyNonSubDomestic"/>
			</div>
		</div>
		<br>
		<div class="form-group invoice-div">
			<label for="quantityOfNonDomesticSmall" class="col-sm-4 control-label invoice-label">NonDomestic Small(Q)</label>
			<div class="col-sm-1"></div>
			<div class="col-sm-2" style=" ">
				<input type="numeric" class="form-control" name="qtyNonDomesticSmall"/>
			</div>
		</div>
		<br>
		<div class="form-group invoice-div">
			<label for="quantityOfNonDomesticLarge" class="col-sm-4 control-label invoice-label">NonDomestic Large(Q)</label>
			<div class="col-sm-1"></div>
			<div class="col-sm-2" style=" ">
				<input type="numeric" class="form-control" name="qtyNonDomesticLarge"/>
			</div>
		</div>
		<br><br>
		<div class="form-group invoice-div">
			<div class="col-sm-6">
				<button type="submit" class="btn btn-lg btn-success pull-right button-style">Create an Invoice</button>		
			</div>
		</div>
		<br><br>
		</form:form>
	</div>

</body>

 <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.9.3/js/bootstrap-select.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.2.8/jquery.form-validator.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>


 <script>
	$.validate();
</script>  -->

</html>