WITH szemelyek_p AS (
    SELECT
    	szemelyek.dijazott_azon,
        nev,
        IF(szemelyek.szuletesi_ev IS NULL, YEAR(szemelyek.szuletesi_datum), szemelyek.szuletesi_ev) AS sz_ev
    FROM szemelyek
)
SELECT 
	nev AS "díjazott neve",
    dijazasok.ev - sz_ev AS "díjazott kora"
FROM szemelyek_p
JOIN dijazasok USING(dijazott_azon)
WHERE dijazasok.ev - sz_ev < 30;