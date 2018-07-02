<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<%-- <%=request.getContextPath()%> --%>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css_bootstrap/4.1.1_css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css_bootstrap/3.3.7_css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/index.css" />
<script
	src="${pageContext.request.contextPath}/js_jquery_3.3.1/jquery-3.3.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js_bootstrap_3.3.7/bootstrap.min.js"></script>

<title>ProxiBanque</title>
</head>
<body>
	<!-- LISTE DES URLs -->
	<c:url value="/listeClients.html?idConseille=" var="listeClientsUrl" />
	<c:url value="/listeComptes.html?idClient=" var="listeComptesUrl" />
	<c:url value="/virements.html" var="virementsUrl" />
	<c:url value="/clientEdition.html?idClient=" var="clientEditionUrl" />
	<c:url value="/logout.html" var="logoutUrl" />

	<!-- Entête avec Logo -->
	<nav class="navbar fixed-top navbar-dark bg-dark">
		<div class="col-md-2">
			<div class="navbar-brand">
				<a id="ListeClientColor" href="${listeClientsUrl}${idCsl}"
					class="col-sm-3"> <img name="logo"
					src="${pageContext.request.contextPath}/images/logo-banque.jpg"
					alt="LOGO"></a>

			</div>
		</div>
		<div class="col-md-6 d-flex justify-content-center align-items-center">
			<h1>
				<font color="white">ProxiBanque Conseiller Clientèle</font>
			</h1>
		</div>
		<!-- UserName -->
		<div class="Connexion col-md-2">
			<h4>

				<font color="green" style="font-variant: small-caps;"><b>${sessionScope.csl.prenom} ${sessionScope.csl.nom}</b></font>
			</h4>
			<h5>
				<font color="green" style="font-variant: small-caps;"><b>Connected</b></font>
			</h5>
		</div>
		<!--  Logo déconnection -->
		<div class="col-md-2">
			<div class="navbar-brand">
				<a href="${logoutUrl}"><img name="logo"
					src="${pageContext.request.contextPath}/images/Logout.png"
					alt="Logout"></a>
			</div>
		</div>
	</nav>
	<!-- </header> -->
	<nav name="tabsHorizontales" class="navbar navbar-dark bg-dark">
		<a id="ListeClientColor" href="${listeClientsUrl}${idCsl}"
			class="col-sm-3">Liste des Clients</a>
	</nav>

	<!-- LISTING DES CLIENTS -->
	<div class="container-fluid">
		<h4>
			<b>Edition du client : ${client.prenom} ${client.nom}</b>
		</h4>
		<table id="liste" class="listeClient">
			<thead style="font-variant: small-caps;">
				<tr>
					<th>Id Client</th>
					<th>Nom</th>
					<th>Prénom</th>
					<th>Mail</th>
					<th>adresse</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${modelClient.id}</td>
					<td>${modelClient.nom}</td>
					<td>${modelClient.prenom}</td>
					<td>${modelClient.mail}</td>
					<td>${modelClient.adresse}</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="container-fluid">
		<form:form modelAttribute="modelClient" method="post">
			<legend>Modification du client</legend>
			<div class="form-row">
				<div class="col">
					<form:input type="hidden" class="form-control" path="id" id="idClt"
						required="required" />
				</div>
				<div class="col">
					<form:input type="text" class="form-control" path="nom"
						id="nomModifClient" required="required" />
				</div>
				<div class="col">
					<form:input type="text" class="form-control" path="prenom"
						id="prenomModifClient" required="required" />
				</div>
				<div class="col">
					<form:input type="email" class="form-control" path="mail"
						id="mailModifClient" required="required" />
				</div>
				<div class="col">
					<form:input type="text" class="form-control" path="adresse"
						id="adresseModifClient" required="required" />
				</div>
				<div class="col">
					<button type="submit" class="btn btn-primary">Modifier</button>
				</div>
			</div>
		</form:form>
	</div>

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