WITH adatok AS (
	WITH reszgyujtesek AS (
        SELECT helyszinek.resze AS helyid, COUNT(*) AS num
        FROM helyszinek
        JOIN dalok USING(hely_azon)
        WHERE helyszinek.resze IS NOT NULL
        GROUP BY helyszinek.resze
    ),
    konkretgyujtesek AS (
        SELECT helyszinek.hely_azon AS helyid, COUNT(*) AS num
        FROM helyszinek
        JOIN dalok USING(hely_azon)
        WHERE helyszinek.resze IS NULL
        GROUP BY helyszinek.hely_azon
    )
    SELECT reszgyujtesek.helyid, reszgyujtesek.num + IF(konkretgyujtesek.num IS NULL, 0, konkretgyujtesek.num) AS num FROM reszgyujtesek
    LEFT JOIN konkretgyujtesek ON reszgyujtesek.helyid=konkretgyujtesek.helyid

    UNION

    (
        SELECT helyszinek.hely_azon AS helyid, COUNT(*) AS num
        FROM helyszinek
        JOIN dalok USING(hely_azon)
        WHERE helyszinek.resze IS NULL
        GROUP BY helyszinek.hely_azon

        EXCEPT 

        SELECT helyszinek.resze AS helyid, COUNT(*) AS num
        FROM helyszinek
        JOIN dalok USING(hely_azon)
        WHERE helyszinek.resze IS NOT NULL
        GROUP BY helyszinek.resze
    )
)
SELECT helyszinek.helyszin FROM adatok
JOIN helyszinek ON adatok.helyid = helyszinek.hely_azon
ORDER BY num DESC