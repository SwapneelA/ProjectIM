<html>
<head>
<title>Chiplun Gas Agency</title>
</head>
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

<!--  <link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.min.js"></script>
-->


<div id="fixedheader">Chiplun Gas Agency</div>
<body>

<div style="margin-top:80px;">


<form class="visible-*-*" action="main.html" id="loginform" style="width:350px;margin:0 auto;margin-top:175px;border:5px;" method="post" >
	
	<div id="errordiv" style="text-align:center">
		<% 
		String errorMessage=(String)request.getAttribute("error");
		if(null!=errorMessage)
		{
			out.println("<h4 style='color:red'>"+errorMessage+"</h4>");
		}
		%>
	</div>
	<div class="panel panel-default fontstyle" style="border-style:solid;border-width:1px;border-radius:8px;">
		<div class="panel-heading lead">User Login</div>
		<div style="width:300px;margin-left:15px;height:300px;">
			<div class="form-group has-feedback">
				<label  for="username">Username</label>
				<input type="text" class="form-control" id="username" placeholder="Username" name="userName" required data-validation="required" data-validation-error-msg="Username is required">
				<i class="glyphicon glyphicon-user form-control-feedback"></i>
			</div>
			<div class="form-group has-feedback">
				<label for="idpassword" >Password</label>
				<!-- <input type="password" class="form-control" id="idpassword" placeholder="Password" name="password" required data-validation="required" data-validation-error-msg="Password is required" style="background-color:rgb(250, 255, 189)"> -->
				<input type="password" class="form-control" id="idpassword" placeholder="Password" name="password" required data-validation="required" data-validation-error-msg="Password is required">
				<i class="glyphicon glyphicon-lock  form-control-feedback"></i>
			</div>
			<br>
			<div class="text-center">
				<button type="submit" class="btn btn-success" style="background-image: linear-gradient(#8add6d, #60b044);">Login</button>
			</div>
		</div>
	</div>
</form>
</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.2.8/jquery.form-validator.min.js"></script>
<script>
$.validate();
</script>

</body>
</html>