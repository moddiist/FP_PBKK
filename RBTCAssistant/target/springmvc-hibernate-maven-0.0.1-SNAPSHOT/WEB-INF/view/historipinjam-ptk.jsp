<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RBTCAssistant</title>
</head>
<body>
<h1>HALO PUSTAKAWAN, ${model.nama }</h1>
<a href="home-ptk">Home</a>
<a href="lihatpeminjaman">Daftar Peminjaman</a>
<a href="/springmvc-hibernate-maven/RBTCAssistant/logout">Logout</a><br /><br />

<h2>Histori Peminjaman</h2>
<table style="width:100%">
	<tr>
	    <th>Buku</th>
	    <th>Tanggal Peminjaman</th> 
	    <th>Tanggal Pengembalian</th>
	    <th>Denda</th>
	    <th>Status Peminjaman</th>
	    
 	 </tr>
 	 <c:forEach var="value" items="${pinjam }"> 
	 	 <tr>
	 	 	<th>${value.judulbuku }</th>
		    <th>${value.tgl_pinjam }</th>
		    <th>${value.tgl_kembali }</th> 
		    <th>${value.denda }</th>
		    <th>${value.status_peminjaman }</th>
	 	 </tr>
	 </c:forEach>
</table>
</body>
</html>