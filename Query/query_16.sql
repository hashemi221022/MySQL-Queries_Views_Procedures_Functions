-- question 16
 -- Find customers who placed one of the top 10 orders
 -- way 1
 WITH last_table AS (      
	  SELECT
        t2.order_id,
		t2.product_id,
		t2.total_price,
		o.customer_id
	  FROM ( 
		  SELECT 
			t1.product_id,
			t1.total_price,
			oi.order_id
		  FROM (
			SELECT 
			product_id,
			SUM(quantity * unit_price) AS total_price
		   FROM order_items
		   GROUP BY product_id
		   ORDER BY total_price DESC
		  ) AS t1
		  JOIN order_items oi
				ON t1.product_id = oi.product_id
	) AS t2
	  JOIN orders o
	   ON t2.order_id = o.order_id
)

SELECT DISTINCT
    c.first_name,
    c.last_name
FROM last_table lt
JOIN customers c
	USING (customer_id);

  -- way 2
 SELECT 	
	first_name,
	last_name
FROM customers
WHERE customer_id IN (
	 SELECT customer_id
		 FROM orders
		 WHERE order_id IN (
		 SELECT order_id
		 FROM order_items
		 WHERE product_id IN (
			 SELECT product_id
			 FROM ( 
				SELECT 
				product_id,
				SUM(quantity * unit_price) AS total_price
				FROM order_items
				GROUP BY product_id
				ORDER BY total_price DESC
				LIMIT 10
			) AS t1
		 )
	 )
);