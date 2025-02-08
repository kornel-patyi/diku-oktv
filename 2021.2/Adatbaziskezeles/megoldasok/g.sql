SELECT DISTINCT
    `egyesuletek`.`Egyesület név`,
    `jatekosok`.`Név`,
    (
        SELECT COUNT(*) FROM eredmenyek e
        WHERE e.`Egyesület azonosító`=`egyesuletek`.`Egyesület azonosító` AND `e`.`Játékos azonosító`=`eredmenyek`.`Játékos azonosító`
    ) AS szam
FROM egyesuletek
JOIN eredmenyek ON `egyesuletek`.`Egyesület azonosító`=`eredmenyek`.`Egyesület azonosító`
JOIN jatekosok ON `eredmenyek`.`Játékos azonosító`=`jatekosok`.`Játékos azonosító`
having szam >= 3
ORDER BY `egyesuletek`.`Egyesület név`, `eredmenyek`.`Játékos azonosító`;