#Which are the different promo types and their count.

SELECT promo_type, COUNT(event_id) AS EventNo
FROM fact_events
GROUP BY promo_type
ORDER BY EventNo DESC;