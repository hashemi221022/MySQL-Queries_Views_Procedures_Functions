-- question 9
-- Which category generated the majority of the store's revenue?
WITH new_table AS
(SELECT 
	t2.category_id,
	t2.name AS product_name,
	t2.total_price,
    cat.name AS classification_name
    
FROM (
	SELECT 
		ct.name,
		ct.parent,
		category_id,
		SUM(sumation_of_prices) AS total_price

	FROM ( 
		SELECT
				p.category_id,
				oi.product_id,
				p.name,
				SUM(oi.quantity * oi.unit_price) AS sumation_of_prices
			FROM 
				order_items oi
			JOIN products p
				USING (product_id)
			GROUP BY oi.product_id
		) AS t1
		JOIN categories ct
			USING(category_id)
		GROUP BY category_id
		ORDER BY total_price DESC
) AS t2
JOIN categories cat
	ON cat.category_id = t2.parent)
    
SELECT 
	classification_name,
	SUM(total_price) AS total_prices
FROM new_table
GROUP BY classification_name;