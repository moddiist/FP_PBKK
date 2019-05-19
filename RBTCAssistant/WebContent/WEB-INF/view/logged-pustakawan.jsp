<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<spring:url value="/resources/css/logged-pustakawan.css" var="mainCss" />
<link href="${mainCss}" rel="stylesheet" />
<meta charset="ISO-8859-1">
<title>RBTCAssistant</title>
</head>
<body>
<h1>HALO PUSTAKAWAN, ${model.nama}</h1>
<ul>
<li><a href="editPtk">Ubah Data</a></li>
<li><a href="tambah-ptk">Tambah Pustakawan</a></li>
<li><a href="/springmvc-hibernate-maven/buku/tambahBuku">Tambah Buku</a></li>
<li><a href="daftarmhs-ptk">Daftar Mahasiswa</a></li>
<li><a href="lihatpeminjaman">Daftar Peminjaman</a></li>
<li style="float:right"><a class="aclive" href="/springmvc-hibernate-maven/RBTCAssistant/logout">Logout</a></li>
</ul>
<h1>Daftar Buku</h1>
<div class="table-responsive-md">
<table class="table table-striped table-bordered" style="width:100%">
<thead class="thead-dark">
	<tr>
	    <th>Judul</th>
	    <th>Pengarang</th> 
	    <th>Tahun Terbit</th>
	    <th>Edisi</th>
	    <th>Status</th>
	    <th>Action</th>
 	 </tr>
 </thead>
 	 <c:forEach var="value" items="${buku }"> 
	 	 <tr>
	 	 	<th>${value.judul }</th>
		    <th>${value.pengarang }</th>
		    <th>${value.tahun_terbit }</th> 
		    <th>${value.edisi }</th>
		    <th>${value.status }</th>
		    <th><a href="/springmvc-hibernate-maven/buku/deleteBuku?id=${value.isbn }">Hapus</a>
		    <a href="/springmvc-hibernate-maven/buku/editStatus?id=${value.isbn}">Ubah</a></th>
	 	 </tr>
	 </c:forEach>
</table>
</div>

</body>
</html>