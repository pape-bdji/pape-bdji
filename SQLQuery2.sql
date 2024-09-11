
USE SALES

CREATE TABLE Client(
clientID INT PRIMARY KEY,
prenom varchar(20),
nom VARCHAR(20),
email VARCHAR(50),
telephone NUMERIC,
adresse VARCHAR(100),
ville VARCHAR (50),
etat VARCHAR(20),
code_postal VARCHAR(20)
);

SELECT * FROM Client

CREATE TABLE Categories(
categoriID INT PRIMARY KEY,
nom_categorie VARCHAR (60),
description_categorie VARCHAR(200)
);

CREATE TABLE Produit(
produitID INT PRIMARY KEY,
nom_produit VARCHAR(60),
description_prod VARCHAR(150),
prix NUMERIC,
quantite_en_stock NUMERIC,
categoriID INT,
CONSTRAINT cost_i FOREIGN KEY (categoriID) REFERENCES Categories (categoriID)
);

SELECT * FROM Produit

CREATE TABLE Commande(
ComID INT PRIMARY KEY,
date_commande DATE,
montant_total NUMERIC,
clientID INT,
CONSTRAINT cost_ii FOREIGN KEY (clientID) REFERENCES Client(clientID)
);
CREATE TABLE Detail_commande(
detailcomID INT PRIMARY KEY,
quantite_detail NUMERIC,
comID INT,
ProduitID INT,
CONSTRAINT cost_1 FOREIGN KEY (ComID) REFERENCES Commande(comID),
CONSTRAINT cost_2 FOREIGN KEY (produitID) REFERENCES Produit(produitID)
);







