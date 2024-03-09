<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Data</title>
</head>
<body>
<%

String favNews=request.getParameter("favNews");

Cookie cookie=new Cookie("jsp_servelt.favNews",favNews);
cookie.setMaxAge(3600*14*365);

response.addCookie(cookie);
%>
<a href="cookie-home.jsp">Set Favorite News</a>
</body>
</html>