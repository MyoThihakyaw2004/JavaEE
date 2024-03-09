<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core Variable</title>
</head>
<body>
<c:set var="salary" value="${ 2000}"/>
<c:set var="age" value="${ 20}"/>
<c:set var="withoutXml" value="Hello JSTL"/>
<c:set var="Xml" value=" <greet><hello> Hello JSTL</hello><greet>"/>

<p>salary:${salary }</p><!-- expression -->
<p> age : <c:out value="${age }"></c:out></p>

<h3>Expression</h3>
<p>withoutXml : ${withoutXml }</p>
<p>Xml : ${Xml }</p>

<h3>Out Tag</h3>
<p>withoutXml :<c:out value="${withoutXml }"></c:out> </p>
<p>Xml :<c:out value="${Xml }"></c:out> </p>
 
</body>
</html>