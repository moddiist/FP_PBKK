<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<spring:url value="/resources/css/signup.css" var="mainCss" />
<link href="${mainCss}" rel="stylesheet" />
<meta charset="ISO-8859-1">
<title>Sign Up</title>
</head>
<body>
<div class="besar">
	<div class="header">
		<div class="logo">RBTCAssistant</div>
	</div>
	<div class="badan">
		<div class="form-css">
			<form:form>
				Nama : <br />
				<input type="text"> <br /><br />
				NRP : <br />
				<input type="text"> <br /><br />
				Password <br />
				<input type="password"> <br /><br />
				Email : <br />
				<input type="text"> <br /><br />
				No. HP : <br />
				<input type="text"> <br /><br />
				<input type="submit" value="Submit">
			</form:form>
		</div>
	</div>
</div>
</body>
</html>