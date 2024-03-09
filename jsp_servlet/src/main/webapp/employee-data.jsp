<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Data</title>
</head>
<body>
<h1> Employee Information</h1>
<p>FirstName :<%=  request.getParameter("firstname")  %></p>
<p>LastName :<%=  request.getParameter("lastname")  %></p>
<p>Email :<%=  request.getParameter("email")  %></p>
<p>Password :
<%=  request.getParameter("password").length() < 8 ? "Password is too short" : "Password is okay" %></p>
<p>Role :<%=  request.getParameter("role")  %></p>
<p>Gender :<%=  request.getParameter("gender")  %></p>
<h3> Hobby List :</h3>
<ol>
<% 

String[ ]hobbies= request.getParameterValues("hobby");
for(final String hobby: hobbies ){
	out.print("<li>"+hobby+"</li>");
}
%>
</ol>
<h3>Addition Information</h3>
<p>Description :<%=  request.getParameter("description")  %></p>


</body>
</html>