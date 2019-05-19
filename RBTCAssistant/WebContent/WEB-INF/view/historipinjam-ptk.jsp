<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<spring:url value="/resources/css/tabel.css" var="mainCss" />
<link href="${mainCss}" rel="stylesheet" />
<meta charset="ISO-8859-1">
<title>RBTCAssistant:Histori Peminjaman</title>
</head>
<body>
<div class="header">
<h1>RBTCAssistant</h1>
<h3>HALO PUSTAKAWAN, ${model.nama }</h3>
</div>
<ul>
<li><a href="home-ptk">Home</a></li>
<li><a href="lihatpeminjaman">Daftar Peminjaman</a></li>
<li style="float:right"><a class="active" href="/springmvc-hibernate-maven/RBTCAssistant/logout">Logout</a></li>
</ul>
<div class="judul">
<h2>Histori Peminjaman</h2>
</div>
<table id="isi">
<thead>
	<tr>
	    <th>Buku</th>
	    <th>Nama</th>
	    <th>NRP</th>
	    <th>Tanggal Peminjaman</th> 
	    <th>Tanggal Pengembalian</th>
	    <th>Denda</th>
	    <th>Status Peminjaman</th> 
 	 </tr>
</thead> 	 
 	 <c:forEach var="value" items="${pinjam }"> 
	 	 <tr>
	 	 	<th>${value.judulbuku }</th>
	 	 	<th>${value.namaMhs }</th>
	 	 	<th>${value.nrp }</th>
		    <th>${value.tgl_pinjam }</th>
		    <th>${value.tgl_kembali }</th> 
		    <th>${value.denda }</th>
		    <th>${value.status_peminjaman }</th>
	 	 </tr>
	 </c:forEach>
</table>
</body>
</html>