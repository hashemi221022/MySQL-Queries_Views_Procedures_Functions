USE marketing;

DROP PROCEDURE IF EXISTS get_customer_id_orders_with_seller_level;
DELIMITER $$
CREATE PROCEDURE get_customer_id_orders_with_seller_level(
	customer_id INT,
    seller_level_name VARCHAR(50)
)
BEGIN
	SELECT
		o.order_id,
		o.customer_id,
        o.seller_id,
        sl.name
	FROM orders o
    JOIN sellers s USING(seller_id)
    JOIN seller_levels sl ON s.level = sl.seller_level_id
    WHERE sl.name = IFNULL(seller_level_name, sl.name)
		AND o.customer_id = IFNULL(customer_id, o.customer_id);
END $$
DELIMITER ;