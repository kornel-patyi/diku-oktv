WITH o AS (
    SELECT orszagok.Ország AS "orszag" FROM orszagok
    EXCEPT 
    SELECT DISTINCT gyarak.Ország as "orszag" FROM gyarak
)
SELECT 
	o.orszag AS "ország",
    SUM(imp.Mennyiség-export.Mennyiség) as "felhasznált acél (tonnában)"
FROM o
JOIN export ON o.orszag = export.Ország
JOIN `import` imp ON o.orszag = imp.`Ország` AND imp.Év = export.Év
WHERE export.Év BETWEEN 2015 AND 2022
GROUP BY o.orszag
ORDER BY SUM(imp.Mennyiség-export.Mennyiség) DESC
LIMIT 3;