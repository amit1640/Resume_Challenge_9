/*
Create a report featuring the Top 5 products,ranked by Incremental Revenue Percentage(IR%), across
all campaigns.alter
*/
SELECT product_name,category,SUM(before_sales) / NULLIF(SUM(after_sales), 0) * AVG(base_price) * 100 AS IR
FROM dim_products
JOIN fact_events ON fact_events.product_code = dim_products.product_code
GROUP BY product_name, category, base_price
ORDER BY IR DESC
LIMIT 5;