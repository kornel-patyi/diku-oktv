WITH csoportok AS (
    SELECT ha.hangszer_azon AS a, hb.hangszer_azon AS b
    FROM hangszerek ha
    CROSS JOIN hangszerek hb
    WHERE ha.hangszer_azon < hb.hangszer_azon
    EXCEPT
    SELECT DISTINCT ad.hangszer_azon AS a, bd.hangszer_azon AS b FROM dal_hangszer ad
    JOIN dal_hangszer bd ON ad.dal_azon = bd.dal_azon
    WHERE ad.hangszer_azon < bd.hangszer_azon
)
SELECT COUNT(*) AS `hangszerpárok száma` FROM csoportok