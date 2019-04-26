<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<spring:url value="/resources/css/home.css" var="mainCss" />
<link href="${mainCss}" rel="stylesheet" />
<meta charset="ISO-8859-1">
<title>RBTCAssistant</title>
</head>
<body>
<h1>HALO PUSTAKAWAN, ${model.nama }</h1>
<a href="#">Ubah Data</a>
<a href="#">Tambah Pustakawan</a>
<a href="/RBTCAssistant/">Logout</a><br /><br />

<h1>Daftar Buku</h1>
<table style="width:100%">
	<tr>
		<th>ISBN</th>
	    <th>Judul</th>
	    <th>Pengarang</th> 
	    <th>Tahun Terbit</th>
	    <th>Edisi</th>
	    <th>Status</th>
	    <th>Action</th>
 	 </tr>
 	 <tr>
 	 </tr>
</table>

</body>
</html>