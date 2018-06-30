<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<%-- <%=request.getContextPath()%> --%>
<title>Error500</title>
<base href="/">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" />

<link rel="stylesheet" href="${pageContext.request.contextPath}/css_bootstrap/4.1.1_css/bootstrap.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css_bootstrap/3.3.7_css/bootstrap.min.css"/>
<script src="${pageContext.request.contextPath}/js_jquery_3.3.1/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js_bootstrap_3.3.7/bootstrap.min.js"></script>

</head>
<body>
	<!-- LISTE DES URLs -->
	<c:url value="/listeClients.html" var="listeClientsUrl" />
	<c:url value="/Authentification.html" var="authentificationUrl" />
	<c:url value="/logout.html" var="logoutUrl" />


	<!-- Entête avec Logo -->
	<header class="container-fluid">
		<nav class="navbar fixed-top navbar-dark bg-dark">
			<div class="col-md-2">
				<a class="navbar-brand">
					<img name="logo"
					src="${pageContext.request.contextPath}/images/logo-banque.jpg"
					alt="LOGO">
				</a>
			</div>
			<div class="col-md-3">
				<h1>
					<font color="white">ProxiBanque</font>
				</h1>
			</div>

			<!-- USERNAME A RECUPERER ET AFFICHER ${Conseiller.Nom} -->
			<div class="Connexion col-md-2">
			</div>
		</nav>
	</header>

	<!-- Texte d'intro -->
	<section class="container">
		<div>
			<h1>
				<b>Error 500</b>
			</h1>
		</div>

		<!-- Table pour naviguer -->
		<div name="tabCentrale" class="container">
			<h2>La page demandée est inexistante</h2>
			<h5>Pour retourner à la page d'accueil cliquez <a href="${pageContext.request.contextPath}/">ici</a></h5>
		</div>
	</section>

	<!-- BAS DE PAGE -->
	<br>
	<br>
	<br>
	<br>
	<nav class="navbar fixed-bottom navbar-dark bg-dark">
		<footer class="container">
			<p>
				<font color="white"> 2018 © ProxiBanque. Tous droits
					réservés. </font>
			</p>
		</footer>
	</nav>
</body>
</html>