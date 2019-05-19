<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
<title>RBTCAssistant:Peminjaman</title>
</head>

<body>
<div class="header">
<h1>RBTCAssistant</h1>
<h3>HALO MAHASISWA, ${model.nama }</h3>
</div>
<ul>
	<li><a href="home-mhs">Home</a></li>
	<li><a href="histori-mhs?id=${model.nrp }">Histori Peminjaman</a></li>
	<li style="float:right"><a class="active" href="/springmvc-hibernate-maven/RBTCAssistant/logout">Logout</a></li>

</ul>

<div class="judul">
	<h2>Daftar Peminjaman</h2>
</div>
<table id="isi">
<thead>
	<tr>
	    <th>Buku</th>
	    <th>Tanggal Peminjaman</th> 
	    <th>Tanggal Pengembalian</th>
	    <th>Denda</th>
	    <th>Status Peminjaman</th>
 	 </tr>
 </thead>
 	 <c:forEach var="value" items="${pinjam }"> 
	 	 <tr>
	 	 	<td>${value.judulbuku }</td>
		    <td>${value.tgl_pinjam }</td>
		    <td>${value.tgl_kembali }</td> 
		    <td><c:if test = "${value.denda == 0 }">
		    	<p>${value.denda }</p>
		    </c:if>
		    <c:if test = "${value.denda != 0 }">
		    	<p style="color : red;">${value.denda }</p>
		    </c:if></td>
		    <td><c:if test = "${value.status_peminjaman == 'Terlambat' }">
		    	<p style="color: red;">${value.status_peminjaman }</p>
		    </c:if>
		    <c:if test = "${value.status_peminjaman != 'Terlambat' }">
		    	<p>${value.status_peminjaman }</p>
		    </c:if>
		    </td>
	 	 </tr>
	 </c:forEach>
</table>
</body>
</html>