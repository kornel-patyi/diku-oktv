CREATE TEMPORARY TABLE dal_mufaj_szam
SELECT dalok.dal_azon, dalok.hely_azon, COUNT(dal_mufaj.mufaj_azon) AS mf_num FROM dalok
JOIN dal_mufaj USING(dal_azon)
GROUP BY dalok.dal_azon;

CREATE TEMPORARY TABLE mocskos_kurva_anyád
SELECT
    dal1.dal_azon AS dal1,
    dal2.dal_azon AS dal2,
    COUNT(*) AS kozos,
    dal1.mf_num + dal2.mf_num AS osszes_mf
FROM dal_mufaj_szam dal1
JOIN dal_mufaj_szam dal2 USING(hely_azon)
JOIN dal_mufaj dal1_mf ON dal1.dal_azon=dal1_mf.dal_azon
JOIN dal_mufaj dal2_mf ON dal2.dal_azon=dal2_mf.dal_azon
WHERE dal1.dal_azon < dal2.dal_azon AND dal1_mf.mufaj_azon=dal2_mf.mufaj_azon
GROUP BY dal1.dal_azon, dal2.dal_azon;

WITH dolog AS (
    SELECT * FROM mocskos_kurva_anyád
    WHERE (osszes_mf - kozos * 2) >= 3
)
SELECT COUNT(*) AS "megoldásod te fasz"
FROM dolog






















CREATE TEMPORARY TABLE dal_mufaj_szam
SELECT dalok.dal_azon, dalok.hely_azon, COUNT(dal_mufaj.mufaj_azon) AS mf_num FROM dalok
JOIN dal_mufaj USING(dal_azon)
GROUP BY dalok.dal_azon;

CREATE TEMPORARY TABLE dal_3mf
SELECT * FROM dal_mufaj_szam
WHERE mf_num = 3;

CREATE TEMPORARY TABLE dal_4mf
SELECT * FROM dal_mufaj_szam
WHERE mf_num = 4;

(
    SELECT
        dal1.dal_azon AS dal_azon1,
        dal2.dal_azon AS dal_azon2
    FROM dal_3mf dal1
    JOIN dal_3mf dal2 USING(hely_azon)
    WHERE dal1.dal_azon < dal2.dal_azon

    EXCEPT

    SELECT
        dal1.dal_azon AS dal_azon1,
        dal2.dal_azon AS dal_azon2
    FROM dal_3mf dal1
    JOIN dal_3mf dal2 USING(hely_azon)
    JOIN dal_mufaj dal1_mf ON dal1.dal_azon=dal1_mf.dal_azon
    JOIN dal_mufaj dal2_mf ON dal2.dal_azon=dal2_mf.dal_azon
    WHERE dal1.dal_azon < dal2.dal_azon AND dal1_mf.mufaj_azon=dal2_mf.mufaj_azon
    GROUP BY dal1.dal_azon, dal2.dal_azon
    HAVING COUNT(*) > 1
)
UNION
(
    SELECT
        dal1.dal_azon AS dal_azon1,
        dal2.dal_azon AS dal_azon2
    FROM dal_4mf dal1
    JOIN dal_4mf dal2 USING(hely_azon)
    JOIN dal_mufaj dal1_mf ON dal1.dal_azon=dal1_mf.dal_azon
    JOIN dal_mufaj dal2_mf ON dal2.dal_azon=dal2_mf.dal_azon
    WHERE dal1.dal_azon < dal2.dal_azon

    EXCEPT

    SELECT
        dal1.dal_azon AS dal_azon1,
        dal2.dal_azon AS dal_azon2
    FROM dal_4mf dal1
    JOIN dal_4mf dal2 USING(hely_azon)
    JOIN dal_mufaj dal1_mf ON dal1.dal_azon=dal1_mf.dal_azon
    JOIN dal_mufaj dal2_mf ON dal2.dal_azon=dal2_mf.dal_azon
    WHERE dal1.dal_azon < dal2.dal_azon AND dal1_mf.mufaj_azon=dal2_mf.mufaj_azon
    GROUP BY dal1.dal_azon, dal2.dal_azon
    HAVING COUNT(*) > 2
)
UNION
(
    SELECT
        dal1.dal_azon AS dal_azon1,
        dal2.dal_azon AS dal_azon2
    FROM dal_3mf dal1
    JOIN dal_4mf dal2 USING(hely_azon)
    JOIN dal_mufaj dal1_mf ON dal1.dal_azon=dal1_mf.dal_azon
    JOIN dal_mufaj dal2_mf ON dal2.dal_azon=dal2_mf.dal_azon
    WHERE dal1.dal_azon < dal2.dal_azon

    EXCEPT

    SELECT
        dal1.dal_azon AS dal_azon1,
        dal2.dal_azon AS dal_azon2
    FROM dal_3mf dal1
    JOIN dal_4mf dal2 USING(hely_azon)
    JOIN dal_mufaj dal1_mf ON dal1.dal_azon=dal1_mf.dal_azon
    JOIN dal_mufaj dal2_mf ON dal2.dal_azon=dal2_mf.dal_azon
    WHERE dal1.dal_azon < dal2.dal_azon AND dal1_mf.mufaj_azon=dal2_mf.mufaj_azon
    GROUP BY dal1.dal_azon, dal2.dal_azon
    HAVING COUNT(*) > 2
)