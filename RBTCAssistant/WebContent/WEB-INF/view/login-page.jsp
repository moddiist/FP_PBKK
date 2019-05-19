<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<spring:url value="/resources/css/home.css" var="mainCss" />
<spring:url value="/resources/lib/bootstrap/css/bootstrap.min.css" var="bootstrapmin" />
<spring:url value="/resources/lib/animate/animate.min.css" var="animate" />
<spring:url value="/resources/lib/font-awesome/css/font-awesome.min.css" var="fontawesome" />
<spring:url value="/resources/lib/ionicons/css/ionicons.min.css" var="ionicons" />
<spring:url value="/resources/lib/owlcarousel/assets/owl.carousel.min.css" var="owlcarousel" />
<spring:url value="/resources/lib/magnific-popup/magnific-popup.css" var="magnificpopup" />
<spring:url value="/resources/css1/style.css" var="css" />

<!-- <link href="${mainCss}" rel="stylesheet" /> -->

<!-- Bootstrap CSS File -->
<link href="${bootstrapmin}" rel="stylesheet">

<!-- Libraries CSS Files -->
<link href="${fontawesome}" rel="stylesheet">
<link href="${animate}" rel="stylesheet">
<link href="${ionicons}" rel="stylesheet">
<link href="${owlcarousel}" rel="stylesheet">
<link href="${magnificpopup}" rel="stylesheet">

<!-- Main Stylesheet File -->
<link href="${css}" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <h1 class="scrollto">RBTC<span>Assistant</span></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="#body"><img src="img/logo.png" alt="" title="" /></a>-->
      </div>
    </div>
  </header><!-- #header -->
  


<div class="container">
        <div class="form" style="margin-top : 100px;">
          <h2>Login</h2>
          <form:form action="prosesLogin" method="POST" modelAttribute="model">
           
            	
            <div class="form-group">
            <label>NRP/NIP</label> <br />
              <div class="form-group col-md-6">
                <form:input path="id" class="form-control" id="name"  data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div> <br />
              <label>Password</label> <br />
              <div class="form-group col-md-6">
                <form:password path="password" class="form-control" id="email"  />
                <div class="validation"></div>
              </div>
              
              <label>Role : </label>
              <form:radiobutton path="role" value="Mahasiswa" />Mahasiswa
				<form:radiobutton path="role" value="Pustakawan" />Pustakawan<br /><br />
				
				<input type="submit" value="Submit" class="btn">
              </div>
          </form:form>
        </div>
</div>




	
</body>
</html>