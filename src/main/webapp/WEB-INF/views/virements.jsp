<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<%-- <%=request.getContextPath()%> --%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css_bootstrap/4.1.1_css/bootstrap.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css_bootstrap/3.3.7_css/bootstrap.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" />
<script src="${pageContext.request.contextPath}/js_jquery_3.3.1/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js_bootstrap_3.3.7/bootstrap.min.js"></script>

<title>ProxiBanque</title>
</head>
<body>
	<!-- LISTE DES URLs -->
	<c:url value="/listeClients.html?idConseille=" var="listeClientsUrl" />
	<c:url value="/listeComptes.html" var="listeComptesUrl" />
	<c:url value="/virements.html" var="virementsUrl" />
	<c:url value="/logout.html" var="logoutUrl" />


	<!-- Entête avec Logo -->
	<nav class="navbar fixed-top navbar-dark bg-dark">
		<div class="col-md-2">
			<a class="navbar-brand" href="${listeClientsUrl}${idCsl}"> <img
				name="logo"
				src="${pageContext.request.contextPath}/images/logo-banque.jpg"
				alt="LOGO">
			</a>
		</div>
		<div class="col-md-6 d-flex justify-content-center align-items-center">
			<h1>
				<font color="white">ProxiBanque Conseiller Clientèle</font>
			</h1>
		</div>
		<!-- UserName -->
		<div class="Connexion col-md-2">
			<h4>
				<font color="green" style="font-variant: small-caps;"><b>${login}</b></font>
			</h4>
			<h5>
				<font color="green" style="font-variant: small-caps;"><b>Connected</b></font>
			</h5>
		</div>
		<!--  Logo déconnection -->
		<div class="col-md-2">
			<div class="navbar-brand">
				<a href="${logoutUrl}"><img name="logo" src="${pageContext.request.contextPath}/images/Logout.png"
					alt="Logout"></a>
			</div>
		</div>
	</nav>
	<!-- </header> -->
	<nav name="tabsHorizontales" class="navbar navbar-dark bg-dark">
		<a href="${listeClientsUrl}${idCsl}" class="col-sm-3">Liste des
			Clients</a>
	</nav>

	<%-- LISTE DES COMPTES D'UN CLIENTS --%>
	<div class="container-fluid">
		<h4>
			<b>Liste des comptes du client ${client.id}</b>
		</h4>

		<div class="raw">
			<h2>Comptes Courants</h2>
			<table class="listeClient">
				<thead style="font-variant: small-caps;">
					<th>Id Compte</th>
					<th>Solde</th>
					<th>Decouvert</th>
				</thead>
				<tbody>
					<c:forEach var="CompteCourant" items="${listCompteCourant}">
						<tr>
							<td>${CompteCourant.id}</td>
							<td>${CompteCourant.solde}</td>
							<td>${CompteCourant.decouvert}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="raw">
			<h2>Comptes Epargnes</h2>
			<table class="listeClient">
				<thead style="font-variant: small-caps;">
					<th>Id Compte</th>
					<th>Solde</th>
					<th>Taux</th>
				</thead>
				<tbody>
					<c:forEach var="CompteEpargne" items="${listCompteEpargne}">
						<tr>
							<td>${CompteEpargne.id}</td>
							<td>${CompteEpargne.solde}</td>
							<td>${CompteEpargne.taux}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<!-- VIREMENTS -->
			<div class="container-fluid">
				<form method="post">
					<legend>Effectuer un nouveau virement</legend>
					<div class="form-row align-items-center">

						<div class="form-group">
							<label for="debiter">Compte à debiter</label> <select
								class="form-control" name="debiter" id="Debiter" required>
								<c:forEach var="compte" items="${listCompte}">
									<option value="${compte.id}##${compte.typeCompteCourant}">Id
										: ${compte.id} - Solde : ${compte.solde}</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group col">
							<label for="crediter">Compte à debiter</label> <select
								class="form-control" name="crediter" id="crediter" required>
								<c:forEach var="compte" items="${listCompte}">
									<option value="${compte.id}##${compte.typeCompteCourant}">Id
										: ${compte.id} - Solde : ${compte.solde}</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group col">
							<label for="montant">Montant</label> <input type="number"
								class="form-control" placeholder="montant" name="montant"
								id="montant" min="0" required>
						</div>
						<div class="form-group col">
							<button type="submit" class="btn btn-primary">Effectuer
								le virement</button>
						</div>
						<div class="form-group col">
							<input type="hidden" class="form-control"
								value=${idClient
						} name="idClient" id="idClient" />
						</div>
						<div class="form-group col">
							<input type="hidden" class="form-control"
								value=${idCsl
						} name="idCsl" id="idCsl" />
						</div>
					</div>
				</form>
			</div>

			<!-- BAS DE PAGE -->
			<br> <br> <br> <br>
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