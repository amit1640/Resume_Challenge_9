# Name of the products with highest base price 
SELECT d.product_name,f.product_code,f.base_price
FROM fact_events as f
JOIN dim_products as d
ON f.product_code = f.product_code
GROUP BY d.product_name,f.product_code,f.base_price
ORDER BY f.base_price DESC
LIMIT 5;