 -- question 14
     -- What are the products that cost more than all the products in the paper category?
	SELECT *
    FROM products
    WHERE unit_price > (
        SELECT 
			MAX(unit_price) AS maximum_price
		FROM 
			products
		WHERE 
			category_id IN (
				 SELECT category_id
				 FROM categories
				 WHERE name LIKE 'کاغذ'
	)
);