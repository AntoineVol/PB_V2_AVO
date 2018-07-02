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
	<c:url value="/virements.html?idClient=" var="virementsUrl" />
	<c:url value="/clientEdition.html?idClient=" var="clientEditionUrl" />
	<c:url value="/logout.html" var="logoutUrl" />
	<c:url value="/deleteClient.html?idDeleted=" var="deleteUrl" />

	<!-- Entête avec Logo -->
	<nav class="navbar fixed-top navbar-dark bg-dark">
		<div class="col-md-2">
			<div class="navbar-brand">
				<img name="logo"
					src="${pageContext.request.contextPath}/images/logo-banque.jpg"
					alt="LOGO">
			</div>
		</div>
		<div class="col-md-6 d-flex justify-content-center align-items-center">
			<h1>
				<font color="white">ProxiBanque Conseiller clientèle</font>
			</h1>
		</div>
		<!-- UserName -->
		<div class="Connexion col-md-2">
			<h4>

				<font color="green" style="font-variant: small-caps;"><b>Bienvenue
						${sessionScope.csl.prenom} ${sessionScope.csl.nom}</b></font>
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
			<b>Présentation de la liste de vos Clients</b>
		</h4>
		<table id="liste" class="listeClient">
			<thead style="font-variant: small-caps;">
				<tr>
					<th>Id Client</th>
					<th>Nom</th>
					<th>Prénom</th>
					<th>Mail</th>
					<th>adresse</th>
					<th>Edition</th>
					<th>Details</th>
					<th>Virements</th>
					<th>Suppression</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="client" items="${listClient}">
					<tr>
						<td>${client.id}</td>
						<td>${client.nom}</td>
						<td>${client.prenom}</td>
						<td>${client.mail}</td>
						<td>${client.adresse}</td>
						<td><a href="${clientEditionUrl}${client.id}"><button>
									<h7> <font style="font-variant: small-caps;">Edition</font></h7>
								</button></a></td>
						<td><a href="${listeComptesUrl}${client.id}"><button>
									<h7> <font style="font-variant: small-caps;">Liste
										des comptes</font></h7>
								</button></a></td>

						<td><a href="${virementsUrl}${client.id}"><button>
									<h7> <font style="font-variant: small-caps;">Virements</font></h7>
								</button></a></td>
						<td><a
							href="${deleteUrl}${client.id}">
								<button>
									<h7> <font style="font-variant: small-caps;">Suppression</font></h7>
								</button>
						</a></td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="container-fluid">
		<form:form modelAttribute="modelClient" method="post">
			<legend>Nouveau client</legend>
			<div class="form-row">
				<div class="col">
					<form:input type="text" class="form-control" placeholder="Nom"
						path="nom" id="nomNouveauClient" required="required" />
				</div>
				<div class="col">
					<form:input type="text" class="form-control" placeholder="Prenom"
						path="prenom" id="prenomNouveauClient" required="required" />
				</div>
				<div class="col">
					<form:input type="email" class="form-control"
						placeholder="mail@gmail.com" path="mail" id="mailNouveauClient"
						required="required" />
				</div>
				<div class="col">
					<form:input type="text" class="form-control" placeholder="adresse"
						path="adresse" id="adresseNouveauClient" required="required" />
				</div>
				<div class="col">
					<button type="submit" class="btn btn-primary">Créer</button>
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