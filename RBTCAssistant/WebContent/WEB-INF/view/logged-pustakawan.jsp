<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<spring:url value="/resources/css/logged-pustakwan.css" var="mainCss" />
<link href="${mainCss}" rel="stylesheet" />
<title>RBTCAssistant</title>
</head>
<body>
<h1>HALO PUSTAKAWAN, ${model.nama}</h1>
<div ></div>
<a href="editPtk">Ubah Data</a>
<a href="tambah-ptk">Tambah Pustakawan</a>
<a href="/springmvc-hibernate-maven/buku/tambahBuku">Tambah Buku</a>
<a href="daftarmhs-ptk">Daftar Mahasiswa</a>
<a href="lihatpeminjaman">Daftar Peminjaman</a>
<a href="/springmvc-hibernate-maven/RBTCAssistant/logout">Logout</a><br /><br />

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
		    <th><button type="button" class="btn btn-danger" href="/springmvc-hibernate-maven/buku/deleteBuku?id=${value.isbn }">Hapus</button>
		    <button type="button" class="btn btn-info" href="/springmvc-hibernate-maven/buku/editStatus?id=${value.isbn}">Ubah</button></th>
	 	 </tr>
	 </c:forEach>
</table>
</div>

</body>
</html>