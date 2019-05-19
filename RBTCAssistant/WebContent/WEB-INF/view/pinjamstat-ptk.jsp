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
<title>RBTCAssistant:Ubah Status</title>
</head>
<body>
<div class="header">
<h1>RBTCAssistant</h1>
<h3>HALO PUSTAKAWAN, ${model.nama }</h3>
</div>
<ul>
<li><a href="/springmvc-hibernate-maven/ptk/home-ptk">Home</a></li>
<li style="float:right"><a class="active" href="/springmvc-hibernate-maven/RBTCAssistant/">Logout</a></li>
</ul>
<div class="besar">
	<form:form action="prosesPinjam?id=${id }" method="POST" modelAttribute="status">
		<div class="judul"><h2>Ubah Status</h2></div>
				<div class="badan">
				Status : <br />
				<form:select path="message">
					<form:option value="OK"></form:option>
					<form:option value="Ditolak"></form:option>
					<form:option value="Selesai"></form:option>
				</form:select><br /><br />
				<input type="submit" value="Ubah" />
				</div>
	</form:form>
</div>
</body>
</html>