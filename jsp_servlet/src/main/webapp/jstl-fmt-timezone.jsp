<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="jakarta.tags.core"  prefix="c"%>
    <%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Time Zone</title>
</head>
<body>
<fmt:setTimeZone   value="Asia/Singapore"/>
<c:set var="todayDate" value="<%= new Date() %>"></c:set>
<p> date 1 :<fmt:formatDate value="${todayDate }" dateStyle="short" type="both" timeStyle="long"/></p>

<h3>UK Country Time Zone :</h3>
 <fmt:timeZone value="Europe/London">
 <p> date 2:<fmt:formatDate value="${todayDate }" dateStyle="short" type="both" timeStyle="long"/></p>
 
 <p> date 3: <fmt:formatDate value="${todayDate }" dateStyle="short" type="both" timeStyle="long"/></p>
 
 <p> date 4: <fmt:formatDate value="${todayDate }" dateStyle="short" type="both" timeStyle="long"/></p>
 </fmt:timeZone>
 <h3>America/New_York Country Time Zone :</h3>
 <fmt:timeZone value="America/New_York">
 <p> date 2:<fmt:formatDate value="${todayDate }" dateStyle="short" type="both" timeStyle="long"/></p>
 
 <p> date 3: <fmt:formatDate value="${todayDate }" dateStyle="short" type="both" timeStyle="long"/></p>
 
 <p> date 4: <fmt:formatDate value="${todayDate }" dateStyle="short" type="both" timeStyle="long"/></p>
 </fmt:timeZone>
</body>
</html>