SELECT 
    megye_reszvetel.megye_id AS "megye kód",
    megye_eredmeny.vezeteknev_1 AS "vezetéknév",
    megye_eredmeny.keresztnev_1 AS "keresztnév"
FROM megye_reszvetel
JOIN megye_eredmeny ON megye_reszvetel.megye_id=megye_eredmeny.megye_id
WHERE megye_reszvetel.szavazasra_jogusolt>1000000
ORDER BY megye_reszvetel.szavazasra_jogusolt DESC;