SELECT
    megye_reszvetel.megye_id AS "megye kód",
    regio_megye_join.megye_nev AS "megye név",
    megye_reszvetel.tavolmaradok_aranya AS "távolmaradók aránya",
    regio_megye_join.regio_id AS "régió kód",
    regio_reszvetel.regio_name AS "régió név",
    (
        SELECT tavolmaradok_aranya FROM megye_reszvetel
        JOIN regio_megye_join rmj ON megye_reszvetel.megye_id=rmj.megye_id
        WHERE rmj.regio_id=regio_megye_join.regio_id
        ORDER BY tavolmaradok_aranya DESC
        LIMIT 1
    ) AS "távolmaradók arányának a maximuma a régióban"
FROM megye_reszvetel
JOIN regio_megye_join ON regio_megye_join.megye_id=megye_reszvetel.megye_id
JOIN regio_reszvetel ON regio_megye_join.regio_id=regio_reszvetel.regio_id
ORDER BY megye_reszvetel.tavolmaradok_aranya;