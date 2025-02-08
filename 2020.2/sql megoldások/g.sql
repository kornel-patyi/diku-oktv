SELECT 
	regio_reszvetel.regio_name,
    jeloltek.vezeteknev,
    jeloltek.keresztnev,
    (
        SELECT COUNT(*) FROM megye_eredmeny me
        JOIN regio_megye_join rmj ON me.megye_id=rmj.megye_id
        WHERE rmj.regio_id=regio_reszvetel.regio_id AND me.vezeteknev_1=jeloltek.vezeteknev AND me.keresztnev_1=jeloltek.keresztnev
    ) AS "megyék száma"
FROM regio_reszvetel
CROSS JOIN jeloltek
ORDER BY regio_reszvetel.regio_name, jeloltek.vezeteknev, jeloltek.keresztnev;