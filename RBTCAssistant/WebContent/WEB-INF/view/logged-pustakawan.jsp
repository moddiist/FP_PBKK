<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<title>RBTCAssistant:Welcome</title>
</head>
<body>
<div class="header">
<h1>RBTCAssistant</h1>
<h3>HALO PUSTAKAWAN, ${model.nama }</h3>
</div>

<ul>
<li><a href="editPtk">Ubah Data</a></li>
<li><a href="tambah-ptk">Tambah Pustakawan</a></li>
<li><a href="/springmvc-hibernate-maven/buku/tambahBuku">Tambah Buku</a></li>
<li><a href="daftarmhs-ptk">Daftar Mahasiswa</a></li>
<li><a href="lihatpeminjaman">Daftar Peminjaman</a></li>
<li style="float:right"><a class="active" href="/springmvc-hibernate-maven/RBTCAssistant/logout">Logout</a></li>
</ul>

<div class="judul"><h1>Daftar Buku</h1></div>
<div class="pencarian">
	<form:form action="searchBuku" method="POST" modelAttribute="status">
		<label>Pencarian</label>
		<form:input path="message" />
		<input type="submit" value="Cari">
	</form:form>
</div>

<table id="isi">
<thead>
	<tr>
	    <th>Judul</th>
	    <th>Pengarang</th> 
	    <th>Tahun Terbit</th>
	    <th>Edisi</th>
	    <th>Status</th>
	    <th colspan="2">Action</th>
 	 </tr>
</thead>
 	 <c:forEach var="value" items="${buku }"> 
	 	 <tr>
	 	 	<th>${value.judul }</th>
		    <th>${value.pengarang }</th>
		    <th>${value.tahun_terbit }</th> 
		    <th>${value.edisi }</th>
		    <th>${value.status }</th>
		    <th><a class="hapus" href="/springmvc-hibernate-maven/buku/deleteBuku?id=${value.isbn }">Hapus</a></th>
		    <th><a class="edit" href="/springmvc-hibernate-maven/buku/editStatus?id=${value.isbn}">Ubah</a></th>
	 	 </tr>
	 </c:forEach>
</table>
</body>
</html>