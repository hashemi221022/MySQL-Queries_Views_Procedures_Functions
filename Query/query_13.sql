-- question 13_1
    -- First and last names of people who purchased product x (once with join and once with subquery)
    SELECT 
		c.first_name,
        c.last_name,
        p.name
    FROM customers c
    JOIN orders o
    USING (customer_id)
    JOIN order_items oi
    USING (order_id)
    JOIN products p
    USING (product_id);
    
    
    -- question 13_2
SELECT 
*

FROM customers c
WHERE customer_id IN (
	SELECT customer_id
	FROM orders
	WHERE order_id IN (
		SELECT order_id
		FROM order_items 
		WHERE product_id IN (
			SELECT 
				product_id
			FROM order_items
		)
	)
);