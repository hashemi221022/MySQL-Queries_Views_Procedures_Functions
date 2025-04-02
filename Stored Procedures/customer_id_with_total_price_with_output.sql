USE marketing;
DROP PROCEDURE IF EXISTS customer_id_with_total_price_with_output;

DELIMITER $$
CREATE PROCEDURE customer_id_with_total_price_with_output(
	customer_id INT,
    OUT total_orders INT,
    OUT total_price INT
)
BEGIN
	SELECT
        COUNT(DISTINCT oi.order_id) AS total_orders,
		SUM(oi.quantity * oi.unit_price) AS total_price
	INTO total_orders, total_price
	FROM order_items oi
	JOIN orders o USING(order_id)
	GROUP by o.customer_id
	HAVING o.customer_id = IFNULL(customer_id, o.customer_id);
END $$
DELIMITER ;