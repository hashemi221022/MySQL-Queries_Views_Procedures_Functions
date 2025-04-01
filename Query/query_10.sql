-- question 10
-- What products have never been sold even once?
SELECT
	*
FROM 
	products
LEFT JOIN order_items
	USING (product_id);