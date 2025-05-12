WITH olyan_pizzak AS (
    SELECT DISTINCT rendeles_id, tetel_rend_id
    FROM extra
    WHERE feltet_id ="F52"
)
SELECT DISTINCT feltet.feltet_nev FROM olyan_pizzak
JOIN extra ON (olyan_pizzak.rendeles_id = extra.rendeles_id AND olyan_pizzak.tetel_rend_id=extra.tetel_rend_id)
JOIN feltet ON extra.feltet_id=feltet.feltet_id
WHERE extra.feltet_id <> "F52" 
ORDER BY feltet.feltet_nev;