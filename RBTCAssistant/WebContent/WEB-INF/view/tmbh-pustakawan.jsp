<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<spring:url value="/resources/css/form.css" var="mainCss" />
<link href="${mainCss}" rel="stylesheet" />
<meta charset="ISO-8859-1">
<title>RBTCAssistant:Tambah Pustakwan</title>
</head>
<body>
<div class="header">
<h1>Tambah Pustakwan</h1>
</div>
<ul>
<li><a href="/springmvc-hibernate-maven/ptk/home-ptk">Home</a></li>
<li style="float:right"><a class="active" href="/springmvc-hibernate-maven/RBTCAssistant/">Logout</a></li>
</ul>
<div class="besar">
<div class="judul"><h2>RBTCAssistant</h2></div>
	<div class="badan">
		<div class="form-css">
			<form:form action="daftarPustakawan" method="POST" modelAttribute="ptk">
				Nama : <br />
				<form:input path="nama"/> <br /><br />
				NIP : <br />
				<form:input path="nip" /> <br /><br />
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