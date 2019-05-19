<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
<title>RBTCAssistant</title>
</head>
<body>
  <!--==========================
    Intro Section
  ============================-->
  <section id="intro">

    <div class="intro-content">
      <h2>RBTC<span>Assistant</span><br></h2>
      <div>
        <a href="login" class="btn-get-started scrollto">Login</a>
        <a href="signup" class="btn-projects scrollto">Sign Up</a>
      </div>
    </div>
	
 

  </section><!-- #intro -->
</body>
</html>