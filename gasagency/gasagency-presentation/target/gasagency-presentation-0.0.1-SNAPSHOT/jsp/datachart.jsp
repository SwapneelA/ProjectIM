<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src ="js/validate.js"></script>
<link type="text/css" href="css/header.css" rel="stylesheet"></link>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>Data Chart</title>
</head>
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
			<li><a href="<%=request.getContextPath()%>/DataEntry.html" style="color:#FDFDFD">Data Entry</a></li>
			<li><a href="<%=request.getContextPath()%>/invoiceEntry.html" style="color:#FDFDFD">Invoice</a></li>
			<li><a href="#" style="color:#FDFDFD">Reports</a></li>
			<li><a href="<%=request.getContextPath()%>/addDeliveryPerson.html" style="color:#FDFDFD">Delivery Person</a></li>
			<li><a href="<%=request.getContextPath()%>/welcome.html"><span class="glyphicon glyphicon-off" aria-hidden="false" style="color:#FDFDFD"></span></a></li>
			
		</ul>
	<div>
	</div>
	</div>
	
  </div>
</nav>

<!-- <div id="fixedheader">Chiplun Gas Agency</div> -->
<body>

<div class="page-header">
  <h1>Current Stock <small>All types of cylinder stock</small></h1>
</div>
<div class="row">
  
<div class="col-lg-3">
  <h4 style="
        color: #395092;
    font-weight: 800;
    text-align: center;
">Commodity</h4>
  <div>
    	<h1 class="thumbnail" style="text-align:center;background-color:cornflowerblue;height:150px;vertical-align:middle;line-height: 150px;">25</h1>
  </div>
  <div>
    <h1 class="thumbnail" style="text-align:center;background-color:cornflowerblue;height:150px;vertical-align:middle;line-height: 150px;">5</h1>
    </div>
  
      
  </div>
 <div class="col-lg-3">
  <h4 style="    color: #395092;
    font-weight: 800;
    text-align: center;">Domestic Subsidised</h4>
  <div>
    	<h1 class="thumbnail" style="text-align:center;background-color: lightgreen;height:150px;vertical-align:middle;line-height: 150px;">50</h1>
  </div>
  <div>
    <h1 class="thumbnail" style="text-align:center;background-color: lightgreen;height:150px;vertical-align:middle;line-height: 150px;">4</h1>
    </div>
  
      
  </div>
  <div class="col-lg-3">
  <h4 style="
        color: #395092;
    font-weight: 800;
    text-align: center;
">Domestic NonSubidised</h4>
  <div>
    	<h1 class="thumbnail" style="text-align:center;background-color: salmon;height:150px;vertical-align:middle;line-height: 150px;">100</h1>
  </div>
  <div>
    <h1 class="thumbnail" style="text-align:center;background-color: salmon;height:150px;vertical-align:middle;line-height: 150px;">7</h1>
    </div>
  
      
  </div>
  <div class="col-lg-3">
  <h4 style="
        color: #395092;
    font-weight: 800;
    text-align: center;
">Domestic Empty</h4>
  
  	<h1 class="thumbnail" style="text-align:center;background-color: palegoldenrod;height: 320px;vertical-align:middle;line-height: 250px;font-size: -webkit-xxx-large;text-shadow: black;">120</h1>
  
  
  
      
  </div>
  
  
  
</div>
<hr>
<div class="row">
	<div class="col-lg-6">
	<h4 style="    color: #395092;
    font-weight: 800;
    text-align: center;">Non Domestic Small</h4>
	
	<div  class="col-lg-2">
    	<h1 class="thumbnail" style="text-align:center;background-color: lightgreen;height:150px;vertical-align:middle;line-height: 150px;">75</h1>
  	</div>
  	
  	<div  class="col-lg-2">
    	<h1 class="thumbnail" style="text-align:center;background-color: lightgreen;height:150px;vertical-align:middle;line-height: 150px;">0</h1>
    </div>
    
    <div  class="col-lg-2">
    	<h1 class="thumbnail" style="text-align:center;background-color: lightgreen;height:150px;vertical-align:middle;line-height: 150px;">85</h1>
    </div>
    
	</div>
</div>
</div>
</body>
<!-- <div id="fixedfooter">Contact Us</div> -->
</html>