-- -- Création de base de données -- -- 

CREATE DATABASE Exa;

-- -- Utilisation de la base de données -- -- 

USE Exa;

-- -- Création des tables -- --

CREATE TABLE Departements (
    DepNo INT NOT NULL,
    DepNom VARCHAR(50)
);

CREATE TABLE Employes (
    EmpNo INT NOT NULL,
    DepNo INT,
    EmpNom VARCHAR(50),
    EmpVille VARCHAR(50)
);

CREATE TABLE Projets (
    ProjetNo INT NOT NULL,
    ProjetNom VARCHAR(50)
);

CREATE TABLE Travailler (
    EmpNo INT NOT NULL,
    ProjetNo INT NOT NULL,
    Duree INT
);

-- -- Création des clés primaires -- --

ALTER TABLE Departements
	ADD CONSTRAINT PK_Departements PRIMARY KEY (DepNo);

ALTER TABLE Employes
	ADD CONSTRAINT PK_Employes PRIMARY KEY (EmpNo);
    
ALTER TABLE Projets
	ADD CONSTRAINT PK_Projets PRIMARY KEY (ProjetNo);
    
ALTER TABLE Travailler
	ADD CONSTRAINT PK_Travallier PRIMARY KEY (EmpNo,ProjetNu);
    
-- -- Création des clés étrangères -- --

ALTER TABLE Employes
	ADD CONSTRAINT FK_Employes_Departements FOREIGN KEY (DepNo)
    REFERENCES Departements(DepNo);
    
ALTER TABLE Travailler
	ADD CONSTRAINT FK_Travailler_Employes FOREIGN KEY (EmpNo)
    REFERENCES Employes(EmpNo);

ALTER TABLE Travailler
	ADD CONSTRAINT FK_Travailler_Projets FOREIGN KEY (ProjetNo)
    REFERENCES Projets(ProjetNo);

