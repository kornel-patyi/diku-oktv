WITH osszes AS (
    SELECT mufajok.mufaj_azon, COUNT(*) AS osszes_darab
    FROM mufajok
    JOIN dal_mufaj USING(mufaj_azon)
    JOIN dalok USING(dal_azon)
    GROUP BY mufajok.mufaj_azon
), 
tancolt AS (
    SELECT mufajok.mufaj_azon, COUNT(*) AS tancolt_darab
    FROM mufajok
    JOIN dal_mufaj USING(mufaj_azon)
    JOIN dalok USING(dal_azon)
    WHERE dalok.tanc
    GROUP BY mufajok.mufaj_azon
)
SELECT mufajok.nev FROM osszes
JOIN tancolt USING(mufaj_azon)
JOIN mufajok USING(mufaj_azon)
WHERE tancolt.tancolt_darab / osszes.osszes_darab > 0.8;


--
-- SUPERIOR MEGOLDÁS
--
SELECT mufajok.nev FROM mufajok
JOIN dal_mufaj USING(mufaj_azon)
JOIN dalok USING(dal_azon)
GROUP BY mufajok.mufaj_azon
HAVING SUM(dalok.tanc) / COUNT(*) > .8