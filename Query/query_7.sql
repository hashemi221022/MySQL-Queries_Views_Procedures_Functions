-- question 7
-- How many units of each product have been sold.
SELECT 
	product_id,
    name,
	SUM(quantity) AS number_selles_products
FROM products
JOIN order_items
	USING (product_id)
GROUP BY product_id;