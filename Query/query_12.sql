-- question 12 
-- There are orders that are worth more than 10 million Tomans in total. How many of the sellers who placed these orders were from each level of seller? (Hint: In the Seller table, you can see that each seller has a specific level or level.)
WITH total_table AS (
	SELECT *
	FROM (        
		SELECT *
		FROM (
			SELECT *
			FROM (
				SELECT
				order_id,
				SUM(quantity * unit_price) AS total_order_price
				FROM
					order_items
				GROUP BY order_id
				HAVING total_order_price > 10000000
			) AS table1
			JOIN orders
				USING (order_id)
		) AS table2
		JOIN  sellers
			USING(seller_id)
	) AS table3
	JOIN seller_levels sl
		ON table3.level = sl.seller_level_id
)

SELECT 
	name,
    COUNT(name) AS number_of_level_of_sellers
FROM total_table
GROUP BY name;