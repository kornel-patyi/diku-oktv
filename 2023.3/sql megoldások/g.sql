CREATE TEMPORARY TABLE hely_youtube_join
WITH hely_youtube AS (
    SELECT DISTINCT hely_azon, youtube_id FROM dalok
    JOIN youtube USING(felvetel_azon)
    WHERE hely_azon IS NOT NULL
)
SELECT * FROM hely_youtube
GROUP BY youtube_id
HAVING COUNT(*)=1;

SELECT dalok.cim, helyszinek.helyszin FROM dalok
JOIN youtube USING(felvetel_azon)
JOIN hely_youtube_join ON youtube.youtube_id=hely_youtube_join.youtube_id
JOIN helyszinek ON hely_youtube_join.hely_azon=helyszinek.hely_azon
WHERE dalok.hely_azon IS NULL;