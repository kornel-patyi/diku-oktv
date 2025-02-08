WITH arany AS(
    SELECT `eredmenyek`.`Olimpia` AS ev, COUNT(*) AS darab FROM eredmenyek
    WHERE `eredmenyek`.`Helyezés szám`=1
    GROUP BY `eredmenyek`.`Olimpia`
), ezust AS(
    SELECT `eredmenyek`.`Olimpia` AS ev, COUNT(*) AS darab FROM eredmenyek
    WHERE `eredmenyek`.`Helyezés szám`=2
    GROUP BY `eredmenyek`.`Olimpia`
), bronz AS(
    SELECT `eredmenyek`.`Olimpia` AS ev, COUNT(*) AS darab FROM eredmenyek
    WHERE `eredmenyek`.`Helyezés szám`=3
    GROUP BY `eredmenyek`.`Olimpia`
)
SELECT
	`olimpiak`.`Év` AS "Olimpia éve",
    IF(arany.darab IS NULL, 0, arany.darab) AS "Aranyérem",
    IF(ezust.darab IS NULL, 0, ezust.darab) AS "Ezüstérem",
    IF(bronz.darab IS NULL, 0, bronz.darab) AS "Bronzérem",
    IF(arany.darab IS NULL, 0, arany.darab) + IF(ezust.darab IS NULL, 0, ezust.darab) + IF(bronz.darab IS NULL, 0, bronz.darab) AS "Összesen"
FROM olimpiak
LEFT JOIN arany ON `olimpiak`.`Év`=arany.ev
LEFT JOIN ezust ON `olimpiak`.`Év`=ezust.ev
LEFT JOIN bronz ON `olimpiak`.`Év`=bronz.ev
WHERE NOT (arany.darab IS NULL AND ezust.darab IS NULL AND bronz.darab IS NULL);