WITH nincs_szervezet AS (
    SELECT kategoria_azon FROM kategoria
    EXCEPT
    SELECT kategoria_azon FROM dijazasok
    JOIN szervezetek USING(dijazott_azon)
)
SELECT nev AS "kategória" FROM nincs_szervezet
JOIN kategoria USING(kategoria_azon);