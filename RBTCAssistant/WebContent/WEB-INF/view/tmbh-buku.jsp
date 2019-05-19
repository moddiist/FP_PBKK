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
<title>RBTCAssistant:Tambah Buku</title>
</head>
<body>
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
<div class="judul"><h2>Tambah Buku</h2></div>
	<div class="badan">
		<div class="form-css">
			<form:form action="insertDb" method="POST" modelAttribute="buku">
				ISBN : <br />
				<form:input path="isbn"/> <br /><br />
				Judul : <br />
				<form:input path="judul" /> <br /><br />
				Tahun Terbit : <br />
				<form:input path="tahun_terbit" /> <br /><br />
				Pengarang : <br />
				<form:input path="pengarang" /> <br /><br />
				Edisi : <br />
				<form:input path="edisi" /> <br /><br />
				Status : <br />
				<form:select path="status">
					<form:option value="Tersedia"></form:option>
					<form:option value="Dipinjam"></form:option>
				</form:select><br /><br />
				<input type="submit" value="Submit">
			</form:form>
		</div>
	</div>
</div>
</body>
</html>