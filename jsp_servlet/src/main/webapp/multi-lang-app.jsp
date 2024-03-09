<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib uri="jakarta.tags.core" prefix="c" %>
    <%@taglib uri="jakarta.tags.fmt" prefix="fmt"%>

<c:set var="localeParam" value="${not empty param.locale? param.locale :pageContext.request.locale }"/>
<fmt:setLocale value="${localeParam }"/>
<fmt:setBundle basename="i18n_resourse.language"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Multi-Languages App</title>
</head>
<body>

<header>

<nav>

<ul>

<li><fmt:message key="home"/> </li>
<li><fmt:message key="services"/></li>
<li><fmt:message key="aboutus"/></li>
<li><fmt:message key="contactus"/></li>
<li><fmt:message key="register"/></li>

</ul>

</nav>

</header>
<main>
<p style="color: gray;"><fmt:message key="content"/></p>
<a href="multi-lang-app.jsp?locale=en_US">US</a>-
<a href="multi-lang-app.jsp?locale=fr_FR">French</a>
<a href="multi-lang-app.jsp?locale=de_DE">German</a>
<a href="multi-lang-app.jsp?locale=es_ES">Spanish</a>
</main>
</body>
</html>