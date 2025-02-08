SELECT
	`mérkőzések`.`Csapat 1`,
    `mérkőzések`.`Csapat 2`,
    j1.Név AS "Játékos (csapat 1)",
    j2.Név AS "Játékos (csapat 2)"
FROM `mérkőzések`
JOIN `játékosok` j1 ON j1.`Csapat`=`mérkőzések`.`Csapat 1`
JOIN `játékosok` j2 ON j2.`Csapat`=`mérkőzések`.`Csapat 2`
WHERE j1.`Születési dátum`=j2.`Születési dátum`;