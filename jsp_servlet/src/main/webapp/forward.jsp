<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forward</title>
</head>
<body>
<jsp:forward page="session-data.jsp">
<jsp:param value="Hein Thu" name="username"/>
<jsp:param value="GreenApple" name="password"/>
</jsp:forward>
</body>
</html>