<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<spring:url value="/resources/css/table-mhs.css" var="mainCss" />
<link href="${mainCss}" rel="stylesheet" />
<meta charset="ISO-8859-1">
<title>RBTCAssistant</title>
<style>
body {
  background-color: white;
  margin-bottom: 20px;
}

.header {
  background: linear-gradient(to bottom right, #17EAD9, #6078ea);
  padding: 20px;
  text-align: center;
}

.content h2 {
  text-align: center;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #04275e;
}



#tabel {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 85%;
  margin-left: auto;
  margin-right: auto;
}

#tabel td, #tabel th {
  border: 1px solid #ddd;
  padding: 8px;
}

#tabel tr:nth-child(even){background-color: #f2f2f2;}

#tabel tr:hover {background-color: #ddd;}

#tabel th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #0280c9;
  color: white;
}

#tabel a:link, a:visited {
  background-color: #6078ea;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

#tabel a:hover, a:active {
  background-color: #4a65e8;
}
</style>
</head>
<body>
<div class=header>
	<h1>HALO MAHASISWA, ${model.nama }</h1>
</div>

<ul>
	<li><a href="editMhs">Ubah Data</a></li>
	<li><a href="peminjaman-mhs?id=${model.nrp }">Peminjaman</a></li>
	<li><a href="/springmvc-hibernate-maven/RBTCAssistant/logout">Logout</a></li>
</ul>

<div class=content>
<h2>Daftar Buku</h2>

<table id = "tabel">
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
	 	 	<td>${value.judul }</td>
		    <td>${value.pengarang }</td>
		    <td>${value.tahun_terbit }</td> 
		    <td>${value.edisi }</td>
		    <td>${value.status }</td>
		    <td>
		    <c:if test = "${value.status == 'Tersedia' }">
		    	<a href="/springmvc-hibernate-maven/pinjam/prosesPinjam?id=${value.isbn }&nrp=${model.nrp}">Pinjam</a>
		    </c:if>
		    <c:if test = "${value.status == 'Dipinjam' }">
		    	<p>Tidak bisa dipinjam</p>
		    </c:if>
		    </td>
	 	 </tr>
	 </c:forEach>
</table>
</div>

</body>
</html>