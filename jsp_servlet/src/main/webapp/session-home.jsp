<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Information</title>
</head>
<body>
<%

String user=(String)session.getAttribute("user");
if(user!=null){
	out.print("<h1>You already Login</h1>");
	out.print("<p>credentials :"+user+"</p>");
	
	out.print("<p>JSESSION_ID :"+session.getId()+"</p>");
	out.print("<p>CreateTime of Session :"+new Date(session.getCreationTime())+"</p>");
	out.print("<p>ExpireTime :"+session.getMaxInactiveInterval()+"</p>");
}
else{
	out.print("<h1>Your credentials are not found in the session </h1>");
	out.print("<p>Please Login again</p>");
	out.print("<a href='session-login.jsp'>Login Here</a>");
}
%>
</body>
</html>