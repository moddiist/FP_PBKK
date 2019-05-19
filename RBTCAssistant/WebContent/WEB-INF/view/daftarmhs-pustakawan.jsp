<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<spring:url value="/resources/css/tabel.css" var="mainCss" />
<link href="${mainCss}" rel="stylesheet" />
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