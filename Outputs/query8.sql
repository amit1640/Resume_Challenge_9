USE retail_events_db;

#What are different categories and their count.
SELECT category, COUNT(*)
FROM dim_products
GROUP BY category;