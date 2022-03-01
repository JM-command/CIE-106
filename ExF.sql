SELECT 
    *
FROM
    tblEmployes;
    
-- A ---
SELECT 
    *
FROM
    tblEmployes
WHERE
    DNo = 30 AND Esal > 1500
        AND EJob NOT IN ('ouvrier' , 'vendeur')
        AND EDebut < '20000101';

-- B --
SELECT 
    *
FROM
    tblEmployes
WHERE
    Esal NOT BETWEEN '1500' AND '2000'
        AND EJob IN ('Vendeur' , 'Analyte')
        AND EChef IS NOT NULL;


-- C --
SELECT 
    *
FROM
    tblEmployes
WHERE
    ECom IS NOT NULL AND EJob LIKE 'O%'
        AND ENom NOT LIKE '%Z%'
ORDER BY ENom;


-- D --
SELECT 
    *
FROM
    tblEmployes
WHERE
    DATE(EDebut) BETWEEN '19970101' AND '19971231'
        AND EJob IN ('Ouvrier', 'Manager') 
        AND Esal < '1500';
        
-- E --
SELECT 
    *
FROM
    tblEmployes
WHERE
    DATE(EDebut) BETWEEN '19960101' AND '19961231';

-- F --
SELECT 
    *
FROM
    tblEmployes
WHERE
    DATE(EDebut) NOT BETWEEN '19940701' AND '19950630';

