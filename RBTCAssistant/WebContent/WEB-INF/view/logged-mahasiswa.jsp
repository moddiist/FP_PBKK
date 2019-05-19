<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<spring:url value="/resources/css/tabel.css" var="mainCss" />
<link href="${mainCss}" rel="stylesheet" />
<meta charset="ISO-8859-1">
<title>RBTCAssistant:Welcome</title>
</head>
<body>
<div class="header">
<h1>RBTCAssistant</h1>
<h3>HALO MAHASISWA, ${model.nama }</h3>
</div>
<ul>
	<li><a href="editMhs">Ubah Data</a></li>
	<li><a href="peminjaman-mhs?id=${model.nrp }">Peminjaman</a></li>
	<li style="float:right"><a class="active" href="/springmvc-hibernate-maven/RBTCAssistant/logout">Logout</a></li>
</ul>

<div class="judul"><h2>Daftar Buku</h2></div>

<table id="isi">
<thead>
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
	 	 	<td>${value.judul }</td>
		    <td>${value.pengarang }</td>
		    <td>${value.tahun_terbit }</td> 
		    <td>${value.edisi }</td>
		    <td>${value.status }</td>
		    <td>
		    <c:if test = "${value.status == 'Tersedia' }">
		    	<a class="edit" href="/springmvc-hibernate-maven/pinjam/prosesPinjam?id=${value.isbn }&nrp=${model.nrp}">Pinjam</a>
		    </c:if>
		    <c:if test = "${value.status == 'Dipinjam' }">
		    	<p>Tidak bisa dipinjam</p>
		    </c:if>
		    </td>
	 	 </tr>
	 </c:forEach>
</table>
</body>
</html>