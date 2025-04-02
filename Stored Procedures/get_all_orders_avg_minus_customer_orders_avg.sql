USE marketing;
DROP PROCEDURE IF EXISTS get_all_orders_avg_minus_customer_orders_avg;

DELIMITER $$

CREATE PROCEDURE get_all_orders_avg_minus_customer_orders_avg(
	customer_id INT
)
	
 BEGIN 
 
	DECLARE total_avrege_of_all_order INT DEFAULT 0;
    DECLARE avrege_of_each_customer INT DEFAULT 0;
    DECLARE diff_of_tatal_order_avrge_and_each_custmer_avrege INT;
    SELECT 
        SUM(quantity * unit_price) / COUNT(DISTINCT order_id)
	INTO total_avrege_of_all_order
	FROM order_items oi
    JOIN orders USING (order_id);

	SELECT 
        SUM(quantity * unit_price) / COUNT(DISTINCT order_id)
	INTO avrege_of_each_customer 
	FROM order_items
	JOIN orders o USING (order_id)
    WHERE o.customer_id = IFNULL(customer_id, o.customer_id);
    
    SET diff_of_tatal_order_avrge_and_each_custmer_avrege = total_avrege_of_all_order - avrege_of_each_customer;
	SELECT diff_of_tatal_order_avrge_and_each_custmer_avrege; 
END $$
DELIMITER ;

