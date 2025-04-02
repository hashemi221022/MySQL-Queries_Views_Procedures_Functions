USE marketing;
CREATE OR REPLACE VIEW customer_seller_order_information AS
	SELECT 
		o.order_id,
		o.date_of_creation,
		c.first_name AS customer_name,
		c.last_name AS customer_family,
		c.phone AS customer_phone_namber,
		c.province_id AS province,
		s.first_name AS seller_name,
		s.last_name AS seller_family,
		s.phone AS seller_phone_number,
		s.level AS seller_level
	FROM orders o
	JOIN customers c USING (customer_id)
	JOIN sellers s USING (seller_id)