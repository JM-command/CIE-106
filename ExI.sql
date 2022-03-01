-- A --
SELECT 
	D.DNom, AVG(E.Esal), AVG(E.ECom)
FROM
    tblDepartements D
        INNER JOIN
    tblEmployes E ON D.DNo = E.DNo
GROUP BY DNom;

-- B --
SELECT 
	D.DNom Departements, AVG(E.Esal) 'Salaire du Departements', AVG(E.ECom) 'Commision du Departements'
FROM
    tblDepartements D
        INNER JOIN
    tblEmployes E ON D.DNo = E.DNo
GROUP BY DNom;

-- C --
SELECT 
	D.DNom Departements, AVG(E.Esal) 'Salaire du Departements', AVG(E.ECom) 'Commision du Departements'
FROM
    tblDepartements D
        INNER JOIN
    tblEmployes E ON D.DNo = E.DNo
WHERE 
EJob != 'Analyste'
GROUP BY DNom;

-- D --
SELECT 
    E.EJob, COUNT(E.EJob), AVG(E.Esal)
FROM
    tblEmployes E
        INNER JOIN
    tblEmployes J ON E.ENo = J.ENo
GROUP BY EJob
ORDER BY EJob;

-- E --
SELECT 
    D.DNom, E.EJob, COUNT(E.EJob)
FROM
    tblDepartements D
        INNER JOIN
    tblEmployes E ON E.DNo = D.DNo
GROUP BY D.DNo, E.EJob;

-- F --
SELECT 
    D.DNom, E.EJob, MIN(E.Esal)
FROM
    tblDepartements D
        INNER JOIN
    tblEmployes E ON E.DNo = D.DNo
GROUP BY D.DNo, E.EJob;

-- G --
SELECT 
    DISTINCT YEAR(EDebut), DNom
FROM
    tblDepartements D
        INNER JOIN
    tblEmployes E ON E.DNo = D.DNo
    ORDER BY YEAR(EDebut);