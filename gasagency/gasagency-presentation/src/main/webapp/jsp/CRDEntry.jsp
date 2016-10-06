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
<c:if test="${ crddatasaved }">
	<div class="alert alert-success" role="alert" style="
    font-family: &quot;Whitney SSm A&quot;, &quot;Whitney SSm B&quot;, &quot;Avenir&quot;, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Ubuntu&quot;, sans-serif;
    font-weight: normal;
    clear: both;
    font-size: 20px;
    text-align: center;
">CRD Saved Successfully</div>
</c:if>

<c:if test="${ crddatasaved eq 'false'}">
	<div class="alert alert-danger" role="alert" style="
    font-family: &quot;Whitney SSm A&quot;, &quot;Whitney SSm B&quot;, &quot;Avenir&quot;, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Ubuntu&quot;, sans-serif;
    font-weight: normal;
    clear: both;
    font-size: 20px;
    text-align: center;
">CRD data not saved. Check CRD number if it is already entered</div>
</c:if>
	
	<div class="page-header">
	  <h3 style="margin-left:20px;">CRD Details <small>Add CRD details below</small></h3>
	</div>
	
	<div style="margin-top:80px;" class="container">
		<form:form modelAttribute="crdDetails" class="form-horizontal" action="saveCRD.html" method="post" data-toggle="validator" role="form">
		<div class="form-group invoice-div">
			<label for="CRDNumber" class="col-sm-4 control-label invoice-label ">CRD Number</label>
			<div class="col-sm-1"></div>
			<div class="col-sm-2" style=" ">
				<input type="text" class="form-control invoice-label" name="CRDNumber" required data-validation="required" data-validation-error-msg="CRD no is required">
			</div>
		</div>
		<br>
		<div class="form-group invoice-div">
			<label for="invoiceNumber" class="col-sm-4 control-label invoice-label">Invoice Number</label>
			<div class="col-sm-1"></div>
			<div class="col-sm-2" style=" ">
				<input type="text" class="form-control invoice-label" name="invoiceNumber" required data-validation="required"
				 data-validation-error-msg="Invoice no is required"/> 
			</div>
		</div>
		<br>
		<div class="form-group invoice-div">
			<label  for="invoiceDate" class="col-sm-4 control-label invoice-label">CRD Date</label>
			<div class="col-sm-1"></div>
			<div class="col-sm-2" style=" ">
				<input type="date" class="form-control" name="CRDDate" required data-validation-error-msg="CRD date is required"/>
			</div>
			
		</div>
		<br>
		<div class="form-group invoice-div">
			<label for="qtyDomesticEmpty" class="col-sm-4 control-label invoice-label">Dmstic Empty(Q)</label>
			<div class="col-sm-1"></div>
			<div class="col-sm-2" style=" ">
				<input type="numeric" class="form-control" name="qtyDomesticEmpty"/>
			</div>
		</div>
		<br>
		<div class="form-group invoice-div">
			<label for="qtyNonDomesticSmallEmpty" class="col-sm-4 control-label invoice-label">NonDmstic Sml Empty(Q)</label>
			<div class="col-sm-1"></div>
			<div class="col-sm-2" style=" ">
				<input type="numeric" class="form-control" name="qtyNonDomesticSmallEmpty"/>
			</div>
		</div>
		<br>
		<div class="form-group invoice-div">
			<label for="qtyNonDomesticLargeEmpty" class="col-sm-4 control-label invoice-label">NonDmstic Lrg Empty(Q)</label>
			<div class="col-sm-1"></div>
			<div class="col-sm-2" style=" ">
				<input type="numeric" class="form-control" name="qtyNonDomesticLargeEmpty"/>
			</div>
		</div>
		<br>
		<div class="form-group invoice-div">
			<label for="qtyDomesticSubsidisedDefective" class="col-sm-4 control-label invoice-label">Dmstic Sbsd Dfctv(Q)</label>
			<div class="col-sm-1"></div>
			<div class="col-sm-2" style=" ">
				<input type="numeric" class="form-control" name="qtyDomesticSubsidisedDefective"/>
			</div>
		</div>
		<br>
		<div class="form-group invoice-div">
			<label for="qtyDomesticNonSubsidisedDefective" class="col-sm-4 control-label invoice-label">Dmstic NonSbsd Dfctv(Q)</label>
			<div class="col-sm-1"></div>
			<div class="col-sm-2" style=" ">
				<input type="numeric" class="form-control" name="qtyDomesticNonSubsidisedDefective"/>
			</div>
		</div>
		<br>
		<div class="form-group invoice-div">
			<label for="qtyNonDomesticSmallDefective" class="col-sm-4 control-label invoice-label">NonDmstic Sml Dfctv(Q)</label>
			<div class="col-sm-1"></div>
			<div class="col-sm-2" style=" ">
				<input type="numeric" class="form-control" name="qtyNonDomesticSmallDefective"/>
			</div>
		</div>
		<br>
		<div class="form-group invoice-div">
			<label for="qtyNonDomesticLargeDefective" class="col-sm-4 control-label invoice-label">NonDmstic Lrg Dfctv(Q)</label>
			<div class="col-sm-1"></div>
			<div class="col-sm-2" style=" ">
				<input type="numeric" class="form-control" name="qtyNonDomesticLargeDefective"/>
			</div>
		</div>
		<br><br>
		<div class="form-group invoice-div">
			<div class="col-sm-6">
				<button type="submit" class="btn btn-lg btn-success pull-right button-style">Create CRD Entry</button>		
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