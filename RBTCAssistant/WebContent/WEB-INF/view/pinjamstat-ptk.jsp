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
<h1>HALO PUSTAKAWAN, ${model.nama}</h1>
<a href="/springmvc-hibernate-maven/ptk/home-ptk">Home</a>
<a href="/springmvc-hibernate-maven/RBTCAssistant/">Logout</a><br /><br />

	<form:form action="prosesPinjam?id=${id }" method="POST" modelAttribute="status">
		<h4>Ubah Status</h4>
				Status : <br />
				<form:select path="message">
					<form:option value="OK"></form:option>
					<form:option value="Ditolak"></form:option>
					<form:option value="Selesai"></form:option>
				</form:select><br />
			
			<input type="submit" value="Ubah" />
	</form:form>
</body>
</html>