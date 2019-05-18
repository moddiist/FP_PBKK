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
<h1>Tambah Buku</h1>
<a href="/springmvc-hibernate-maven/ptk/home-ptk">Home</a>
<a href="/springmvc-hibernate-maven/RBTCAssistant/">Logout</a><br /><br />
<div class="besar">
	<div class="header">
		<div class="logo">RBTCAssistant</div>
	</div>
	<div class="badan">
		<div class="form-css">
			<form:form action="insertDb" method="POST" modelAttribute="buku">
				ISBN : <br />
				<form:input path="isbn"/> <br /><br />
				Judul : <br />
				<form:input path="judul" /> <br /><br />
				Tahun Terbit : <br />
				<form:input path="tahun_terbit" /> <br /><br />
				Pengarang : <br />
				<form:input path="pengarang" /> <br /><br />
				Edisi : <br />
				<form:input path="edisi" /> <br /><br />
				Status : <br />
				<form:select path="status">
					<form:option value="Tersedia"></form:option>
					<form:option value="Dipinjam"></form:option>
				</form:select><br />
				<input type="submit" value="Submit">
			</form:form>
		</div>
	</div>
</div>
</body>
</html>