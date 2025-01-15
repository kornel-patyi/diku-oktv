WITH jelenlegi AS (
    SELECT termeles.Mennyiség AS m, termeles.Év AS e, termeles.Ország AS o FROM termeles
    WHERE termeles.Év BETWEEN 2010 AND 2020
    ORDER BY termeles.Év
),
elozo AS (
    SELECT termeles.Mennyiség AS m, termeles.Év AS e, termeles.Ország AS o FROM termeles
    WHERE termeles.Év BETWEEN 2009 AND 2019
    ORDER BY termeles.Év
),
compound AS (
	SELECT jelenlegi.m AS "j_m", elozo.m AS "e_m", jelenlegi.e, jelenlegi.o FROM jelenlegi
	JOIN elozo ON jelenlegi.e = elozo.e + 1 AND jelenlegi.o = elozo.o    
)
SELECT o FROM compound
WHERE j_m > e_m
GROUP BY o
HAVING COUNT(*) >= 7;