SELECT
	kodok.orszag AS "ország",
	COUNT(bajnoksag.ev) AS "szervezések száma",
    eremtablazat.arany + eremtablazat.ezust + eremtablazat.bronz AS "érmek száma",
    RANK() OVER(ORDER BY eremtablazat.arany DESC, eremtablazat.ezust DESC, eremtablazat.bronz DESC) AS "helyezés"
FROM `eremtablazat`
JOIN kodok ON eremtablazat.orszag_azon=kodok.orszag_azon
LEFT JOIN bajnoksag ON eremtablazat.orszag_azon=bajnoksag.rendezo_azon
GROUP BY eremtablazat.orszag_azon
ORDER BY `szervezések száma` DESC, `helyezés`;