SELECT DISTINCT alap.nev FROM tetel
JOIN alap USING(alap_id)
LEFT JOIN extra ON (tetel.rendeles_id=extra.rendeles_id AND tetel.tetel_rend_id=extra.tetel_rend_id)
WHERE extra.rendeles_id IS NULL;