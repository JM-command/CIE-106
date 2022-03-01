-- A --

SELECT 
    ENom
FROM
    tblEmployes
WHERE
    ENom LIKE 'M%';

-- B --

SELECT 
    ENom
FROM
    tblEmployes
WHERE
    ENom LIKE '%ER';


-- C --

SELECT 
    ENom
FROM
    tblEmployes
WHERE
    ENom LIKE '_____R';


-- D --

SELECT 
    ENom
FROM
    tblEmployes
WHERE
    ENom LIKE '_a%';

-- E --

SELECT 
    ENom
FROM
    tblEmployes
WHERE
    ENom LIKE '_____';

-- F --

SELECT 
    ENom
FROM
    tblEmployes
WHERE
    ENom LIKE 'V%' OR ENom LIKE 'C%';

-- G --

SELECT 
    *
FROM
    tblEmployes
WHERE
    DNo LIKE '30' AND Esal > '2000';

-- H --

SELECT 
    *
FROM
    tblEmployes
WHERE
    EJob = 'Vendeur' AND DNo LIKE '30'
        AND Esal BETWEEN 1500 AND 2000;

-- I --

SELECT 
    *
FROM
    tblEmployes
WHERE
    EJob = 'Vendeur' AND DNo LIKE '30'
        OR EJob = 'Manager'
        AND DNo LIKE '30'
        AND Esal > 3000;

-- J -- 

SELECT 
    *
FROM
    tblEmployes
WHERE
    DNo LIKE '30' AND EJob != 'Manager'
        AND EJob != 'Vendeur';

-- K --

SELECT 
    ENom, Esal, Ecom
FROM
    tblEmployes
WHERE
    ECom > Esal * (25 / 100); 


