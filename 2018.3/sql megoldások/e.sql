SELECT
	helyszin.orszag AS "ország",
    COUNT(*) AS "BIE által elismert kiállítások"
FROM helyszin
JOIN kiallitas_helyszin USING(helyszin_id)
JOIN kiallitas USING(kiallitas_id)
WHERE hivatalos = "BIE"
GROUP BY helyszin.orszag
ORDER BY helyszin.orszag