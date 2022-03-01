SELECT 
    *
FROM
    tblEmployes;
    
-- A --
SELECT 
    *
FROM
    tblEmployes
WHERE
    EJob NOT IN ('Manager');
    
-- B --
SELECT 
    *
FROM
    tblEmployes
WHERE
    Esal > IFNULL(ECom, 0);

-- C --
SELECT 
    *
FROM
    tblEmployes
WHERE
    (Esal + IFNULL(ECom, 0)) BETWEEN 2000 AND 3000;

-- D --
SELECT 
    *
FROM
    tblEmployes
WHERE
    (Esal + IFNULL(ECom, 0)) NOT BETWEEN 2000 AND 3000;

-- E --
SELECT 
    *
FROM
    tblEmployes
WHERE
    EJob IN ('Manager' , 'Analyste');

-- F --
SELECT 
    *
FROM
    tblEmployes
WHERE
    EJob NOT IN ('Manager' , 'Analyste');

-- G -- 
SELECT 
    *
FROM
    tblEmployes
WHERE
    ECom IS NULL OR ECom = '0';

-- H --
SELECT 
    *
FROM
    tblEmployes
WHERE
    ECom IS NOT NULL AND ECom != '0';