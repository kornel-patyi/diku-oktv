SELECT
	regio_megye_join.megye_id AS "megye kód",
    IF(regio_reszvetel.regio_name IS NULL, "Nem tartozik egy régióhoz sem", regio_reszvetel.regio_name) AS "régió név"
FROM regio_megye_join
LEFT JOIN regio_reszvetel ON regio_megye_join.regio_id=regio_reszvetel.regio_id
WHERE regio_megye_join.megye_id LIKE "%Z%";