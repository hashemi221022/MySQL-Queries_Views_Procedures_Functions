USE marketing;
DROP PROCEDURE IF EXISTS get_order_of_customer;

DELIMITER $$

CREATE PROCEDURE get_order_of_customer()
BEGIN
	SELECT
		*
	FROM
		orders
	WHERE customer_id = 12;
END $$

DELIMITER ;