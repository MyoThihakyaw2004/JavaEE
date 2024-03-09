<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="jakarta.tags.core"  prefix="c"%>
    <%@ taglib uri="jakarta.tags.fmt"  prefix="fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL FMT Bundle</title>
</head>
<body>
<h1>Java Settings</h1>
<fmt:bundle basename="resource.settings">
<p> theme : <fmt:message key="theme"></fmt:message></p>
<p> app-version :<fmt:message key="app-version"></fmt:message></p>
<p> java-version : <fmt:message key="java-version"></fmt:message></p>
<p> packaging : <fmt:message key="packaging"></fmt:message></p>
<p> type : <fmt:message key="type"></fmt:message></p>

</fmt:bundle>
</body>
</html>