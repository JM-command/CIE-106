-- A --
SELECT 
    ENom, DNom
FROM
    tblEmployes E
        INNER JOIN
    tblDepartements D ON D.DNo = E.DNo
WHERE 
D.DNom = 'Vente'
ORDER BY ENom;

-- B --
SELECT 
    ENom, DNom
FROM
    tblEmployes E
        INNER JOIN
    tblDepartements D ON D.DNo = E.DNo
WHERE
    EJob = 'Vendeur' AND Esal > 1000;
    
-- C --
SELECT 
    E.*, DNom
FROM
    tblEmployes E
        INNER JOIN
    tblDepartements D ON D.DNo = E.DNo;
    
-- D --
SELECT 
    EC.ENom, E.ENom
FROM
    tblEmployes EC
        INNER JOIN
    tblEmployes E ON EC.EChef = E.ENo
WHERE
    E.Esal > EC.Esal;

-- E --
SELECT 
    E.ENom, DNom, EC.ENom
FROM
    tblEmployes E
        INNER JOIN
    tblDepartements D ON D.DNo = E.DNo
        INNER JOIN
    tblEmployes EC ON EC.EChef = E.ENo
WHERE
    E.Esal > EC.Esal;
    
-- F --
SELECT 
    DISTINCT EJob, DNom
FROM
    tblEmployes E
        INNER JOIN
    tblDepartements D ON D.DNo = E.DNo
ORDER BY EJob, DNom;
    
-- G --
SELECT 
    DISTINCT D.DNom
FROM
    tblDepartements D
        INNER JOIN
    tblEmployes E ON D.DNo = E.DNo
WHERE
    D.DNom LIKE '_____'
        AND E.ENom IS NOT NULL;
    
-- H --
SELECT 
    E.ENom, EC.ENom, ECEC.ENom
FROM
    tblEmployes E
        INNER JOIN
    tblEmployes EC ON E.EChef = EC.ENo
        INNER JOIN
    tblEmployes ECEC ON EC.EChef = ECEC.ENo;