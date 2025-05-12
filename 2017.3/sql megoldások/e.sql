SELECT
	rendeles.rendeles_id AS "rendelés kód",
    tetel.tetel_rend_id AS "Tétel sorszáma",
    tetel.darabszam AS "Tétel darabszáma",
    meret.nev AS "Méret név",
    alap.nev AS "Alap neve",
    feltet.feltet_nev AS "Feltét neve",
    IF(extra.szimpla_vagy_dupla=1, "Szimpla", "Dupla") AS "Szimpla vagy dupla"
FROM rendeles
JOIN tetel USING(rendeles_id)
JOIN meret USING(meret_id)
JOIN alap USING(alap_id)
LEFT JOIN extra ON (tetel.rendeles_id=extra.rendeles_id AND tetel.tetel_rend_id=extra.tetel_rend_id)
LEFT JOIN feltet ON extra.feltet_id=feltet.feltet_id
WHERE rendeles.rendeles_id="R12347"
ORDER BY tetel.tetel_rend_id, feltet.feltet_nev