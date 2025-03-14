WITH darabok AS (
    SELECT COUNT(*) AS darab FROM dijazasok
    JOIN dijazas_hovatartozas USING(dijazas_azon)
    GROUP BY dijazas_azon
)
SELECT ROUND(AVG(darab), 4) AS "átlag"
FROM darabok;