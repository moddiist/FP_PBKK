<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RBTCAssistant</title>
<style>
body {
  background-color: white;
  margin-bottom: 20px;
}

.top .header {
  background: linear-gradient(to bottom right, #17EAD9, #6078ea);
  padding: 20px;
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

.besar{
	width : 450px;
	height : 500px;
	margin : auto;
	background-color : #52b4f2;
	border-radius : 10px;
	box-shadow: 10px 10px 5px #065499;
	align-content: center;
}

.logo{
	font-family : tw cen mt;
	text-align : center;
	font-size : 20px;
	color: #063684;
	text-shadow: 10px 10px 5px #065499;
	padding-top: 8px;
}

form:password{
	background-color: black;
}

.badan{
	font-family : tw cen mt;
	font-size : 16px;
	margin-top : 20px;
	margin-bottom:100px;
	padding-top : 20px;
	padding-left : 120px;
}

form[path=id]{
	background-color: black;
}

input[type=button], input[type=submit], input[type=reset] {
	align-items : center; 
	text-decoration: none;
	font-family : tw cen mt;
	font-size : 16px;
	border : none;
	margin-left : 60px;
	padding: 10px 20px;
	background-color : #1A8FCE;
	color : white;
}

input[type=submit]:hover {
	background-color: #0B4564;
	border-radius : 5px
}
</style>
</head>

<body>
<div class=top>
	<div class=header>
		<h1>EDIT DATA</h1>
	</div>
</div>

<ul>
	<li><a href="/springmvc-hibernate-maven/mhs/home-mhs">Home</a></li>
	<li><a href="/springmvc-hibernate-maven/RBTCAssistant/logout">Logout</a></li>
</ul>

<br></br>
<div class="besar">
	<div class="header">
		<div class="logo">
			<h3>RBTCAssistant</h3>
		</div>
	</div>
	<div class="badan">
		<div class="form-css">
			<form:form action="editDb" method="POST" modelAttribute="model">
				Nama : <br />
				<form:input path="nama"/> <br /><br />
				NRP : <br />
				<form:input disabled="true" path="nrp" /> <br /><br />
				Password <br />
				<form:password path="password" /> <br /><br />
				Email : <br />
				<form:input path="email" /> <br /><br />
				No. HP : <br />
				<form:input path="nohp" /> <br /><br /><br /><br />
				<input type="submit" value="Submit">
			</form:form>
		</div>
	</div>
</div>
</body>
</html>