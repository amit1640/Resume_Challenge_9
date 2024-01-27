SELECT COUNT(*)
FROM (
    SELECT event_id, SUM(after_sales) / SUM(before_sales) * 100 AS ISQ
    FROM fact_events
    GROUP BY event_id
) AS subquery
WHERE ISQ < 100
ORDER BY ISQ;

SELECT COUNT(*)
FROM (
    SELECT event_id, SUM(after_sales) / SUM(before_sales) * 100 AS ISQ
    FROM fact_events
    GROUP BY event_id
) AS subquery
WHERE ISQ >= 100
ORDER BY ISQ;
