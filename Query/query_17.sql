-- question 17
 -- Show products that are priced higher than the average for products in their category.
 WITH table1 AS (
 SELECT 
	c.name AS category_name,
    AVG (unit_price) AS avrage_price
 FROM products p
 JOIN categories c
	USING (category_id)
GROUP BY c.name
)

 SELECT 
	p.category_id,
    p.product_id,
    p.name,
    p.unit_price,
	table1.category_name,
    table1.avrage_price
 FROM products p
 JOIN categories c
	USING (category_id)
JOIN table1
	ON c.name = table1.category_name
WHERE p.unit_price > table1.avrage_price;