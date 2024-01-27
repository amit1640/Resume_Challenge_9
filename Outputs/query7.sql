#What are the counts and their price.

SELECT campaign_id, COUNT(product_code)
FROM fact_events
GROUP BY campaign_id;