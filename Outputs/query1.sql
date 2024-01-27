USE retail_events_db;

/*List of products with price>500 and featured in promo type of 'BOGOF'.
*/
SELECT product_name, COUNT(product_name)
FROM dim_products
JOIN fact_events
ON dim_products.product_code = fact_events.product_code
WHERE base_price > 500 AND promo_type LIKE 'BOGOF'
GROUP BY product_name;