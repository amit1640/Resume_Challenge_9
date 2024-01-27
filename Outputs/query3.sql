/*Column Names changed to avoid the future errors.*/

ALTER TABLE fact_events
CHANGE COLUMN `quantity_sold(before_promo)`	 `before_sales` INT;

ALTER TABLE fact_events
CHANGE COLUMN `quantity_sold(after_promo)`	 `after_sales` INT;

/*Campaign Name and sales before and after the campaign*/
SELECT campaign_id, SUM(before_sales),SUM(after_sales)
FROM fact_events
GROUP BY campaign_id;