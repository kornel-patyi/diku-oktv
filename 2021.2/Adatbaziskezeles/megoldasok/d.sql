SELECT 
	`jatekosok`.`Név` AS "játékos név",
    COUNT(*) AS "részvételek száma"
FROM jatekosok
JOIN eredmenyek ON `jatekosok`.`Játékos azonosító`=`eredmenyek`.`Játékos azonosító`
JOIN versenyszam ON `versenyszam`.`Versenyszám azonosító`=`eredmenyek`.`Versenyszám azonosító`
JOIN sportagak ON `sportagak`.`Sportág azonosító`=`versenyszam`.`Sportág azonosító`
WHERE `sportagak`.`Sportág név`="bob"
GROUP BY `jatekosok`.`Játékos azonosító`
ORDER BY COUNT(*) DESC;