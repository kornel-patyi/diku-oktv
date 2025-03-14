-- egy hiányzik
INSERT INTO kategoria(nev)
SELECT DISTINCT kategoria FROM osszes_import
ORDER BY kategoria;

-- 
INSERT INTO szemelyek
SELECT DISTINCT
	dijazott_azon,
    szemely_nev AS nev,
    szemely_teljes_nev AS teljes_nev,
    IF(szuletesi_ev = "", NULL, szuletesi_ev) AS szuletesi_ev,
    IF(szuletesi_datum = "", NULL, szuletesi_datum) AS szuletesi_datum,
    nem
FROM osszes_import
WHERE szemely_nev !=""
ORDER BY dijazott_azon;


-- 
INSERT INTO szervezetek
SELECT DISTINCT
	dijazott_azon,
    szervezet_nev,
    IF(rovidites = "", NULL, rovidites) AS rovidites,
    IF(alapitas_eve = "", NULL, alapitas_eve) AS alapitas_eve
FROM `osszes_import`
WHERE szervezet_nev <> ""


--
INSERT INTO hovatartozas_intezmenyek(nev)
WITH dolgok AS (
    SELECT DISTINCT
        hovatartozas_1 AS nev
    FROM `osszes_import` 
    WHERE hovatartozas_1 <> ""

    UNION

    SELECT DISTINCT
        hovatartozas_2 AS nev
    FROM `osszes_import` 
    WHERE hovatartozas_2 <> ""

    UNION

    SELECT DISTINCT
        hovatartozas_3 AS nev
    FROM `osszes_import` 
    WHERE hovatartozas_3 <> ""

    UNION

    SELECT DISTINCT
        hovatartozas_4 AS nev
    FROM `osszes_import` 
    WHERE hovatartozas_4 <> ""
)
SELECT nev FROM dolgok


--
INSERT INTO dijazasok2(dijazott_azon, kategoria_azon, ev, indoklas, hvt1, hvt2, hvt3, hvt4)
SELECT
	dijazott_azon,
    kategoria.kategoria_id AS kategoria_azon,
    ev,
    indoklas,
    hvti1.hovatartozas_azon AS hvt1,
    hvti2.hovatartozas_azon AS hvt2,
    hvti3.hovatartozas_azon AS hvt3,
    hvti4.hovatartozas_azon AS hvt4
FROM `osszes_import`
JOIN kategoria ON osszes_import.kategoria=kategoria.nev
LEFT JOIN hovatartozas_intezmenyek AS hvti1 ON osszes_import.hovatartozas_1=hvti1.nev
LEFT JOIN hovatartozas_intezmenyek AS hvti2 ON osszes_import.hovatartozas_2=hvti2.nev
LEFT JOIN hovatartozas_intezmenyek AS hvti3 ON osszes_import.hovatartozas_3=hvti3.nev
LEFT JOIN hovatartozas_intezmenyek AS hvti4 ON osszes_import.hovatartozas_4=hvti4.nev


--
INSERT INTO dijazas_hovatartozas
WITH anyamkinyja AS (
    SELECT 
        dijazas_azon,
        hvt1 AS hovatartozas_azon
    FROM `dijazasok` 
    WHERE hvt1 IS NOT NULL

    UNION

    SELECT 
        dijazas_azon,
        hvt2 AS hovatartozas_azon
    FROM `dijazasok` 
    WHERE hvt2 IS NOT NULL

    UNION

    SELECT 
        dijazas_azon,
        hvt3 AS hovatartozas_azon
    FROM `dijazasok` 
    WHERE hvt3 IS NOT NULL

    UNION

    SELECT 
        dijazas_azon,
        hvt4 AS hovatartozas_azon
    FROM `dijazasok` 
    WHERE hvt4 IS NOT NULL
)
SELECT dijazas_azon, hovatartozas_azon
FROM anyamkinyja


--