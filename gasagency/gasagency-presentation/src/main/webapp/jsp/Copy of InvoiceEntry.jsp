<html>
<head>
<title>Chiplun Gas Agency</title>
</head>
<!-- Latest compiled and minified CSS -->
<link type="text/css" href="css/header.css" rel="stylesheet"></link>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src ="js/validate.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<nav class="navbar navbar-default navbar-static-top app-navbar fixedheader" role="navigation" style="margin:0px;background-color: rgba(59, 90, 183, 0.88);">
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
			<li><a href="<%=request.getContextPath()%>/DataEntry.html" style="color:#FDFDFD">Data Entry</a></li>
			<li><a href="#" style="color:#FDFDFD">View Reports</a></li>
			<li><a href="<%=request.getContextPath()%>/addDeliveryPerson.html" style="color:#FDFDFD">Delivery Person</a></li>
			<li><a href="<%=request.getContextPath()%>/welcome.html"><span class="glyphicon glyphicon-off" aria-hidden="false" style="color:#FDFDFD"></span></a></li>
		</ul>
	<div>
	</div>
	</div>
	
  </div>
</nav>
<body>
<div style="margin-top:80px;">
<form class="form-inline" action="saveInvoice.html" method="post">
<div class="panel panel-default fontstyle" style="border-style:solid;border-width:1px;width:800px;margin:0 auto;border-radius:8px;">
<div class="panel-heading lead" style="text-align:center;font-size:16px;color: #333;background-color: #f5f5f5;font-weight: 800;
    color: #5E9C5E;
    text-align: center;
    font-size: larger;
}">Invoice Entry</div>

<table>
<tr>
	<td>
	<div class="form-group" style="margin-left:15px">
	    <label for="invoiceId">Invoice Id</label>
	    <input type="text" class="form-control" style="margin-left:30px;"name="invoiceId" placeholder="Invoice Id" 
	    required data-validation="required" data-validation-error-msg="Invoice id is required" >
	  </div>
	</td>
	<td>
		<div class="form-group" style="margin-left:15px;">
		<label for="invoiceValue">Invoice Value</label>
		<input type="number" style="margin-left:15px;" class="form-control" name="invoiceValue" placeholder="Invoice Value" 
		required data-validation="required" data-validation-error-msg="Invoice value is required" >
		</div>
	</td>
</tr>
<tr>
	<td>
		<div class="form-group" style="margin-left:15px;">
		    <label for="invoiceType">Invoice Type</label>
		    <select class="form-control" style="margin-left:10px;" name="invoiceType">
				<option value="1">Non-EMR</option>
				<option value="2">EMR</option>
			</select>
		</div>
	</td>
	<td>
		<div class="form-group">
			<label for="truckNumber">Truck number</label>
			<input type="text" class="form-control" id="truckNumber" style="margin-left:92px;" placeholder="Truck number" name="truckNumber" required 
					
			required data-validation="required" data-validation-error-msg="Truck no is required"  style="width:400px;">
			<span class="help-block form-error" style="text-align: end;"></span>
	 	</div>
	</td>
</tr>
<tr>
	<td>
		<div class="form-group" style="margin-left:98px;">
	    	<label for="invoiceDate">Invoice Date</label>
	    	<input type="date" class="form-control" name="invoiceDate" style="margin-left:22px;">
	 	</div>		
	</td>
	<td>
		<div class="form-group" style="margin-left:98px;">
		    <label for="receivedDate">Received Date</label>
		    <input type="date" class="form-control" name="receivedDate" style="margin-left:22px;">
	  	</div>
	</td>
</tr>

</table>
  
  <br><br><br>
  
  
  <br><br>
  <div class="panel-body form-group">
			<label for="qtyOfCommodity">Qty Of Commodity</label>
			<input type="number" class="form-control" style="margin-left:62px;" id="qtyOfCommodity" placeholder="Quantity of Commodity" name="qtyOfCommodity">
 </div>
 <br>
 <div class="panel-body form-group">
			<label for="qtyOfSubDomestic">Qty Of Sub Domestic</label>
			<input type="number" class="form-control" style="margin-left:48px;" id="qtyOfSubDomestic" placeholder="Qty Of Sub Domestic" name="qtyOfSubDomestic">
 </div>
 <br>
 <div class="panel-body form-group">
			<label for="qtyOfNonSubDomestic">Qty Of NonSub Domestic</label>
			<input type="number" class="form-control" style="margin-left:22px;" id="qtyOfNonSubDomestic" placeholder="Qty Of NonSub Domestic" name="qtyOfNonSubDomestic">
 </div>
 <br>
 <div class="panel-body form-group">
			<label for="qtyOfNonDomSmall">Qty Of NonDomestic Small</label>
			<input type="number" class="form-control" style="margin-left:15px;" id="qtyOfNonDomSmall" placeholder="Qty Of NonDomestic Small" name="qtyOfNonDomSmall">
 </div>
 <br>
 <div class="panel-body form-group">
			<label for="qtyOfNonDomLarge">Qty Of NonDomestic Large</label>
			<input type="number" class="form-control" style="margin-left:15px;" id="qtyOfNonDomLarge" placeholder="Qty Of NonDomestic Large" name="qtyOfNonDomLarge">
 </div>
 <br>
<!-- <select class="selectpicker">
  <option>Mustard</option>
  <option>Ketchup</option>
  <option>Relish</option>
</select> -->
 <div class="panel-body btn-group" >
			<button type="submit" class="btn btn-success" style="margin-left:300px;background-image: linear-gradient(#8add6d, #60b044);">Create an Invoice</button>
</div> 
 </div>
  
</form>

</div>

</body>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.2.8/jquery.form-validator.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.9.3/css/bootstrap-select.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.9.3/js/bootstrap-select.min.js"></script>
<script>
$.validate();
/* $('.selectpicker').selectpicker({
	  style: 'btn-info',
	  size: 4
	}); */

</script>

<!-- <div id="fixedfooter">Contact Us</div> -->
</html>