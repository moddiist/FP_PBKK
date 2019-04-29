<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Tambah Buku</h1>
<a href="#">Ubah Data</a>
<a href="/RBTCAssistant/tambah-ptk">Tambah Pustakawan</a>
<a href="#">Tambah Buku</a>
<a href="/RBTCAssistant/daftarmhs-ptk">Daftar Mahasiswa</a>
<a href="/RBTCAssistant/">Logout</a><br /><br />
<div class="besar">
	<div class="header">
		<div class="logo">RBTCAssistant</div>
	</div>
	<div class="badan">
		<div class="form-css">
			<form:form action="daftarBuku" method="POST" modelAttribute="model">
				ISBN : <br />
				<form:input path="isbn"/> <br /><br />
				Judul : <br />
				<form:input path="judul" /> <br /><br />
				Tahun Terbit : <br />
				<form:password path="tahun_terbit" /> <br /><br />
				Pengarang : <br />
				<form:input path="pengarang" /> <br /><br />
				Edisi : <br />
				<form:input path="edisi" /> <br /><br />
				Status : <br />
				<form:input path="status" /> <br /><br />
				<input type="submit" value="Submit">
			</form:form>
		</div>
	</div>
</div>
</body>
</html>