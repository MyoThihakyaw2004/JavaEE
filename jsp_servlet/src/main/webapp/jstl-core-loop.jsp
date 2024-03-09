<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL  Core Loop Tags</title>
</head>
<body>
<% 
List<String> fruitList=Arrays.asList(
		"Mango","Banana","Papaya","Kiwi","Apple"
		);
pageContext.setAttribute("FRUIT_LIST", fruitList);

%>
<ul>
<c:forTokens var="country" items="Myanmar,Japan,Korea,Thailand,US" delims=",">
<li>${country }</li>
</c:forTokens>
</ul>



<ol>
<c:forEach var="fruit" items="${ FRUIT_LIST }" begin="1" end="3" >

<li>${fruit }</li>
</c:forEach>
</ol>
</body>
</html>