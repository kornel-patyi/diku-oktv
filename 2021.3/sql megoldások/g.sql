CREATE TEMPORARY TABLE ermek_helyezes
SELECT
    eremtablazat.arany AS ermek_szama,
    RANK() OVER(ORDER BY eremtablazat.arany DESC, eremtablazat.ezust DESC, eremtablazat.bronz DESC) AS helyezes
FROM `eremtablazat`;

SELECT 
	(
        SELECT SUM(ermek_szama) FROM ermek_helyezes
        WHERE helyezes <= 3
    ) - (
        SELECT SUM(ermek_szama) FROM ermek_helyezes
        WHERE helyezes > 3
    ) AS kulonbseg
;