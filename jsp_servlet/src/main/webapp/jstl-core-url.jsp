<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Dynamic URl</title>
</head>
<body>
<c:set> var="username" value="zaw zaw"</c:set>
<c:set> var="password" value="apple"</c:set>

<c:url var="dynamiclink"  value="session-data.jsp">
<c:param name="username" value="${usename }"></c:param>
<c:param name="password" value="${password }"></c:param>
</c:url>

<h1>Dynamic Link...</h1>
<a href="${dynamiclink }">click Here</a>
</body>
</html>