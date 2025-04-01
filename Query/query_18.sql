-- question 18
 -- Find sellers who have sold at least 25 products.
  -- way 1
  WITH table1 AS (
	   SELECT 
		 order_id,
		 SUM(quantity) AS total_number_purchases
	 FROM order_items
	 GROUP BY order_id
	 HAVING total_number_purchases > 25
 )
 
SELECT 
t.total_number_purchases,
s.first_name AS seller_name,
s.last_name AS seller_family,
s.phone AS seller_phone_number,
s.nationalID AS seller_ID,
c.first_name AS customer_name,
c.last_name AS customer_family,
c.phone AS customer_phone
FROM table1 t
JOIN orders
	USING(order_id)
 JOIN sellers s
  USING (seller_id)
JOIN customers c
	USING(customer_id);
    
    
-- way 2
SELECT *
FROM sellers
WHERE seller_id IN (
	SELECT seller_id
	FROM orders
	WHERE order_id IN (
		 SELECT t1.order_id
		 FROM (
			  SELECT 
				 order_id,
				 SUM(quantity) AS total_number
			 FROM order_items
			 GROUP BY order_id
			 HAVING total_number > 25
		 ) AS t1
	)
)