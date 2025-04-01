-- question 4
-- all orders where the total order amount is greater than the average of all orders
SELECT *
FROM order_items
WHERE (SELECT SUM(quantity * unit_price)
	FROM order_items
	) > (SELECT AVG(unit_price) FROM order_items);