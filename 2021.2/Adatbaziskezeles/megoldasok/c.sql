SELECT DISTINCT `egyesuletek`.`Egyesület név` FROM eredmenyek
JOIN egyesuletek ON `eredmenyek`.`Egyesület azonosító`=`egyesuletek`.`Egyesület azonosító`
WHERE eredmenyek.`Helyezés szám` = 1 AND `eredmenyek`.`Olimpia`=2018;