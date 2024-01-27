/*Following query calculates the incremental sold quantity(ISU%)
 for each category during the Diwali campaign.*/

SELECT category, SUM(after_sales)/SUM(before_sales) *100 AS ISQ
FROM dim_products
JOIN fact_events
ON dim_products.product_code = fact_events.product_code
WHERE campaign_id = 'CAMP_DIW_01'
GROUP BY category
ORDER BY ISQ DESC;