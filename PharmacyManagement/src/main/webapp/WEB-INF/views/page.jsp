<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url var="css" value="resources/css" />
<spring:url var="js" value="resources/js" />
<spring:url var="images" value="resources/images" />
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!--    for first testing  -->
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pharmacy Management</title>
</head>
<body>
	${contextRoot} says ${Greeting}
</body>
</html> -->

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Pharmacy Management - ${title}</title>
<script>
	window.menu = '${title}';
</script>

<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="${css}/metisMenu.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="${css}/sb-admin-2.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="${css}/morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="${css}/font-awesome.min.css" rel="stylesheet"
	type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<%@include file="./shared/navbar.jsp"%>

		<div class="content">
			<!--home content -->
			<c:if test="${userClickHome==true}">
				<%@include file="home.jsp"%>
			</c:if>

			<!--Inventory content -->
			<c:if test="${userClickInventoryHome==true}">
				<%@include file="inventory/inventoryhome.jsp"%>
			</c:if>

			<!-- Footer -->
			<%@include file="./shared/footer.jsp"%>
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="${js}/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="${js}/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="${js}/metisMenu.min.js"></script>

	<!-- Morris Charts JavaScript -->
	<script src="${js}/raphael.min.js"></script>
	<script src="${js}/morris.min.js"></script>
	<script src="${js}/morris-data.js"></script>
	<script src="${js}/navbar.js"></script>
	<!-- Custom Theme JavaScript -->
	<script src="${js}/sb-admin-2.js"></script>

</body>

</html>