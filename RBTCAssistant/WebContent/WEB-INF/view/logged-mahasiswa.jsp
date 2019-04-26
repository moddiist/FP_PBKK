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
<a href="#">Ubah Data</a>
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

		<ul>
			<c:forEach var="listValue" items="${book}">
				<li>${listValue}</li>
			</c:forEach>
		</ul>

</body>
</html>