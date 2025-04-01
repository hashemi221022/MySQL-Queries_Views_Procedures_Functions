-- question 11
-- What are some products that have sold less than 30 units so far?
SELECT
	product_id,
    name,
    SUM(quantity) AS sumation_number_of_selled_product
FROM 
	products
LEFT JOIN order_items
	USING (product_id)
GROUP BY product_id
HAVING sumation_number_of_selled_product < 30;