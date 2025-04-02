DROP PROCEDURE IF EXISTS customer_payment_type;

DELIMITER $$

CREATE PROCEDURE customer_payment_type(
	payment_type_id INT
)
BEGIN
	SELECT *
    FROM payments p
    WHERE p.payment_type_id = payment_type_id;
END $$

DELIMITER ;
