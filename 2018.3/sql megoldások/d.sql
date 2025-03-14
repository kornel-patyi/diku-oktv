CREATE TEMPORARY TABLE darabszam
SELECT COUNT(*) AS db
FROM `kiallitas`
WHERE hivatalos="BIE";

CREATE TEMPORARY TABLE elso
SELECT MIN(ev) AS ev
FROM `kiallitas`
WHERE hivatalos="BIE";

CREATE TEMPORARY TABLE utolso
SELECT MAX(ev) AS ev
FROM `kiallitas`
WHERE hivatalos="BIE";


SELECT
	(
        SELECT db FROM darabszam
	) AS "darabszám",
    (
        SELECT ev FROM elso
    ) AS "első",
    (
        SELECT ev FROM utolso
    ) AS "utolsó",
    (
        SELECT ROUND((utolso.ev - elso.ev) / db)  FROM darabszam, elso, utolso
    ) AS "követés"
;