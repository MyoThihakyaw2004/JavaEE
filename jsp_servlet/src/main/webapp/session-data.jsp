<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Data</title>
</head>
<body>
<%

String username=request.getParameter("username");
String password=request.getParameter("password");

session.setAttribute("user", username +":"+password);
session.setMaxInactiveInterval(60);

out.print("<h1>Your credentials are stored in the  session</h1>");


%>
<a href="session-home.jsp">Go To Home page</a>
</body>
</html>