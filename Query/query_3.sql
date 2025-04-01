-- question 3
-- For every order, display the total order amount on each line (the total order amount includes the sum of all order items. Each order item is equal to the number of times the price of each product purchased)
SELECT 
	order_id,
    product_id,
    quantity,
    unit_price,
	(SELECT SUM(quantity * unit_price)
	FROM order_items
	) AS sumation_price
FROM order_items;