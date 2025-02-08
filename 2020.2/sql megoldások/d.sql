SELECT
	regio_id,
	(
        SELECT COUNT(*) FROM regio_megye_join
        WHERE regio_megye_join.regio_id=regio_reszvetel.regio_id
    )
FROM regio_reszvetel;