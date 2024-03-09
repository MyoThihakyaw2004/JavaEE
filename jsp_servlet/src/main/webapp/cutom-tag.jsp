<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/WEB-INF/custom-tag.tld"  prefix="custom"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Custom Tag</title>
</head>
<body>
<h1><custom:print>This is content 1</custom:print></h1>
<h1><custom:print>This is content 2</custom:print></h1>
<h1><custom:print>This is content 3</custom:print></h1>
<h1><custom:print>This is content 4</custom:print></h1>
<h1><custom:print>This is content 5</custom:print></h1>
<h1><custom:print>This is content 6</custom:print></h1>
<h1><custom:print>This is content 7</custom:print></h1>
<h1><custom:print>This is content 8</custom:print></h1>
<h1>Today : <custom:datetime  type="datetime"/> </h1>
<h1>Today's Date Time: <custom:datetime type="date" /> </h1>
<h1>Today's  Time: <custom:datetime type="time"/> </h1>
<h1>Today's Date Time: <custom:datetime type="datetime"/> </h1>
<h1> Invalid: <custom:datetime type="mgmg" /> </h1>
<h1> Invalid: <custom:datetime type="mgmg" /> </h1>
<h1>Blank: <custom:datetime type="" /> </h1>
</body>
</html>