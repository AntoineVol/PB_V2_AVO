<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">


<title>ProxiBanque</title>
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

	<!-- Entête avec Logo -->
	<header class="container-fluid">
		<nav class="navbar fixed-top navbar-dark bg-dark">
			<div class="col-md-2">
				<a class="navbar-brand" href="${pageContext.request.contextPath}/">
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

			<div class="Connexion col-md-2">
			</div>
		</nav>
	</header>

	<!-- Texte d'intro -->
	<section class="container">
		<div>
			<h1><b>ProxiBanque V2</b></h1>
		</div>
		
		<!-- Table pour naviguer -->
		<div name="tabCentrale" class="container">
			<h2>Cher Conseiller de clientèle</h2>
			<p>Veuillez vous authentifier</p>
			<div name="TabComplete">
			<ul name="InterTab" class="nav nav-tabs" >
				<li class="active" style="font-variant: small-caps;"><a data-toggle="tab" href="#AuthConseiller"><b>Authentification</b></a></li>
			</ul>

			<div class="tab-content">
				<div id="AuthConseiller" class="tab-pane fade in active">
						<form class="form-horizontal" method="post">
						<fieldset>
							<!-- Form Name -->
							<legend align="center">Connexion</legend>
							<!-- Text input-->
							<div class="form-group">
								<div class="input -group">
								  <label class="col-md-4"> </label>  
								  <div class="col-md-4">
								  	  <div class="alert alert-danger" role="alert">
								  	  	Login ou Password erroné, veuillez vérifier vos paramètres d'identifications.
								  	  </div>

								</div>
							  </div>
							</div>
							<div class="form-group">
								<div class="input -group">
								  <label class="col-md-4 control-label" for="login">Login</label>  
								  <div class="col-md-4">
								  <!-- <span class="input-group-addon">Login</span> -->
								  <input id="login" name="login" type="login" placeholder="Login" class="form-control input-md" pattern=".{3,}">
								  <small id="loginHelp" class="form-text text-muted">Votre Login doit contenir au moins 3 caractères </small>
								</div>
							  </div>
							</div>
							<!-- Password input-->
							<div class="form-group">
							  <label class="col-md-4 control-label" for="password">Password</label>
							  <div class="col-md-4">
								<input id="password" name="password" type="password" placeholder="Password" class="form-control input-md" pattern=".{4,}">
								<small id="passwordHelp" class="form-text text-muted">Votre Password doit contenir au moins 4 caractères </small>
							  </div>
							</div>
							<!-- Button -->
							<div class="form-group" align="center">
								<label class="col-md-4 control-label" for="connexion"> </label>
								<div class="col-md-4 " align="center">
									<button id="singlebutton" name="singlebutton" class="btn btn-primary">Se Connecter</button>
								</div>
							</div>
						</fieldset>
						</form>
				</div>	
			</div>
			</div>
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