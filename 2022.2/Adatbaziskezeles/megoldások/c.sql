SELECT 
	`Kategória` AS "Csoport",
    SUM(`Gólok száma (csapat 1)`) + SUM(`Gólok száma (csapat 2)`) AS "Gólok száma"
FROM `mérkőzések`
WHERE `Kategória` LIKE "GROUP %"
GROUP BY `Kategória`
ORDER BY SUM(`Gólok száma (csapat 1)`) + SUM(`Gólok száma (csapat 2)`) DESC
LIMIT 1;