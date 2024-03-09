<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>

<html lang="en">
<head>
<c:import url="../common/header.jsp"></c:import>
</head>
<body>
	<div class="container-fluid">
		<!-- nav start-->
		<c:import url="../common/nav.jsp"></c:import>

		<!-- nav end-->

		<h1 class="text-danger"> ${message }</h1>

	<c:import url="../common/footer.jsp"></c:import>

</body>
</html>