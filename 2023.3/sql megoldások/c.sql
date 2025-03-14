SELECT
	mufajok.nev AS `mufaj neve`,
    ROUND(AVG(dalok.vege - dalok.kezdete) / 60, 1) AS `átlagos hossz`
FROM mufajok
JOIN dal_mufaj USING(mufaj_azon)
JOIN dalok USING(dal_azon)
GROUP BY mufajok.mufaj_azon
ORDER BY AVG(dalok.vege - dalok.kezdete) DESC
LIMIT 1;