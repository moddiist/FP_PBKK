<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RBTCAssistant</title>
</head>
<body>
<a href="/springmvc-hibernate-maven/ptk/home-ptk">Home</a>
<a href="/springmvc-hibernate-maven/RBTCAssistant/">Logout</a><br /><br />
<h1>UBAH STATUS BUKU</h1>
	<form:form action="ubahStat" method="POST" modelAttribute="statusnya">
	<h4>Data Buku</h4>
				ISBN : <br />
				<form:input path="isbn" /> <br /><br />
				Judul : <br />
				<form:input path="judul" /> <br /><br />
				Tahun Terbit : <br />
				<form:input path="tahun_terbit" /> <br /><br />
				Pengarang : <br />
				<form:input path="pengarang" /> <br /><br />
				Edisi : <br />
				<form:input path="edisi" /> <br /><br />
	<h4>Ubah Status</h4>
				Status : <br />
				<form:select path="status">
					<form:option value="Tersedia"></form:option>
					<form:option value="Dipinjam"></form:option>
				</form:select><br />
			
			<input type="submit" value="Ubah" />
	</form:form>
</body>
</html>