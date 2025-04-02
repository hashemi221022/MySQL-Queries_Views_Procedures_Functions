CREATE FUNCTION get_customer_informations (
customer_id INT 
)
RETURNS VARCHAR(50)
READS SQL DATA
BEGIN
	DECLARE customer_informations VARCHAR(50);
	SELECT CONCAT(
    c.first_name,
    " ",
    c.last_name,
    " ",
    c.phone
	)	
    INTO customer_informations
    FROM customers c
    WHERE c.customer_id = customer_id;

RETURN customer_informations;
ENDselect marketing.get_customer_informations(1);
