	<%@page import="java.time.DayOfWeek"%>
	<%@page import="java.time.LocalDateTime"%>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>Scriplet</title>
	</head>
	<body>
	<%
	
	LocalDateTime dateTime=LocalDateTime.now();
	DayOfWeek day=dateTime.getDayOfWeek();
	
	String message="";
	switch(day){
	case MONDAY:
		message="Hello, Happy Monday";
		break;
	case TUESDAY:
		message="Hello, Happy Tuesday";
		break;
	case WEDNESDAY:
		message="Hello, Happy Wednesday";
		break;
	case THURSDAY:
		message="Hello, Happy Thursday";
		break;
		
	case  FRIDAY:
		message="Hello, Happy Friday";
		break;
	case SATURDAY:
		message="Hello, Happy Saturday";
		break;
		
	case SUNDAY:
		message="Hello, Happy SUNDAY";
		break;
		default :
			message="Date can;t decide at this time";
		
	}
	out.print("<h1>"+message+"</h1>");
	int hour= dateTime.getHour();
	String message2="";
	if(hour>= 21){
		message2="Good Night";
	}else if(hour>=16){
		message2="Good Evening";
	}
	else if(hour>=12){
		message2="Good Afternoon";
	}
	else{
		message2="Good morning";
	}
	out.print("<h1>"+message2+"</h1>");
	%>
	</body>
	</html>