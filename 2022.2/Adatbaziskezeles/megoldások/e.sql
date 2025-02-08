-- Első megoldás
WITH atlagok AS (
    SELECT 
        `játékosok`.`Csapat` AS csapat,
        ROUND(AVG(2023-YEAR(`játékosok`.`Születési dátum`))) AS atlag
    FROM `játékosok`
    GROUP BY `játékosok`.`Csapat`
)
SELECT 
	`játékosok`.`Név` AS "Játékos",
    (2023-YEAR(`játékosok`.`Születési dátum`)) AS "Kor",
    `játékosok`.`Csapat` AS "Csapat",
    atlagok.atlag AS "Átlagos kor"
FROM atlagok
JOIN `játékosok` ON `játékosok`.`Csapat`=atlagok.csapat
WHERE (2023-YEAR(`játékosok`.`Születési dátum`)) >= atlag + 11;