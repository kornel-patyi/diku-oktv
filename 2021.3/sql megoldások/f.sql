WITH eltelt_evek AS (
    SELECT 
        rendezo_azon,
        LEAD(ev) OVER(PARTITION BY rendezo_azon ORDER BY ev) - ev AS ev_kozotte
    FROM `bajnoksag`
    ORDER BY rendezo_azon, ev
)
SELECT
	kodok.orszag,
	MIN(ev_kozotte) AS "legkevesebb év"
FROM eltelt_evek
JOIN kodok ON eltelt_evek.rendezo_azon = kodok.orszag_azon
WHERE ev_kozotte IS NOT NULL
GROUP BY eltelt_evek.rendezo_azon
ORDER BY `legkevesebb év`;



--- 2. megoldás
SELECT
	kodok.orszag,
	MIN(b2.ev-b1.ev) AS "eltelt evek"
FROM bajnoksag b1
JOIN bajnoksag b2 ON b1.rendezo_azon=b2.rendezo_azon
JOIN kodok ON b1.rendezo_azon=kodok.orszag_azon
WHERE b2.ev > b1.ev
GROUP BY b1.rendezo_azon
ORDER BY `eltelt evek`;