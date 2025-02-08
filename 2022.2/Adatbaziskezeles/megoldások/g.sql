-- Első (eredeti) megoldás
CREATE TEMPORARY TABLE csapat1 
SELECT `mérkőzések`.`Csapat 2` AS ellenfel, COUNT(*) AS darab
FROM `mérkőzések`
WHERE `mérkőzések`.`Csapat 1` = "CROATIA"
GROUP BY `mérkőzések`.`Csapat 2`;

CREATE TEMPORARY TABLE csapat2 
SELECT `mérkőzések`.`Csapat 1` AS ellenfel, COUNT(*) AS darab
FROM `mérkőzések`
WHERE `mérkőzések`.`Csapat 2` = "CROATIA"
GROUP BY `mérkőzések`.`Csapat 1`;

CREATE TEMPORARY TABLE mindketto
SELECT ellenfel FROM csapat1
INTERSECT
SELECT ellenfel FROM csapat2;

CREATE TEMPORARY TABLE csak1
SELECT ellenfel FROM csapat1
EXCEPT
SELECT ellenfel FROM csapat2;

CREATE TEMPORARY TABLE csak2
SELECT ellenfel FROM csapat2
EXCEPT
SELECT ellenfel FROM csapat1;

SELECT csak1.ellenfel AS ellenfel, csapat1.darab AS darab FROM csak1
JOIN csapat1 ON csak1.ellenfel=csapat1.ellenfel
UNION
SELECT csak2.ellenfel AS ellenfel, csapat2.darab AS darab FROM csak2
JOIN csapat2 ON csak2.ellenfel=csapat2.ellenfel
UNION
SELECT mindketto.ellenfel AS ellenfel, csapat1.darab + csapat2.darab FROM mindketto
JOIN csapat1 ON mindketto.ellenfel=csapat1.ellenfel
JOIN csapat2 ON mindketto.ellenfel=csapat2.ellenfel;

-- Második megoldás (UNION ALL)
WITH csapat1 AS (
    SELECT `mérkőzések`.`Csapat 2` AS ellenfel
    FROM `mérkőzések`
    WHERE `mérkőzések`.`Csapat 1` = "CROATIA"
), csapat2 AS (
    SELECT `mérkőzések`.`Csapat 1` AS ellenfel
    FROM `mérkőzések`
    WHERE `mérkőzések`.`Csapat 2` = "CROATIA"
), mindketto AS (
    SELECT * FROM csapat1
    UNION ALL
    SELECT * FROM csapat2
)
SELECT
	ellenfel AS "Csapatnév",
    COUNT(*) AS "Mérkőzések száma"
FROM mindketto
GROUP BY ellenfel;