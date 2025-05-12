SELECT
	meret.nev AS "méret neve",
    COUNT(*) AS "darabszám"
FROM tetel
JOIN meret USING(meret_id)
GROUP BY meret_id
ORDER BY meret.nev