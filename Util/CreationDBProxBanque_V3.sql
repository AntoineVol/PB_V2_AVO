--cd S:\xampp\mysql\bin
--Connexion avec mysql -u root -p

--Création de la BBDD
CREATE DATABASE IF NOT EXISTS proxybanquev3_avofle;
use proxybanquev3_avofle;

INSERT INTO `conseille` (`id`, `adresse`, `mail`, `nom`, `prenom`, `login`, `password`) VALUES (NULL, NULL, NULL, 'Masson', 'Jeremy', 'admin', 'admin');
INSERT INTO `conseille` (`id`, `adresse`, `mail`, `nom`, `prenom`, `login`, `password`) VALUES (NULL, NULL, NULL, 'Tim', 'Burton', 'tim', 'tim1');

INSERT INTO `client` (`id`, `adresse`, `mail`, `nom`, `prenom`, `conseille_id`) VALUES (NULL, '12 rue du coteaux 51000 Cherbourg', 'hulk.erdogan@gmail.com', 'Erdogan', 'Hulk', '1');
INSERT INTO `client` (`id`, `adresse`, `mail`, `nom`, `prenom`, `conseille_id`) VALUES (NULL, '30 av général Leclerc 69001 Lyon', 'george.pompidou@gmail.com', 'Pompidou', 'George', '1');
INSERT INTO `client` (`id`, `adresse`, `mail`, `nom`, `prenom`, `conseille_id`) VALUES (NULL, '32 rue Boisnet 49100 Angers', 'george.pompidou@gmail.com', 'Coti', 'René', '1');

INSERT INTO `client` (`id`, `adresse`, `mail`, `nom`, `prenom`, `conseille_id`) VALUES (NULL, '16 bd des Pissenlits 56982 Toulouse', 'chris.froom@gmail.com', 'Froome', 'Chris', '2');
INSERT INTO `client` (`id`, `adresse`, `mail`, `nom`, `prenom`, `conseille_id`) VALUES (NULL, '85 impasse des mirabelles 12566 Agen', 'noël.flantier@gmail.com', 'Flantier', 'Noël', '2');
INSERT INTO `client` (`id`, `adresse`, `mail`, `nom`, `prenom`, `conseille_id`) VALUES (NULL, '48 chateau des ducs de bretagne 44000 Nantes', 'mireillemathieudu44@gmail.com', 'Matthieu', 'Mireille', '2');

INSERT INTO `compte` (`type`, `id`, `date`, `solde`, `taux`, `decouvert`, `client_id`) VALUES ('Courant', NULL, '12/08/2015', '5000', NULL, '50', '2');
INSERT INTO `compte` (`type`, `id`, `date`, `solde`, `taux`, `decouvert`, `client_id`) VALUES ('Courant', NULL, '08/12/2017', '3645', NULL, '50', '2');
INSERT INTO `compte` (`type`, `id`, `date`, `solde`, `taux`, `decouvert`, `client_id`) VALUES ('Courant', NULL, '16/03/2018', '1856', NULL, '40', '3');

INSERT INTO `compte` (`type`, `id`, `date`, `solde`, `taux`, `decouvert`, `client_id`) VALUES ('Epargne', NULL, '12/08/2015', '9006', '2', NULL, '1');
INSERT INTO `compte` (`type`, `id`, `date`, `solde`, `taux`, `decouvert`, `client_id`) VALUES ('Epargne', NULL, '30/06/2008', '7506', '3', NULL, '2');
INSERT INTO `compte` (`type`, `id`, `date`, `solde`, `taux`, `decouvert`, `client_id`) VALUES ('Epargne', NULL, '12/04/2014', '8963', '2', NULL, '3');

INSERT INTO `compte` (`type`, `id`, `date`, `solde`, `taux`, `decouvert`, `client_id`) VALUES ('Courant', NULL, '12/08/2015', '5000', NULL, '50', '4');
INSERT INTO `compte` (`type`, `id`, `date`, `solde`, `taux`, `decouvert`, `client_id`) VALUES ('Courant', NULL, '08/12/2017', '3645', NULL, '50', '4');
INSERT INTO `compte` (`type`, `id`, `date`, `solde`, `taux`, `decouvert`, `client_id`) VALUES ('Courant', NULL, '16/03/2018', '1856', NULL, '40', '6');

INSERT INTO `compte` (`type`, `id`, `date`, `solde`, `taux`, `decouvert`, `client_id`) VALUES ('Epargne', NULL, '12/08/2015', '9006', '2', NULL, '4');
INSERT INTO `compte` (`type`, `id`, `date`, `solde`, `taux`, `decouvert`, `client_id`) VALUES ('Epargne', NULL, '30/06/2008', '7506', '3', NULL, '5');
INSERT INTO `compte` (`type`, `id`, `date`, `solde`, `taux`, `decouvert`, `client_id`) VALUES ('Epargne', NULL, '12/04/2014', '8963', '2', NULL, '6');

--A utiliser pour supprimer la BDD :
--DROP DATABASE proxybanquev3_avofle;
