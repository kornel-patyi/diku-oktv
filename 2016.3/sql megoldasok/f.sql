SELECT * FROM (
    SELECT 
        merohely_id AS "mérőhely kódja",
        datum AS "leolvasás ideje",
        gazora_allas AS "jelnlegi óraállás",
        gazora_szama AS "gazóra gyári száma",
        LAG(datum, 1) OVER(PARTITION BY merohely_id, gazora_szama ORDER BY datum) AS "előző leolvasás ideje",
        LAG(gazora_allas, 1) OVER(PARTITION BY merohely_id, gazora_szama ORDER BY datum) AS "előző óraállás",
        gazora_allas - LAG(gazora_allas, 1) OVER(PARTITION BY merohely_id, gazora_szama ORDER BY datum) AS "fogyott gáz mennyisége"
    FROM leolvasasok
) sub
WHERE `előző leolvasás ideje` IS NOT NULL
ORDER BY `mérőhely kódja`, `leolvasás ideje`;