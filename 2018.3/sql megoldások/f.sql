SELECT
	ev, cim, megjegyzes,
    IF(LAG(ev, 1) OVER(ORDER BY ev) IS NULL, NULL, ev - LAG(ev, 1) OVER(ORDER BY ev)) AS "hány év telt el"
FROM kiallitas
WHERE hivatalos = "BIE"
ORDER BY ev;