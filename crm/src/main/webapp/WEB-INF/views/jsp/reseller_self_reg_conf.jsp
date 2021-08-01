<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.sales.crm.model.Beat"%>
<%@ page import="com.sales.crm.model.TrimmedCustomer"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html lang="en">

<head>
<title>Create Area</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet" />
<script src="<%=request.getContextPath()%>/resources/js/jquery-3.2.0.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
<link href="<%=request.getContextPath()%>/resources/css/bootstrap-datepicker.css" rel="stylesheet">
<script	src="<%=request.getContextPath()%>/resources/js/bootstrap-datepicker.js"></script>

<style>
.dpHeaderWrap {
	position: relative;
	width: auto;
	height: 80px;
	background: #fff;
	border-style: solid;
	border-bottom-style: groove;
	border-top-style: none;
	border-left-style: none;
	border-right-style: none;
	margin: 10px;
}

.top-height {
	margin-top: 2%;
}

.customer_list {
	margin-bottom: 20px;
}

.add_customer {
	text-align: right;
	margin-top: 31px;
}

.side_nav_btns {
	margin-top: 10px;
}

.side_nav_btns a {
	text-decoration: none;
	background: #337ab7;
	padding: 11px;
	border-radius: 12px;
	color: #ffffff;
	margin-top: 12px;
}

.form_submit {
	margin-top: 14px;
	text-align: right;
}
</style>
</head>

<body>
	<!-- Header -->
	<header class="dpHeaderWrap">
		<div class="text-center">Header part</div>
	</header>
	<!-- Header -->
	<div class="container">
		<!-- Links -->
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#"></a>
				</div>
				
			</div>
		</nav>
		<div class="row top-height">
			<div class="col-md-8 ">
					<br>
					<br>
					<c:choose>
    					<c:when test="${fn:length(msg) gt 0}">
       						<div class="alert alert-danger">
	 						 <strong>Error!</strong><br> ${msg}
						</div>
    					</c:when>    
    					<c:otherwise>
        					<div class="alert alert-success">
	 						 <strong>Success!</strong><br> Dear Reseller, <br> Your registration request has been accepted. You will be communicated for the further process through your email address.<br> Thank You..
						</div>
    					</c:otherwise>
					</c:choose>
					<c:choose>
    					<c:when test="${fn:length(msg) gt 0}">
							<div class="form_submit">
								<button type="submit" class="btn btn-primary" onclick="goBack()">Back</button>
							</div>
						</c:when>  	
					</c:choose>	
			</div>
		</div>
	</div>
	<script>
		function goBack() {
   		 window.history.back();
	}
</script>
	</body>
</html>