# ProxiBanqueSI Version 2                                             19/06/2018
Antoine Volatron et Fabien Lenoir
--------------------------------------------------------------------------------

## I_Introduction

La Banque ProxiBanque, la banque proche de ses client.
L'application ProxiBanqueSI permets aux conseillers de clientèles de se connecter 
et d'effectuer des actions sur les clients ainsi que leurs comptes associés.

## II_Fonctionnalités

Le Conseiller de clientèle peut : 
- Créer un client
- Modifier les informations du client (Nom, Prénom, Mail et Adresse)
- Lire les informations de ses clients
- Supprimer un client
- Afficher les comptes d'un client spécifié
- Créer des comptes pour un client spécifié
- Effectuer des virements compte à compte pour un client spécifié

## III_Installation
Les diagrammes de classes et sql sont dans le dossier "Util"
Pour utiliser ProxiBanqueSI v2.0 : 
------ Installer l'application ------
1) déziper dans un dossier le fichier "Proxibanque_V2_AVOFLE.zip"
2) ouvrir une console
3) aller jusqu'au dossier source de proxibanque.
4) taper : mvn clean package 
6) puis : xcopy /Y /Q target\proxibanque.war S:\apache-tomcat-8.5.31\webapps\proxibanque.war

------ Créer la base de donnée MySQL ------
1) Ouvrir Xampp
2) Lancer Apache
3) Lancer MySQL
4) Lancer le controle Admin de MySQL sur Xampp
5) Cliquer sur l'onglet "console" de Xampp
6) taper : "mysql -u root -p" puis tapez [entrée]
7) Dans le dossier PB_V2_AVOFLE, ouvrir le dossier Util et ouvrez dans un éditeur texte le fichier "CreationDBProxBanque_V2.sql"
8) Copier l'entièreté du fichier
9) Dans la console, coller le texte copié.
10) La base de donnée a été crée dans MySQL.

------ Lancer l'application ------
1) Lancer TomCat "tomcat-8.5.31"
2) Ouvrez un navigateur internet
3) Tapez dans l'url : http://localhost:8080/proxibanque/

## IV_Utilisation

Au démarrage l'application ProxiBanqueV2 affiche une page de connexion.
Seuls les conseillers de clientèles peuvent se connecter. 

Un login et un mot de passe est demandé.
Par défaut 2 conseillers de clientèle ont été définis avec 
	- conseiller 1:
		# login :"admin"			
		# password "admin"
	- conseiller 2:
		# login :"tim"			
		# password "tim1"

Si vous vous trompez, une page vous demandant de vous connecter avec de bons paramètres d'itentifications apparait. 
		
A chaque conseiller a été attribué 3 client.
A chaque client a été créé un nombre de Comptes Epargnes et de Compte Courant aléatoire ainsi que des montant eux aussi aléatoire.
    
=== Une fois identifié ===

Une page "Liste des clients" vous liste les clients qui vons sont associés.
Votre nom et prénom est affiché en haut à droit de l'écran ainsi que le statut "Connecté"

Plusieurs choix s'offrent à vous :
	- En renseignant le formulaire qui est apparut sous le tableau de clients, vous pouvez créer un nouveau client.
		# Une fois le bouton [Créer] cliqué, la page ets mise à jour et le nouveau client apparait dans le tableau.
		
    - [Edition] : éditer un client
		#  Une fois cliqué une nouvelle page apparait vous affichant les caractéristiques du client. 
		# Il vous est alors possible de modifier ses caractéristiques à partir du formulaire puis de cliquer sur le bouton [Modifier]
		Vous retournez au menu principal "Liste des Clients"
		
    - [Liste des comptes] : de lister les comptes d'un client
		# Une fois cliqué une nouvelle page vous affiche la liste des comptes du clients trié par Commpte Courant et Compte Epargne.
		# Avec le formulaire il vous est possible de créer un nouveau Compte Courant ou Compte Epargne.
		# Pour revenir à la liste des clients cliquez sur l'onglet "Liste des Clients" au centre de la page.
		
	- [Virements] : d'effectuer un virement compte à compte d'un client
		# Vous ne pourrez pas effectuer de virement si le montant dépasse le solde du Compte Courant + son découvert autorisé.
		# Une fois cliqué une nouvelle page vous affiche les différents comptes du client séléctionné
		# Vous pouvez effectuer des virements comptes à comptes avec le formulaire : 
			- sélectionner le compte à débiter
			- sélectionner le compte à créditer
			- sélectionner le montant
			- cliquer sur [effectuer le virement]
			- La page est alors mise à jour.
		# Pour revenir à la liste des clients cliquez sur l'onglet "Liste des Clients" au centre de la page.
		
	- [Suppression]	: de supprimer un client
		- Une fois cliqué, le client est supprimer de la Banque de Donnée.

A chaque étape de votre navigation, le bouton [Logout] bleu vous permettra de vous deconnecter et de revenir au menu d'authentification.

## V_EVOLUTIONS
    - Dans de futures versions, l'application pourra proposer à ses acteurs 
      les fonctionnalités qui ne sont pas présentes à l'heure actuelle.