CREATE FUNCTION get_seller_informations (
seller_id INT 
)
RETURNS VARCHAR(50)
READS SQL DATA
BEGIN
	DECLARE seller_informations VARCHAR(50);
	SELECT CONCAT(
    s.first_name,
    " ",
    s.last_name,
    " ",
    s.phone
	)	
    INTO seller_informations
    FROM sellers s
    WHERE s.seller_id = seller_id;

RETURN seller_informations;
END