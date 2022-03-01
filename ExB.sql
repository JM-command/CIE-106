-- -- Insérer des données -- --

INSERT INTO Departements(DepNo,DepNom)
VALUES (1, 'Recherche'),(2, 'Vente');

INSERT INTO Employes(EmpNo,EmpNom,EmpVille,DepNo)
VALUES	(101,'Jean','Lausanne',1), 
		(102,'Paul','Geneve',2),
        (103,'Anne','Fribourg',2);
	
INSERT INTO Projets(ProjetNo,ProjetNom)
VALUES	(11,'A'), 
		(12,'B'),
        (13,'C');
        
        
INSERT INTO Travailler(EmpNo,ProjetNo,Duree)
VALUES	(101,11,60), 
		(101,12,40),
        (102,13,100),
        (103,12,30),
        (103,13,30);


-- -- SELECT -- --

SELECT * FROM Departements;

SELECT * FROM Employes;

SELECT * FROM Projets;

SELECT * FROM Travailler;


