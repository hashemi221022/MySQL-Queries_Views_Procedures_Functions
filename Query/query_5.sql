-- question 5
-- a list of all the customers that your top three salespeople have sold to at least once.
SELECT 
	customer_id,
	first_name,
    last_name
FROM customers
JOIN orders
	USING(customer_id)
WHERE order_id IN (2, 33, 65);