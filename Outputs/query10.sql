#Promo type which increased sales
SELECT promo_type,SUM(after_sales)/SUM(before_sales) * 100 AS GROWTH
FROM fact_events
GROUP BY promo_type
ORDER BY GROWTH DESC;