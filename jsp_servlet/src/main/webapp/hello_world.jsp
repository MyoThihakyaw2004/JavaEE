<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello World</title>
</head>
<body>
<h1>Current Date & Time</h1>
<p> <%= LocalDateTime.now() %> </p>
<h2> Current Date</h2>
<p><%= LocalDate.now() %></p>

</body>
</html>