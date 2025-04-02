CREATE FUNCTION get_total_orders_for_customer_id (
 customer_id INT
)
RETURNS INTEGER
READS SQL DATA
BEGIN
	DECLARE customer_total_orders INT DEFAULT 0;
	SELECT 
		SUM(quantity * unit_price) AS total_seles
	INTO customer_total_orders
	FROM marketing.order_items
	JOIN orders o USING(order_id)
    WHERE o.customer_id = customer_id;
	RETURN customer_total_orders;
END
