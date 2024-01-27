SELECT f.store_id,d.city,SUM(f.before_sales) / NULLIF(SUM(f.after_sales), 0) * AVG(f.base_price) AS IR
FROM dim_stores as d
JOIN fact_events as f
ON d.store_id = f.store_id
GROUP BY f.store_id,d.city
ORDER BY IR DESC
LIMIT 5;