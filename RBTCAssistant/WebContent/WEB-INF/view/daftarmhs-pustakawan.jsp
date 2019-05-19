<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<spring:url value="/resources/css/tabel.css" var="mainCss" />
<spring:url value="/resources/lib/bootstrap/css/bootstrap.min.css" var="bootstrapmin" />
<spring:url value="/resources/css1/style.css" var="css" />
<link href="${mainCss}" rel="stylesheet" />
<link href="${bootstrapmin}" rel="stylesheet">
<link href="${css}" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>RBTCAssistant:Daftar Mahasiswa</title>
</head>
<body>
<body>
<div class="header">
<h1>RBTCAssistant</h1>
<h3>HALO PUSTAKAWAN, ${model.nama }</h3>
</div>
<ul>
<li><a href="home-ptk">Home</a></li>
<li style="float:right"><a class="active" href="/springmvc-hibernate-maven/RBTCAssistant/logout">Logout</a></li>
</ul>
<div class="judul"><h2>Daftar Mahasiswa</h2></div>
<div class="pencarian">
	<form:form action="searchMhs" method="POST" modelAttribute="status">
		<label>Pencarian</label>
		<form:input path="message" />
		<input type="submit" value="Cari">
	</form:form>
</div>
<table id="isi">
<thead>
	<tr>
	    <th>NRP</th>
	    <th>Nama</th> 
	    <th>Email</th>
	    <th>No. HP</th>
	    <th>Action</th>
 	 </tr>
</thead>
 	 <c:forEach var="value" items="${mahasiswa }"> 
	 	 <tr>
	 	 	<th>${value.nrp }</th>
		    <th>${value.nama }</th>
		    <th>${value.email }</th> 
		    <th>${value.nohp }</th>
		    <th><a class="hapus" href="/springmvc-hibernate-maven/mhs/deleteMhs?id=${value.nrp }">Hapus</a></th>
	 	 </tr>
	 </c:forEach>
</table>

</body>
</html>