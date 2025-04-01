-- question 6
-- The share of products that have the most sales is in six categories.
-- products
WITH table1 AS (
		SELECT 
			product_id,
			sum(quantity * unit_price) AS sumation_price
		FROM order_items
		GROUP BY product_id
		ORDER BY sumation_price DESC
        LIMIT 3
)  
      
SELECT *
FROM products
WHERE category_id IN (
	SELECT category_id
	FROM products
	WHERE product_id IN (
		SELECT product_id
        FROM table1
    )
);

  -- category
WITH table1 AS (
		SELECT 
			product_id,
			sum(quantity * unit_price) AS sumation_price
		FROM order_items
		GROUP BY product_id
		ORDER BY sumation_price DESC
        LIMIT 3
)

SELECT *
FROM categories
WHERE category_id IN (
	SELECT category_id
	FROM products
	WHERE product_id IN (
		SELECT product_id
        FROM table1
    )
);