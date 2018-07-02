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
	<c:url value="/listeComptes.html?idCompte?solde?decouvert=" var="ajoutCompteUrl" />
	<c:url value="/listeComptes.html?idDeleted=" var="deleteCompteCourantUrl" />
	<c:url value="/listeComptes.html?idDeleted=" var="deleteCompteEpargneUrl" />
	<c:url value="/logout.html" var="logoutUrl" />
	

	<!-- Entête avec Logo -->
	<nav class="navbar fixed-top navbar-dark bg-dark">
		<div class="col-md-2">
			<a class="navbar-brand" href="${listeClientsUrl}${idCsl}">
				<img name="logo"
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
		<a href="${listeClientsUrl}${idCsl}" class="col-sm-3">Liste des Clients</a>
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
					<th>Supression</th>
				</thead>
				<tbody>
					<c:forEach var="CompteCourant" items="${listCompteCourant}">
						<tr>
							<td>${CompteCourant.id}</td>
							<td>${CompteCourant.solde}</td>
							<td>${CompteCourant.decouvert}</td>
							<td><a href="${deleteCompteCourantUrl}${CompteCourant.id}&action=supressionCompteCourant&idCsl=${idCsl}&idClient=${idClient}"><button>
									<h7> <font style="font-variant: small-caps;">Suppression</font></h7>
								</button></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<%-- Form Création nouveau compte Courant --%>
			<div class="container-fluid">
				<form:form modelAttribute="newCompteCourant" method="post" >
					<legend>Nouveau Compte Courant</legend>
					<div class="form-row">
						<div class="col">
							<form:input type="number" class="form-control" placeholder="Solde"
								path="solde" id="solde" min="0"  required="required"/>
						</div>
						<div class="col">
							<form:input type="number" class="form-control" placeholder="Découvert"
								path="decouvert" id="decouvert" min="0" required="required"/>
						</div>
						<div class="col">
							<button type="submit" class="btn btn-primary">Créer</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
		<div class="raw">
		<h2>Comptes Epargnes</h2>
			<table class="listeClient">
				<thead style="font-variant: small-caps;">
					<th>Id Compte</th>
					<th>Solde</th>
					<th>Taux</th>
					<th>Supression</th>
				</thead>
				<tbody>
					<c:forEach var="CompteEpargne" items="${listCompteEpargne}">
						<tr>
							<td>${CompteEpargne.id}</td>
							<td>${CompteEpargne.solde}</td>
							<td>${CompteEpargne.taux}</td>
							<td><a href="${deleteCompteCourantUrl}${CompteEpargne.id}&action=supressionCompteEpargne&idCsl=${idCsl}&idClient=${idClient}"><button>
									<h7> <font style="font-variant: small-caps;">Suppression</font></h7>
								</button></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
		<%-- Form Création nouveau compte Epargne --%>
			<div class="container-fluid">
				<form:form modelAttribute="newCompteEpargne" method="post">
					<legend>Nouveau Compte Epargne</legend>
					<div class="form-row">
						<div class="col">
							<form:input 
							type="number" 
							class="form-control" 
							placeholder="Solde"
							path="solde" 
							id="solde" 
							min="0" 
							required="required"/>
						</div>
						<div class="col">
							<form:input type="number" class="form-control" placeholder="taux"
								path="taux" id="taux" min="0" required="required"/>
						</div>
						<div class="col">
							<button type="submit" class="btn btn-primary">Créer</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
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