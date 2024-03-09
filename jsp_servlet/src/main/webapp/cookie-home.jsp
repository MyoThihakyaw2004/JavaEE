<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Home</title>
</head>
<body>
<%

String favNews="Economics";
Cookie[] cookies=request.getCookies();
if(cookies!=null){
	

 for(final Cookie cookie: cookies){
	 if(cookie.getName().equals("jsp_servelt.favNews")){
		 favNews=cookie.getValue();
		 break;
	 }
 }
}

%>

<h1>Featured News for <%= favNews %> </h1>
<p>Hot news for <b> <%= favNews %> </b> </p>
<p>Hot news for <b> <%= favNews %> </b> </p>
<p>Hot news for <b> <%= favNews %> </b> </p>
<p>Hot news for <b> <%= favNews %> </b> </p>
<p>Hot news for <b> <%= favNews %> </b> </p>
<p>Hot news for <b> <%= favNews %> </b> </p>
<p>Hot news for <b> <%= favNews %> </b> </p>
<p>Hot news for <b> <%= favNews %> </b> </p>
<p>Hot news for <b> <%= favNews %> </b> </p>
<p>Hot news for <b> <%= favNews %> </b> </p>
<a href="cookie-form.jsp">Set Favorite News</a>
</body>
</html>