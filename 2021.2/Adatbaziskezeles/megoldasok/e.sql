WITH evek AS (
    SELECT `eredmenyek`.`Olimpia` FROM jatekosok
    JOIN eredmenyek ON `jatekosok`.`Játékos azonosító`=`eredmenyek`.`Játékos azonosító`
    WHERE `jatekosok`.`Nem`="nő"
    EXCEPT
    SELECT `eredmenyek`.`Olimpia` FROM jatekosok
    JOIN eredmenyek ON `jatekosok`.`Játékos azonosító`=`eredmenyek`.`Játékos azonosító`
    WHERE `jatekosok`.`Nem`="férfi"
)
SELECT
    `olimpiak`.`Sorszám` AS "Sorszám",
    `olimpiak`.`Év` AS "Év",
    `olimpiak`.`Város` AS "Város"
FROM evek
JOIN olimpiak ON `olimpiak`.`Év`=evek.Olimpia;