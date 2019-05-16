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
<h1>HALO MAHASISWA, ${model.nama }</h1>
<a href="home-mhs">Home</a>
<a href="histori-mhs?id=${model.nrp }">Histori Peminjaman</a>
<a href="/springmvc-hibernate-maven/RBTCAssistant/logout">Logout</a><br /><br />

<h2>Daftar Peminjaman</h2>
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
		    <th><c:if test = "${value.denda == 0 }">
		    	<p>${value.denda }</p>
		    </c:if>
		    <c:if test = "${value.denda != 0 }">
		    	<p style="color : red;">${value.denda }</p>
		    </c:if></th>
		    <th><c:if test = "${value.status_peminjaman == 'Terlambat' }">
		    	<p style="color: red;">${value.status_peminjaman }</p>
		    </c:if>
		    <c:if test = "${value.status_peminjaman != 'Terlambat' }">
		    	<p>${value.status_peminjaman }</p>
		    </c:if>
		    </th>
	 	 </tr>
	 </c:forEach>
</table>
</body>
</html>