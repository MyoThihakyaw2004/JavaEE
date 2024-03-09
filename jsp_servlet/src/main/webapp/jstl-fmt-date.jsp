<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
    <%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<fmt:parseDate var="datetime" value="2024-01-12 14:22:16 " pattern="yyyy-MM-dd HH:mm:ss"></fmt:parseDate>
<c:set var="today" value="<%=new Date()%>"></c:set>
<fmt:timeZone value="today"/>

<p>Parsed Date :${datetime}</p>
<p>Date:<fmt:formatDate value="${ datetime }" type="date" /></p>
<p> Time: <fmt:formatDate value="${ datetime }" type="time"/></p>
<p>Both:  <fmt:formatDate value="${ datetime }" type="both" /></p>

<p>Date:<fmt:formatDate value="${ datetime }" type="date" dateStyle="long"  timeStyle="long"/></p>
<p> Time: <fmt:formatDate value="${ datetime }" type="time"  dateStyle="medium" timeStyle="medium" /></p>
<p>Both:  <fmt:formatDate value="${ datetime }" type="both" dateStyle="short"  timeStyle="short"/></p>

<p>Default TimeZone :  <fmt:formatDate value="${ today }" type="both" dateStyle="short" timeStyle="long" /> </p>
<p>Japan TimeZone :  <fmt:formatDate value="${ today }" type="both" dateStyle="short" timeStyle="long" timeZone="Asia/Tokyo" /> </p>
</body>

</html>