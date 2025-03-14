WITH dijazasok2 AS (
    SELECT ev, kategoria_azon FROM dijazasok
    GROUP BY ev, kategoria_azon
    HAVING COUNT(*) = 3
),
tudosok AS (
    SELECT DISTINCT dijazott_azon FROM dijazasok2
    JOIN dijazasok ON dijazasok.ev=dijazasok2.ev
    WHERE dijazasok.kategoria_azon=dijazasok2.kategoria_azon
)
SELECT COUNT(*) AS "díjazottak száma"
FROM tudosok;