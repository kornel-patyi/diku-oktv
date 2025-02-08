WITH csapat1 AS (
    SELECT `mérkőzések`.`Csapat 2` AS ellenfel, COUNT(*) AS darab
    FROM `mérkőzések`
    WHERE `mérkőzések`.`Csapat 1` = "CROATIA"
    GROUP BY `mérkőzések`.`Csapat 2`
),
csapat2 AS(
    SELECT `mérkőzések`.`Csapat 1` AS ellenfel, COUNT(*) AS darab
    FROM `mérkőzések`
    WHERE `mérkőzések`.`Csapat 2` = "CROATIA"
    GROUP BY `mérkőzések`.`Csapat 1`
),
egyedi AS (
    SELECT ellenfel FROM csapat1
    UNION
    SELECT ellenfel FROM csapat2
)
SELECT egyedi.ellenfel, csapat1.darab, csapat2.darab FROM egyedi
LEFT JOIN csapat1 ON csapat1.ellenfel = egyedi.ellenfel
LEFT JOIN csapat2 ON csapat2.ellenfel = egyedi.ellenfel