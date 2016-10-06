<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.9.3/css/bootstrap-select.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<title>Gas Agency</title>
</head>
<body>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
			 data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" 
			 aria-expanded="false">
			  	<span class="sr-only">Toggle navigation</span>
        		<span class="icon-bar"></span>
        		<span class="icon-bar"></span>
        		<span class="icon-bar"></span>
      		</button>
		</div>
		 <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		 	<ul class="nav navbar-nav">
		 		<li class="active"><a href="<%=request.getContextPath()%>/DataEntry.html">Transaction<span class="sr-only">(current)</span></a></li>
		 		
		 		<li class="dropdown">
		 			<a href="#" class="dropdown-toggle" data-toggle="dropdown" 
		 				role="button" aria-haspopup="true"
		 			 	aria-expanded="false">Invoice <span class="caret"></span>
		 			 </a>
		 			 <ul class="dropdown-menu">
		 			 	<li><a href="<%=request.getContextPath()%>/invoiceEntry.html">Add Invoice</a></li>
		 			 	<li><a href="<%=request.getContextPath()%>/viewInvoiceDetails.html">View Invoice</a></li>
		 			 </ul>
		 		</li>
		 		
		 		<li class="dropdown">
		 			<a href="#" class="dropdown-toggle" data-toggle="dropdown" 
		 				role="button" aria-haspopup="true"
		 			 	aria-expanded="false">Delivery Person <span class="caret"></span>
		 			 </a>
		 			 <ul class="dropdown-menu">
		 			 	<li><a href="<%=request.getContextPath()%>/AddDeliveryPerson.html">Add Delivery Person</a></li>
		 			 	<li><a href="<%=request.getContextPath()%>/viewInvoiceDetails.html">View Delivery Persons</a></li>
		 			 </ul>
		 		</li>
		 		<li><a href="<%=request.getContextPath()%>/welcome.html" >Logout</a></li>
		 	</ul>
		 </div>
	</div>
</nav>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script>
    $(".nav li").on("click", function() {
      $(".nav li").removeClass("active");
      $(this).addClass("active");
    });

</script>
</body>
</html>