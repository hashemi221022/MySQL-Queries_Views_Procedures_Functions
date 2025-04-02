USE marketing;

DROP PROCEDURE IF EXISTS get_order_of_customer_with_payment_type;

DELIMITER $$

CREATE PROCEDURE get_order_of_customer_with_payment_type(
	customer_id INT,
    payment_type VARCHAR(10)
)
BEGIN
	SELECT 
		o.order_id,
        o.customer_id,
        o.date_of_creation,
        pt.type
    FROM orders o
    JOIN payments p USING (order_id)
    JOIN payment_types pt USING (payment_type_id)
    WHERE o.customer_id = IFNULL(customer_id, o.customer_id) 
		AND pt.type = IFNULL(payment_type, pt.type);
END $$
DELIMITER ;