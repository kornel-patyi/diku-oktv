SELECT kodok.orszag AS "ország", ROUND((SUM(uszok.arany + uszok.ezust + uszok.bronz) / SUM(eremtablazat.arany + eremtablazat.ezust + eremtablazat.bronz))*100) AS szazalek
FROM uszok
JOIN eremtablazat ON eremtablazat.orszag_azon=uszok.szarmazas_azon
JOIN kodok ON eremtablazat.orszag_azon=kodok.orszag_azon
GROUP BY szarmazas_azon
ORDER BY szazalek DESC;