-- question 8
-- Display products in order of sales amount.
SELECT
	oi.product_id,
    p.name,
    SUM(oi.quantity * oi.unit_price) AS sumation_of_prices
FROM 
	order_items oi
JOIN products p
	USING (product_id)
GROUP BY oi.product_id
ORDER BY oi.product_id DESC;