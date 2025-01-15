SELECT `gyarak`.`Ország` AS "Ország", `gyarak`.`Helyszín` AS "Helyszín" FROM gyarak
GROUP BY `gyarak`.`Helyszín`
HAVING COUNT(*) > 1 AND SUM(`gyarak`.`Kapacitás`) > 1800;