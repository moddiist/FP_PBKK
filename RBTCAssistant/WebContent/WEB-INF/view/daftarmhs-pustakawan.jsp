<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RBTCAssistant</title>
</head>
<body>
<h1>HALO PUSTAKAWAN, ${model.nama }</h1>
<a href="home-ptk">Home</a>
<a href="/springmvc-hibernate-maven/RBTCAssistant/logout">Logout</a><br /><br />

<h1>Daftar Mahasiswa</h1>
<table style="width:100%">
	<tr>
	    <th>NRP</th>
	    <th>Nama</th> 
	    <th>Email</th>
	    <th>No. HP</th>
	    <th>Action</th>
 	 </tr>
 	 <c:forEach var="value" items="${mahasiswa }"> 
	 	 <tr>
	 	 	<th>${value.nrp }</th>
		    <th>${value.nama }</th>
		    <th>${value.email }</th> 
		    <th>${value.nohp }</th>
		    <th><a href="/springmvc-hibernate-maven/mhs/deleteMhs?id=${value.nrp }">Hapus</a></th>
	 	 </tr>
	 </c:forEach>
</table>


</body>
</html>