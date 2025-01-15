SELECT orszagok.Ország FROM orszagok
JOIN gyarak ON orszagok.Ország=gyarak.Ország
GROUP BY orszagok.Ország
ORDER BY SUM(gyarak.Kapacitás) / orszagok.Terület
LIMIT 1;