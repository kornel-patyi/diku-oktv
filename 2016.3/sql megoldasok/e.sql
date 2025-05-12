SELECT 
	merohelyek.merohely_id AS "mérőhely kódja",
    IF(leolvasasok.gazora_szama IS NULL, "***NINCS***", leolvasasok.gazora_szama) AS "gyári szám"
FROM merohelyek
LEFT JOIN leolvasasok USING(merohely_id)
GROUP BY merohelyek.merohely_id
ORDER BY merohelyek.merohely_id;