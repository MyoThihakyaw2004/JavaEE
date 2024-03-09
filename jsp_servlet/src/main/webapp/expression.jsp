<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expression</title>
</head>
<body>

<h1>Expression Test</h1>
<p>30+40= <%= 30+40 %></p>
<p>20<15? || 15>20 ? <%= 20<15 || 15>20  %></p>
<p>LowerCase :<%= new String("I'm Converted to Lower Case").toLowerCase() %></p>
<p>sqrt of 625 :<%= Math.sqrt(625.0) %></p>
<p>(200*(30+500)/(20*30)%30): <%= (200*(30+500)/(20*30)%30) %></p>
<p> Upper Case :<%= new String("i'm a beginner  java developer and i'm tryin as much as i can" ).toUpperCase()%></p>
</body>
</html>