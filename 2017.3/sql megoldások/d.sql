WITH extra_arak AS (
    SELECT rendeles_id, tetel_rend_id, SUM(ar*szimpla_vagy_dupla) AS extra_ar
    FROM extra
    JOIN feltet USING(feltet_id)
    GROUP BY rendeles_id, tetel_rend_id
),
tetelek_szerint AS (
    SELECT
        tetel.rendeles_id,
        (alap.ar + IF(extra_ar IS NULL, 0, extra_ar)) * (ar_szazalek / 100) * darabszam AS "összar"
    FROM tetel
    JOIN alap USING(alap_id)
    JOIN meret USING(meret_id)
    LEFT JOIN extra_arak ON 
        (extra_arak.rendeles_id=tetel.rendeles_id AND extra_arak.tetel_rend_id=tetel.tetel_rend_id)
)
SELECT
	rendeles_id AS "rendelés kódja",
    ROUND(SUM(összar)) AS "ára"
FROM tetelek_szerint
GROUP BY rendeles_id
ORDER BY rendeles_id