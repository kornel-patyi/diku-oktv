SELECT
	ugyfelek.nev AS "ügyfél neve",
    ugyfelek.ugyfel_id AS "kódja",
	COUNT(merohelyek.merohely_id) AS "darabszám"
FROM ugyfelek
LEFT JOIN merohelyek ON ugyfelek.ugyfel_id=merohelyek.ugyfel_id
GROUP BY ugyfelek.ugyfel_id
ORDER BY `darabszám` DESC, ugyfelek.nev;