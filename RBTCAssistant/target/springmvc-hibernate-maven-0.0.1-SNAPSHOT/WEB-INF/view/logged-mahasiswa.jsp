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
<a href="editMhs">Ubah Data</a>
<a href="peminjaman-mhs?id=${model.nrp }">Peminjaman</a>
<a href="/springmvc-hibernate-maven/RBTCAssistant/logout">Logout</a><br /><br />

<h1>Daftar Buku</h1>
<table style="width:100%">
	<tr>
	    <th>Judul</th>
	    <th>Pengarang</th> 
	    <th>Tahun Terbit</th>
	    <th>Edisi</th>
	    <th>Status</th>
	    <th>Action</th>
 	 </tr>
 	 <c:forEach var="value" items="${buku }"> 
	 	 <tr>
	 	 	<th>${value.judul }</th>
		    <th>${value.pengarang }</th>
		    <th>${value.tahun_terbit }</th> 
		    <th>${value.edisi }</th>
		    <th>${value.status }</th>
		    <th>
		    <c:if test = "${value.status == 'Tersedia' }">
		    	<a href="/springmvc-hibernate-maven/pinjam/prosesPinjam?id=${value.isbn }&nrp=${model.nrp}">Pinjam</a>
		    </c:if>
		    <c:if test = "${value.status == 'Dipinjam' }">
		    	<p>Tidak bisa dipinjam</p>
		    </c:if>
		    </th>
	 	 </tr>
	 </c:forEach>
</table>
</body>
</html>