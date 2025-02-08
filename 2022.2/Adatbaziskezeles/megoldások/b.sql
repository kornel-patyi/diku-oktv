SELECT `Csapat 1`, `Csapat 2`, `Gólok száma (csapat 1)`, `Gólok száma (csapat 2)`, `Kategória`
FROM `mérkőzések`
WHERE 
  (`mérkőzések`.`Kategória` LIKE "GROUP %")
  AND (abs(`mérkőzések`.`Gólok száma (csapat 1)` - `mérkőzések`.`Gólok száma (csapat 2)`) >= 3)
ORDER BY `Kategória`;