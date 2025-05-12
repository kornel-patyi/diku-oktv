CREATE TEMPORARY TABLE fogyasztasok
SELECT 
    merohely_id,
    datum,
    gazora_szama,
    (gazora_allas - LAG(gazora_allas, 1) OVER(PARTITION BY merohely_id, gazora_szama ORDER BY datum)) 
    / (datum - LAG(datum, 1) OVER(PARTITION BY merohely_id, gazora_szama ORDER BY datum)) AS atlagos_napi_fogyasztas
FROM leolvasasok;


WITH mf AS (
    SELECT
        MAX(atlagos_napi_fogyasztas) AS max_fogyasztas
    FROM fogyasztasok
)
SELECT
	merohely_id AS "mérőhely kódja",
    datum AS "leolvasás ideje",
    gazora_szama AS "gyári szám",
    ROUND(fogyasztasok.atlagos_napi_fogyasztas, 2) AS "átlagos napi fogyasztás",
    merohelyek.merohely_cim AS "mérőhely címe",
    ugyfelek.nev AS "ügyfél neve"
FROM fogyasztasok
CROSS JOIN mf
JOIN merohelyek USING(merohely_id)
JOIN ugyfelek USING(ugyfel_id)
WHERE fogyasztasok.atlagos_napi_fogyasztas = mf.max_fogyasztas;