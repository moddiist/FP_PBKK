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
<h1>HALO PUSTAKAWAN, ${model.nama}</h1>
<a href="editPtk">Ubah Data</a>
<a href="tambah-ptk">Tambah Pustakawan</a>
<a href="/springmvc-hibernate-maven/buku/tambahBuku">Tambah Buku</a>
<a href="daftarmhs-ptk">Daftar Mahasiswa</a>
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
		    <th><a href="/springmvc-hibernate-maven/buku/deleteBuku?id=${value.isbn }">Hapus</a> <a href="#">Ubah Status</a></th>
	 	 </tr>
	 </c:forEach>
</table>


</body>
</html>