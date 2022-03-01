USE 
CIE_106;

-- A --
SELECT 
    *
FROM
    tblEmployes;

-- B --
SELECT 
    *
FROM
    tblDepartements;

-- C --
SELECT 
    ENom, EJob
FROM
    tblEmployes;

-- D --

SELECT 
    ENom AS Nom, ESal AS Salaire
FROM
    tblEmployes;

-- E --

SELECT 
    ENom AS Nom, ESal AS Salaire
FROM
    tblEmployes
ORDER BY ENom;

-- F --

SELECT 
    ENom AS Nom, ESal AS Salaire
FROM
    tblEmployes
ORDER BY EJob , ENom;

-- G --

SELECT 
    ENom, ESal
FROM
    tblEmployes
ORDER BY ESal;

-- H --

SELECT 
    EJob
FROM
    tblEmployes;

-- I --

SELECT DISTINCT
    EJob
FROM
    tblEmployes;

