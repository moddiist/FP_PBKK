<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RBTCAssistant</title>
</head>
<body>
<h1>EDIT DATA</h1>
<a href="/springmvc-hibernate-maven/mhs/home-mhs">Home</a>
<a href="/springmvc-hibernate-maven/RBTCAssistant/">Logout</a><br /><br />
<div class="besar">
	<div class="header">
		<div class="logo">RBTCAssistant</div>
	</div>
	<div class="badan">
		<div class="form-css">
			<form:form action="editDb" method="POST" modelAttribute="model">
				Nama : <br />
				<form:input path="nama"/> <br /><br />
				NRP : <br />
				<form:input disabled="true" path="nrp" /> <br /><br />
				Password <br />
				<form:password path="password" /> <br /><br />
				Email : <br />
				<form:input path="email" /> <br /><br />
				No. HP : <br />
				<form:input path="nohp" /> <br /><br />
				<input type="submit" value="Submit">
			</form:form>
		</div>
	</div>
</div>
</body>
</html>