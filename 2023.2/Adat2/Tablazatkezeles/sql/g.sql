WITH o AS (
    SELECT gyarak.Ország AS "ország", SUM(termeles.Mennyiség) AS "termelés", COUNT(*) AS "gyárak"
    FROM gyarak
    JOIN termeles ON termeles.Ország = gyarak.Ország
    GROUP BY gyarak.Ország
)
SELECT 
	o1.ország AS ország1,
    o2.ország AS ország2,
    o1.termelés AS termeles1,
    o2.termelés AS termeles2
FROM o o1, o o2
WHERE o1.termelés >= o2.termelés * 10 AND o1.gyárak = o2.gyárak;