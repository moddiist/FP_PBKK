<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
	.error{
	color : red;}
</style>

<spring:url value="/resources/css/login.css" var="mainCss" />
<link href="${mainCss}" rel="stylesheet" />
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<div class="logo"><h1>RBTCAssistant</h1></div>
<div class="besar">
	<div class="badan">
		<div class="form-css">
			<form:form action="prosesLogin" method="POST" modelAttribute="model">
				NRP/NIP : <br /><br />
				<form:input path="id" /><br /> 
				Password : <br /><br />
				<form:password path="password" /> <br /><br />
				Role : <br /><br />
				<form:radiobutton path="role" value="Mahasiswa" />Mahasiswa
				<form:radiobutton path="role" value="Pustakawan" />Pustakawan<br /><br />
				
				<c:if test="${not empty error}">
		            <h4 class="error">${error}</h4>
		        </c:if>
				<input type="submit" value="Submit">
			</form:form>
		</div>
	</div>
</div>
</body>
</html>