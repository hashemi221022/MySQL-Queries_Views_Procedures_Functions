 -- question 15
 -- Find products that are priced higher than at least one product in the paper category.
 	SELECT *
    FROM products
    WHERE unit_price > ANY (
        SELECT 
			unit_price
		FROM 
			products
		WHERE 
			category_id IN (
				 SELECT category_id
				 FROM categories
				 WHERE name LIKE 'کاغذ'
	)
);