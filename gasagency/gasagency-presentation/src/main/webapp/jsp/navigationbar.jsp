<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="header.jsp"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
</head>
<body>

	<nav class="navbar navbar-default navigationclass" role="navigation"
		style="margin: 0px; background-color: rgba(59, 90, 183, 0.88);">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="CGA-navbar-collapse-1">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#" style="color:white;"><spring:message
						code="site.title" /></a>
			</div>
			<div class="collapse navbar-collapse navbar-header navbar-right"
				id="myNavbar">
				<ul class="nav navbar-nav default">
					<li><a style="color:white" 
						href="<%=request.getContextPath()%>/DataEntry.html"><spring:message code="nav.transaction"/></a></li>
					<li class="dropdown"><a class="dropdown-toggle" style="color:white" 
						data-toggle="dropdown" href="#"><spring:message code="nav.invoice"/> <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a class="navigationclass"
								href="<%=request.getContextPath()%>/invoiceEntry.html"
								><spring:message code="nav.add.invoice"/></a></li>
							<li><a class="navigationclass"
								href="<%=request.getContextPath()%>/viewInvoiceDetails.html"
								><spring:message code="nav.view.invoice"/></a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle" style="color:white"
						data-toggle="dropdown" href="#"><spring:message code="nav.crd"/> <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a class="navigationclass"
								href="<%=request.getContextPath()%>/CRDEntry.html"
								><spring:message code="nav.add.crd"/></a></li>
							<li><a class="navigationclass"
								href="<%=request.getContextPath()%>/viewInvoiceDetails.html"
								><spring:message code="nav.view.crd"/></a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle" style="color:white" 
						data-toggle="dropdown" href="#"><spring:message code="nav.deliveryperson"/> <span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a class="navigationclass"
								href="<%=request.getContextPath()%>/deliveryPersons.html"
								><spring:message code="nav.add.deliveryperson"/></a></li>
							<li><a class="navigationclass" href="#"><spring:message code="nav.view.deliveryperson"/></a></li>
						</ul></li>
					<li class="navigationclass"><a style="color:white" 
						href="<%=request.getContextPath()%>/welcome.html"><spring:message code="nav.logout"/></a></li>

				</ul>
				<div></div>
			</div>

		</div>
	</nav>
</body>
<%@include file="footer.jsp"%>
</html>