<html>
<head>
<title>Gas Agency</title>
</head>
<%@include file="header.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<div id="fixedheader" class="invoice-label">Gas Agency</div>
<body>
	<div style="height: 400px; width: 300px; margin: 0 auto;">
		<form action="main.html" id="loginform" method="POST">
			<c:if test="${ error eq 'true' }">
				<div id="errordiv" style="text-align: center">
					<h4 style="color: red">
						<spring:message code="login.failed" />
					</h4>
				</div>
			</c:if>
			<div class="panel panel-default fontstyle id="loginformpaneldiv">
				<div class="panel-heading lead">
					<spring:message code="user.login" />
				</div>
				<div>
					<div class="form-group has-feedback loginpagecss">
						<label for="username"><spring:message
								code="label.username" /></label> <input type="text" class="form-control"
							id="username" placeholder="Username" name="userName" required
							data-validation="required"
							data-validation-error-msg="<spring:message code="username.required" />">
					</div>

					<div class="form-group has-feedback loginpagecss">
						<label for="idpassword"><spring:message
								code="label.password" /></label> <input type="password"
							class="form-control" id="idpassword" placeholder="Password"
							name="password" required data-validation="required"
							data-validation-error-msg="<spring:message code="password.required" />">
					</div>


					<div class="text-center loginpagecss">
						<button type="submit" class="btn btn-primary"
							style="background-image: linear-gradient(#8add6d, #60b044);"><spring:message code="login.button" /></button>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>

<%@include file="footer.jsp"%>
<script>
	$.validate();
</script>
</html>