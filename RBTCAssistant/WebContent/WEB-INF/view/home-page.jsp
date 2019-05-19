<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<spring:url value="/resources/css/home.css" var="mainCss" />
<link href="${mainCss}" rel="stylesheet" />
<meta charset="ISO-8859-1">
<title>RBTCAssistant</title>
</head>
<body>
<div class="logo"><h1>RBTCAssistant</h1></div>
	<div class="besar">
		<div class="header">
			<img src="http://rbtc.if.its.ac.id/v8/template/default/img/logo.png">
		</div>
		<div class="badan">
			<a href="login">Login</a>
			<a href="signup">Sign Up</a>
		</div>
	</div>
</body>
</html>