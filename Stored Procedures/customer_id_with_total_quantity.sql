USE marketing;
DROP PROCEDURE IF EXISTS customer_id_with_total_quantity;

DELIMITER $$
CREATE PROCEDURE customer_id_with_total_quantity(
	customer_id INT
)
BEGIN
	SELECT
		o.customer_id,
        COUNT(DISTINCT oi.order_id) AS total_orders,
		SUM(oi.quantity) AS total_quantities
	FROM order_items oi
	JOIN orders o USING(order_id)
	GROUP by o.customer_id
	HAVING o.customer_id = IFNULL(customer_id, o.customer_id);
END $$
DELIMITER ;