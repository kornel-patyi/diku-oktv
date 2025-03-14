WITH europaiak AS (
    SELECT DISTINCT dijazott_azon, kategoria_azon, szemelyek.nev
    FROM dijazasok
    JOIN szemelyek USING(dijazott_azon)
    WHERE szuletesi_hely = "Európa"
)
SELECT
	COUNT(*) AS "különböző kategóriák száma",
    nev AS "díjazott neve"
FROM europaiak
GROUP BY dijazott_azon
HAVING COUNT(*) > 1;