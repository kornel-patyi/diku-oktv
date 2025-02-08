SELECT
	megye_reszvetel.megye_id AS "megye kód",
    megye_reszvetel.reszveteli_arany AS "részvételi arány",
    (megye_eredmeny.szavazatok_1 - megye_eredmeny.szavazatok_2) AS "különbség",
    megye_eredmeny.vezeteknev_1 AS "vezetéknév (1. jelölt)",
    megye_eredmeny.vezeteknev_2 AS "vezetéknév (2. jelölt)"
FROM megye_reszvetel
JOIN regio_megye_join ON megye_reszvetel.megye_id=regio_megye_join.megye_id
JOIN megye_eredmeny ON megye_reszvetel.megye_id=megye_eredmeny.megye_id
WHERE regio_megye_join.regio_id IS NULL AND megye_reszvetel.reszveteli_arany >= 45;