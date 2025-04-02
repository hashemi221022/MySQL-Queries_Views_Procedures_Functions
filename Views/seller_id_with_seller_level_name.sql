USE marketing;
CREATE OR REPLACE VIEW seller_id_with_seller_level_name AS
	SELECT 
		s.seller_id,
		sl.name
	FROM sellers s
	JOIN seller_levels sl ON s.level = sl.seller_level_id;