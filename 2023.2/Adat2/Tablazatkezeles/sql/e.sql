WITH o AS (
    (SELECT DISTINCT orszagok.Ország AS "orszag" FROM orszagok)
    EXCEPT
    (SELECT DISTINCT gyarak.Ország AS "orszag" FROM `gyarak` WHERE Kapacitás IS NULL)
)
SELECT
	termeles.Ország AS "ország",
    ROUND((termeles.Mennyiség / (SUM(gyarak.Kapacitás)*1000)) * 100, 1) as "kihasználtság százalékban"
FROM o
JOIN termeles ON o.orszag = termeles.Ország
JOIN gyarak ON gyarak.Ország=termeles.Ország
WHERE termeles.Év=2022
GROUP BY termeles.Ország;