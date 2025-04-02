USE marketing;
DROP PROCEDURE IF EXISTS payment_type;

DELIMITER $$
CREATE PROCEDURE payment_tape(
	type VARCHAR(10)
)
BEGIN
	SELECT *
    FROM payments
    JOIN payment_types pt
		USING(payment_type_id)
	WHERE pt.type = type;
END $$
DELIMITER ;