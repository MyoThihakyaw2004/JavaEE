<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Declaration</title>
</head>
<body>
<h1>Circle Area, Volume</h1>

<%!
 double pi=3.142;

double area(double r){
	return pi*Math.pow(r, 2);
}
double volume(double r){
	return 4/3*pi*Math.pow(r, 3);
}


%>
<p>Used Pi Value=<%=pi %></p>

<%
double area=area(5.0);
out.print("<p> area= "+area+"</p>");


double volume=volume(5.0);
out.print("<p> volume= "+volume+"</p>");

%>
</body>
</html>