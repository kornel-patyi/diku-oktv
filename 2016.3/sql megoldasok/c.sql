WITH logosok AS (
    SELECT dolgozo_id FROM dolgozok
    EXCEPT
    SELECT leolvasas_forrasa FROM leolvasasok
) 
SELECT 
	nev AS "dolgozó neve",
    dolgozo_id AS "dolgozó kódja"
FROM logosok
JOIN dolgozok USING(dolgozo_id)
ORDER BY nev;