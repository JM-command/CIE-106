-- A --

SELECT 
    ENom AS Nom,
    Esal AS Salaire,
    Esal * (10 / 100) AS 'Augmentation',
    Esal + Esal * (10 / 100) AS 'Nouveau Salaire'
FROM
    tblEmployes;

-- B --

SELECT 
    ENom AS Nom,
    Esal AS Salaire,
    Esal * (127 / 100) AS 'Augmentation',
    Esal + Esal * (127 / 100) AS 'Nouveau Salaire'
FROM
    tblEmployes;

-- C --

SELECT 
    ENom AS Nom,
    Esal AS Salaire,
    Esal * (12) AS Annuel,
    Esal * (13) AS '13 mois'
FROM
    tblEmployes;

-- D --

SELECT 
    AVG(Esal + IFNULL(ecom, 0))
FROM
    tblEmployes;

-- E --

SELECT 
    AVG(Esal + IFNULL(ecom, 0)), COUNT(Eno)
FROM
    tblEmployes;

-- F --

SELECT 
    SUM(Esal + IFNULL(ecom, 0)),
    AVG(Esal + IFNULL(ecom, 0)),
    MAX(Esal + IFNULL(ecom, 0)),
    MIN(Esal + IFNULL(ecom, 0))
FROM
    tblEmployes;

-- G --

SELECT 
    SUM(Esal + IFNULL(ecom, 0)), COUNT(Esal + IFNULL(ecom, 0))
FROM
    tblEmployes;


-- H --

SELECT 
    COUNT(ECom) >= (0)
FROM
    tblEmployes;
