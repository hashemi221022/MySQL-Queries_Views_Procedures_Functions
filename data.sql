DROP DATABASE IF EXISTS `marketing`;
CREATE DATABASE `marketing`;
USE `marketing`;


CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `parent` int(11) NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `categories` VALUES (1,'کالای دیجیتال',NULL);
INSERT INTO `categories` VALUES (2,'ساعت هوشمند',1);
INSERT INTO `categories` VALUES (3,'هدفون',1);

INSERT INTO `categories` VALUES (4,'متفرقه',NULL);
INSERT INTO `categories` VALUES (5,'دریل برقی',4);

INSERT INTO `categories` VALUES (6,'چندراهی برق و محافظ',NULL);

INSERT INTO `categories` VALUES (7,'لوازم التحریر',NULL);
INSERT INTO `categories` VALUES (8,'کاغذ',7);

INSERT INTO `categories` VALUES (9,'مد و پوشاک',NULL);
INSERT INTO `categories` VALUES (10,'شلوار ورزشی',9);


CREATE TABLE `products` (
	`product_id` INT(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(100) NOT NULL,
	`unit_price` INT(11) NOT NULL,
	`category_id` INT(11) NOT NULL,
	PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `products` VALUES (1, 'کاغذ A5 رزپرینت کد PG14 بسته 5000 عددی', 759900, 8);
INSERT INTO `products` VALUES (2, 'هدفون بلوتوثی کیو سی وای مدل T13 ANC 2', 679000, 3);
INSERT INTO `products` VALUES (3, 'هدفون بلوتوثی کیو سی وای مدل Melobuds ANC HT05', 1475000, 3);
INSERT INTO `products` VALUES (4, 'هدست بلوتوثی کیو سی وای مدل H3', 1890000, 3);
INSERT INTO `products` VALUES (5, 'هدست مخصوص بازی کیو سی وای مدل SEP FIVE 2022 T', 756000, 3);
INSERT INTO `products` VALUES (6, 'کاغذ A4 مدل رزپرینت کد POTG27 بسته 100 عددی', 40000, 8);
INSERT INTO `products` VALUES (7, 'کاغذ A4 کپی مکس کد A4 بسته 250 عددی', 95200, 8);
INSERT INTO `products` VALUES (8, 'کاغذ رنگی A4 مستر راد مدل ابر و باد بسته 40 عددی', 54000, 8);
INSERT INTO `products` VALUES (9, 'محافظ برق هوشمند تایمردار هادرون مدل P103', 366000, 6);
INSERT INTO `products` VALUES (10, 'چندراهی برق گرین لاین مدل GLP-105D-002', 495000, 6);
INSERT INTO `products` VALUES (11, 'محافظ ولتاژ گرین لاین مدل GLP301 EVO', 464000, 6);
INSERT INTO `products` VALUES (12, 'مجموعه 10عددی دریل بتن کن اوکی مدل POWER_TOOLS', 2080000, 5);
INSERT INTO `products` VALUES (13, 'مجموعه 99 عددی دریل چکشی باس مدل BS1308', 1990000, 5);
INSERT INTO `products` VALUES (14, 'دریل بتن کن باس مدل BS26SRE', 1918000, 5);
INSERT INTO `products` VALUES (15, 'ساعت هوشمند ورنا مدل W49 Ultra', 515000, 2);
INSERT INTO `products` VALUES (16, 'ساعت هوشمند هاینو تکو مدل PSOT HOOK 9 SDFTR MINI', 3167000, 2);
INSERT INTO `products` VALUES (17, 'شلوار ورزشی مردانه نوزده نودیک مدل SH1945 NB', 499000, 10);
INSERT INTO `products` VALUES (18, 'لگینگ ورزشی مردانه کرین مدل 16054645', 862400, 10);
INSERT INTO `products` VALUES (19, 'سرهمی دوچرخه سواری مردانه مدل CR4744', 972000, 10);


CREATE TABLE `provinces` (
	`province_id` INT(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(50) NOT NULL,
	PRIMARY KEY (`province_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `provinces` VALUES (1, 'Isfahan');
INSERT INTO `provinces` VALUES (2, 'Tehran');
INSERT INTO `provinces` VALUES (3, 'Shiraz');
INSERT INTO `provinces` VALUES (4, 'Tabriz');
INSERT INTO `provinces` VALUES (5, 'Yazd');
INSERT INTO `provinces` VALUES (6, 'Ghom');
INSERT INTO `provinces` VALUES (7, 'Kerman');


CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `province_id` int(11) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `customers` VALUES (1,'Ali','Alavi','09131313131',1);
INSERT INTO `customers` VALUES (2,'Sara','Sari','09121091321',2);
INSERT INTO `customers` VALUES (3,'Firooz','Firoozeh','09101333101',3);
INSERT INTO `customers` VALUES (4,'Narges','Narani','09202220202',5);
INSERT INTO `customers` VALUES (5,'Ana','Nahidi','09131314232',6);
INSERT INTO `customers` VALUES (6,'John','Doe','09202123202',1);
INSERT INTO `customers` VALUES (7,'Jane','Smith','09253120202',2);
INSERT INTO `customers` VALUES (8,'Alice','Johnson','09641620202',5);
INSERT INTO `customers` VALUES (9,'Bob','Brown','09202026662',6);
INSERT INTO `customers` VALUES (10,'Charlie','Davis','09201211202',7);
INSERT INTO `customers` VALUES (11,'David','Wilson','0920201230212312',3);
INSERT INTO `customers` VALUES (12,'Eva','Garcia','09251110202',6);
INSERT INTO `customers` VALUES (13,'Frank','Martinez','09202022102',3);
INSERT INTO `customers` VALUES (14,'Grace','Lopez','09212330202',7);
INSERT INTO `customers` VALUES (15,'Hank','Miller','09121091321',3);


CREATE TABLE `seller_levels` (
  `seller_level_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`seller_level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `seller_levels` VALUES (1, 'Junior');
INSERT INTO `seller_levels` VALUES (2, 'Mid');
INSERT INTO `seller_levels` VALUES (3, 'Senior');


CREATE TABLE `sellers` (
  `seller_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `nationalID` varchar(15) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`seller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `sellers` VALUES (1, 'Mahmud', 'Wrates', '09928674141', 1278723891, 2);
INSERT INTO `sellers` VALUES (2, 'Marietta', 'Sommersett', '09125332924', 1278548796, 1);
INSERT INTO `sellers` VALUES (3, 'Rockwell', 'Jacobssen', '09826625232', 1271621167, 3);
INSERT INTO `sellers` VALUES (4, 'Marven', 'Dockree', '09497865427', 1276884815, 3);
INSERT INTO `sellers` VALUES (5, 'Swen', 'Gildea', '09555868672', 1287307648, 1);
INSERT INTO `sellers` VALUES (6, 'Raeann', 'Windless', '09918885835', 1288458330, 2);
INSERT INTO `sellers` VALUES (7, 'Hobey', 'Popplewell', '09527749885', 1275558669, 3);
INSERT INTO `sellers` VALUES (8, 'Devlen', 'Decreuze', '09479643379', 1274409805, 2);
INSERT INTO `sellers` VALUES (9, 'Desirae', 'Dagnall', '09723187366', 1278354878, 2);
INSERT INTO `sellers` VALUES (10, 'Geoff', 'Melanaphy', '09185228382', 1283556164, 2);
INSERT INTO `sellers` VALUES (11, 'Monah', 'Ferrierio', '09689715348', 1273104344, 3);
INSERT INTO `sellers` VALUES (12, 'Winny', 'Thomsen', '09975976315', 1286486859, 3);
INSERT INTO `sellers` VALUES (13, 'Lindsy', 'Troke', '09518425976', 1274053131, 1);
INSERT INTO `sellers` VALUES (14, 'Pia', 'Showen', '09921427644', 1289545254, 2);
INSERT INTO `sellers` VALUES (15, 'Conant', 'Rainard', '09537938228', 1275351952, 3);
INSERT INTO `sellers` VALUES (16, 'Chloe', 'Harlock', '09819678416', 1288576398, 3);
INSERT INTO `sellers` VALUES (17, 'Clerkclaude', 'Jorin', '09457275813', 1281066427, 1);
INSERT INTO `sellers` VALUES (18, 'Blinni', 'Scotchmer', '09197697954', 1278029236, 1);
INSERT INTO `sellers` VALUES (19, 'Dasha', 'Alchin', '09914172594', 1288507112, 2);
INSERT INTO `sellers` VALUES (20, 'Nicola', 'Verey', '09344759379', 1280511839, 1);


CREATE TABLE payment_types (
	payment_type_id int(11),
	type varchar(10),
  	PRIMARY KEY (`payment_type_id`)
);
INSERT INTO payment_types (payment_type_id, type) VALUES (1, 'cash');
INSERT INTO payment_types (payment_type_id, type) VALUES (2, 'wire');
INSERT INTO payment_types (payment_type_id, type) VALUES (3, 'gateway');


create table orders (
	order_id INT,
	customer_id INT,
	seller_id INT,
	date_of_creation DATE,
  	PRIMARY KEY (`order_id`)
);
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (1, 11, 9, '2025-03-13');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (2, 8, 4, '2024-05-25');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (3, 2, 6, '2024-05-15');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (4, 12, 9, '2023-12-19');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (5, 4, 7, '2024-05-27');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (6, 13, 3, '2024-04-22');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (7, 8, 8, '2024-05-25');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (8, 10, 9, '2024-01-06');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (9, 4, 4, '2024-11-18');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (10, 9, 9, '2025-02-12');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (11, 14, 3, '2024-01-22');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (12, 15, 1, '2024-08-10');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (13, 1, 7, '2024-01-22');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (14, 3, 2, '2024-07-24');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (15, 12, 1, '2024-12-19');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (16, 1, 9, '2024-01-18');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (17, 4, 6, '2024-10-28');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (18, 9, 2, '2024-07-05');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (19, 2, 7, '2024-04-20');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (20, 3, 5, '2024-02-25');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (21, 3, 6, '2024-12-19');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (22, 15, 5, '2025-03-03');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (23, 9, 6, '2024-02-11');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (24, 11, 4, '2024-06-03');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (25, 6, 5, '2025-02-23');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (26, 9, 2, '2025-02-23');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (27, 14, 5, '2025-03-05');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (28, 15, 9, '2024-01-27');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (29, 9, 3, '2023-12-05');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (30, 4, 2, '2025-02-14');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (31, 13, 4, '2024-01-05');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (32, 4, 7, '2024-07-05');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (33, 15, 2, '2023-12-08');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (34, 12, 1, '2024-06-14');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (35, 15, 7, '2024-04-08');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (36, 9, 9, '2024-06-02');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (37, 15, 7, '2024-11-04');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (38, 13, 2, '2024-12-15');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (39, 10, 1, '2024-09-08');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (40, 5, 5, '2024-11-05');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (41, 2, 4, '2024-12-14');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (42, 5, 5, '2024-05-09');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (43, 4, 6, '2024-09-18');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (44, 9, 1, '2025-01-22');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (45, 6, 1, '2024-08-11');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (46, 10, 4, '2024-06-26');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (47, 1, 10, '2024-04-20');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (48, 9, 5, '2024-06-09');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (49, 1, 9, '2024-04-13');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (50, 7, 6, '2024-04-09');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (51, 10, 8, '2024-05-12');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (52, 1, 5, '2024-05-06');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (53, 4, 10, '2024-03-28');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (54, 12, 9, '2024-02-13');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (55, 9, 6, '2024-07-17');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (56, 13, 5, '2024-10-03');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (57, 12, 10, '2024-04-17');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (58, 5, 1, '2024-09-02');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (59, 9, 5, '2024-05-23');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (60, 1, 2, '2024-05-15');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (61, 9, 9, '2024-12-10');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (62, 14, 3, '2024-05-11');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (63, 9, 7, '2024-01-22');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (64, 10, 1, '2024-12-24');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (65, 10, 2, '2025-02-17');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (66, 9, 2, '2024-07-23');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (67, 2, 10, '2024-10-31');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (68, 3, 10, '2023-11-26');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (69, 12, 1, '2024-08-26');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (70, 9, 3, '2024-10-19');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (71, 4, 4, '2024-01-19');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (72, 9, 4, '2024-12-28');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (73, 2, 1, '2024-08-13');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (74, 6, 1, '2024-07-23');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (75, 8, 10, '2024-07-10');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (76, 7, 6, '2023-11-25');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (77, 1, 10, '2024-10-22');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (78, 9, 10, '2024-09-19');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (79, 11, 6, '2023-12-29');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (80, 6, 9, '2025-02-04');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (81, 6, 9, '2024-05-28');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (82, 12, 8, '2024-02-05');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (83, 2, 8, '2023-12-03');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (84, 7, 2, '2025-01-10');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (85, 5, 6, '2024-09-18');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (86, 11, 3, '2023-11-20');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (87, 2, 2, '2025-02-28');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (88, 9, 2, '2023-11-20');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (89, 8, 3, '2023-12-10');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (90, 14, 7, '2024-02-15');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (91, 12, 6, '2024-11-30');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (92, 14, 1, '2024-09-19');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (93, 1, 10, '2024-07-09');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (94, 11, 7, '2024-09-04');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (95, 12, 2, '2024-10-27');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (96, 4, 6, '2024-12-26');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (97, 7, 6, '2024-06-24');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (98, 10, 9, '2024-03-12');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (99, 9, 3, '2024-07-21');
insert into orders (order_id, customer_id, seller_id, date_of_creation) values (100, 9, 7, '2025-01-11');


create table order_items (
	order_id INT,
	product_id INT,
	quantity INT,
	original_price INT,
	unit_price INT,
	PRIMARY KEY(`order_id`, `product_id`)
);
insert into order_items (order_id, product_id, quantity, unit_price) values (1, 11, 7, 728439);
insert into order_items (order_id, product_id, quantity, unit_price) values (1, 17, 2, 1575590);
insert into order_items (order_id, product_id, quantity, unit_price) values (1, 2, 4, 817054);
insert into order_items (order_id, product_id, quantity, unit_price) values (10, 15, 5, 1062482);
insert into order_items (order_id, product_id, quantity, unit_price) values (11, 1, 9, 106367);
insert into order_items (order_id, product_id, quantity, unit_price) values (12, 11, 8, 1359459);
insert into order_items (order_id, product_id, quantity, unit_price) values (12, 16, 2, 117758);
insert into order_items (order_id, product_id, quantity, unit_price) values (12, 3, 1, 1238270);
insert into order_items (order_id, product_id, quantity, unit_price) values (13, 10, 1, 990285);
insert into order_items (order_id, product_id, quantity, unit_price) values (13, 15, 9, 531183);
insert into order_items (order_id, product_id, quantity, unit_price) values (13, 17, 5, 279501);
insert into order_items (order_id, product_id, quantity, unit_price) values (14, 2, 9, 891638);
insert into order_items (order_id, product_id, quantity, unit_price) values (14, 9, 2, 301216);
insert into order_items (order_id, product_id, quantity, unit_price) values (16, 11, 7, 909584);
insert into order_items (order_id, product_id, quantity, unit_price) values (16, 18, 1, 725330);
insert into order_items (order_id, product_id, quantity, unit_price) values (17, 16, 5, 405373);
insert into order_items (order_id, product_id, quantity, unit_price) values (19, 14, 3, 851763);
insert into order_items (order_id, product_id, quantity, unit_price) values (19, 9, 4, 1176204);
insert into order_items (order_id, product_id, quantity, unit_price) values (2, 5, 8, 1956673);
insert into order_items (order_id, product_id, quantity, unit_price) values (100, 13, 9, 1198212);
insert into order_items (order_id, product_id, quantity, unit_price) values (100, 15, 5, 332549);
insert into order_items (order_id, product_id, quantity, unit_price) values (100, 2, 3, 820160);
insert into order_items (order_id, product_id, quantity, unit_price) values (100, 9, 10, 1382761);
insert into order_items (order_id, product_id, quantity, unit_price) values (2, 9, 3, 954347);
insert into order_items (order_id, product_id, quantity, unit_price) values (21, 15, 4, 571786);
insert into order_items (order_id, product_id, quantity, unit_price) values (22, 12, 10, 795734);
insert into order_items (order_id, product_id, quantity, unit_price) values (22, 7, 3, 580816);
insert into order_items (order_id, product_id, quantity, unit_price) values (25, 13, 9, 307696);
insert into order_items (order_id, product_id, quantity, unit_price) values (25, 5, 8, 422825);
insert into order_items (order_id, product_id, quantity, unit_price) values (27, 6, 3, 377972);
insert into order_items (order_id, product_id, quantity, unit_price) values (29, 11, 3, 1742550);
insert into order_items (order_id, product_id, quantity, unit_price) values (29, 18, 1, 79214);
insert into order_items (order_id, product_id, quantity, unit_price) values (3, 4, 8, 1185738);
insert into order_items (order_id, product_id, quantity, unit_price) values (3, 7, 3, 1583194);
insert into order_items (order_id, product_id, quantity, unit_price) values (3, 8, 6, 1094817);
insert into order_items (order_id, product_id, quantity, unit_price) values (30, 1, 7, 901104);
insert into order_items (order_id, product_id, quantity, unit_price) values (30, 7, 2, 121776);
insert into order_items (order_id, product_id, quantity, unit_price) values (32, 11, 9, 706497);
insert into order_items (order_id, product_id, quantity, unit_price) values (33, 1, 10, 597494);
insert into order_items (order_id, product_id, quantity, unit_price) values (33, 12, 10, 73052);
insert into order_items (order_id, product_id, quantity, unit_price) values (33, 3, 5, 1857882);
insert into order_items (order_id, product_id, quantity, unit_price) values (33, 6, 7, 55809);
insert into order_items (order_id, product_id, quantity, unit_price) values (34, 10, 7, 182080);
insert into order_items (order_id, product_id, quantity, unit_price) values (34, 6, 10, 1007176);
insert into order_items (order_id, product_id, quantity, unit_price) values (34, 9, 5, 478618);
insert into order_items (order_id, product_id, quantity, unit_price) values (35, 3, 1, 893120);
insert into order_items (order_id, product_id, quantity, unit_price) values (35, 6, 5, 413914);
insert into order_items (order_id, product_id, quantity, unit_price) values (35, 9, 7, 777328);
insert into order_items (order_id, product_id, quantity, unit_price) values (36, 14, 2, 505924);
insert into order_items (order_id, product_id, quantity, unit_price) values (36, 18, 8, 1119369);
insert into order_items (order_id, product_id, quantity, unit_price) values (36, 4, 6, 739388);
insert into order_items (order_id, product_id, quantity, unit_price) values (37, 1, 3, 1227655);
insert into order_items (order_id, product_id, quantity, unit_price) values (37, 10, 10, 752587);
insert into order_items (order_id, product_id, quantity, unit_price) values (38, 12, 9, 1194932);
insert into order_items (order_id, product_id, quantity, unit_price) values (38, 13, 5, 696356);
insert into order_items (order_id, product_id, quantity, unit_price) values (39, 10, 4, 969618);
insert into order_items (order_id, product_id, quantity, unit_price) values (39, 8, 7, 801673);
insert into order_items (order_id, product_id, quantity, unit_price) values (4, 3, 6, 925255);
insert into order_items (order_id, product_id, quantity, unit_price) values (4, 7, 10, 407636);
insert into order_items (order_id, product_id, quantity, unit_price) values (40, 13, 5, 247840);
insert into order_items (order_id, product_id, quantity, unit_price) values (40, 3, 4, 113843);
insert into order_items (order_id, product_id, quantity, unit_price) values (42, 11, 9, 381813);
insert into order_items (order_id, product_id, quantity, unit_price) values (42, 12, 9, 149227);
insert into order_items (order_id, product_id, quantity, unit_price) values (42, 4, 2, 536674);
insert into order_items (order_id, product_id, quantity, unit_price) values (42, 8, 10, 528967);
insert into order_items (order_id, product_id, quantity, unit_price) values (43, 11, 4, 194953);
insert into order_items (order_id, product_id, quantity, unit_price) values (43, 3, 1, 1121266);
insert into order_items (order_id, product_id, quantity, unit_price) values (44, 19, 4, 856880);
insert into order_items (order_id, product_id, quantity, unit_price) values (44, 2, 3, 308715);
insert into order_items (order_id, product_id, quantity, unit_price) values (45, 1, 9, 70381);
insert into order_items (order_id, product_id, quantity, unit_price) values (45, 4, 1, 1407221);
insert into order_items (order_id, product_id, quantity, unit_price) values (46, 12, 4, 1370239);
insert into order_items (order_id, product_id, quantity, unit_price) values (46, 19, 2, 1024230);
insert into order_items (order_id, product_id, quantity, unit_price) values (47, 10, 8, 1496571);
insert into order_items (order_id, product_id, quantity, unit_price) values (47, 12, 1, 367072);
insert into order_items (order_id, product_id, quantity, unit_price) values (47, 9, 6, 259927);
insert into order_items (order_id, product_id, quantity, unit_price) values (48, 6, 5, 1188634);
insert into order_items (order_id, product_id, quantity, unit_price) values (49, 1, 1, 379622);
insert into order_items (order_id, product_id, quantity, unit_price) values (49, 18, 8, 1139867);
insert into order_items (order_id, product_id, quantity, unit_price) values (5, 11, 8, 104300);
insert into order_items (order_id, product_id, quantity, unit_price) values (5, 15, 9, 522421);
insert into order_items (order_id, product_id, quantity, unit_price) values (5, 17, 4, 860995);
insert into order_items (order_id, product_id, quantity, unit_price) values (50, 11, 10, 558921);
insert into order_items (order_id, product_id, quantity, unit_price) values (50, 16, 4, 330056);
insert into order_items (order_id, product_id, quantity, unit_price) values (50, 5, 3, 746724);
insert into order_items (order_id, product_id, quantity, unit_price) values (51, 19, 10, 705210);
insert into order_items (order_id, product_id, quantity, unit_price) values (52, 5, 2, 494919);
insert into order_items (order_id, product_id, quantity, unit_price) values (53, 12, 6, 186213);
insert into order_items (order_id, product_id, quantity, unit_price) values (53, 3, 9, 148072);
insert into order_items (order_id, product_id, quantity, unit_price) values (53, 7, 6, 1233862);
insert into order_items (order_id, product_id, quantity, unit_price) values (55, 11, 3, 1137190);
insert into order_items (order_id, product_id, quantity, unit_price) values (56, 10, 4, 1271777);
insert into order_items (order_id, product_id, quantity, unit_price) values (57, 12, 6, 704083);
insert into order_items (order_id, product_id, quantity, unit_price) values (57, 6, 7, 1321701);
insert into order_items (order_id, product_id, quantity, unit_price) values (57, 7, 3, 947862);
insert into order_items (order_id, product_id, quantity, unit_price) values (58, 1, 8, 567231);
insert into order_items (order_id, product_id, quantity, unit_price) values (58, 12, 4, 240590);
insert into order_items (order_id, product_id, quantity, unit_price) values (58, 15, 9, 1502569);
insert into order_items (order_id, product_id, quantity, unit_price) values (59, 11, 6, 536837);
insert into order_items (order_id, product_id, quantity, unit_price) values (59, 14, 10, 332516);
insert into order_items (order_id, product_id, quantity, unit_price) values (59, 16, 10, 868365);
insert into order_items (order_id, product_id, quantity, unit_price) values (59, 8, 3, 1563104);
insert into order_items (order_id, product_id, quantity, unit_price) values (6, 1, 10, 124507);
insert into order_items (order_id, product_id, quantity, unit_price) values (6, 7, 6, 1414242);
insert into order_items (order_id, product_id, quantity, unit_price) values (60, 2, 8, 586292);
insert into order_items (order_id, product_id, quantity, unit_price) values (61, 12, 10, 360254);
insert into order_items (order_id, product_id, quantity, unit_price) values (61, 7, 10, 841326);
insert into order_items (order_id, product_id, quantity, unit_price) values (62, 4, 10, 1774458);
insert into order_items (order_id, product_id, quantity, unit_price) values (62, 8, 7, 49596);
insert into order_items (order_id, product_id, quantity, unit_price) values (62, 9, 4, 404593);
insert into order_items (order_id, product_id, quantity, unit_price) values (63, 10, 8, 145173);
insert into order_items (order_id, product_id, quantity, unit_price) values (63, 13, 8, 880673);
insert into order_items (order_id, product_id, quantity, unit_price) values (63, 14, 1, 954150);
insert into order_items (order_id, product_id, quantity, unit_price) values (64, 12, 2, 715248);
insert into order_items (order_id, product_id, quantity, unit_price) values (64, 5, 6, 1599801);
insert into order_items (order_id, product_id, quantity, unit_price) values (65, 1, 6, 1125731);
insert into order_items (order_id, product_id, quantity, unit_price) values (65, 6, 10, 1813355);
insert into order_items (order_id, product_id, quantity, unit_price) values (66, 1, 1, 557631);
insert into order_items (order_id, product_id, quantity, unit_price) values (66, 15, 3, 175539);
insert into order_items (order_id, product_id, quantity, unit_price) values (67, 4, 3, 124856);
insert into order_items (order_id, product_id, quantity, unit_price) values (67, 5, 9, 1381050);
insert into order_items (order_id, product_id, quantity, unit_price) values (68, 4, 1, 635836);
insert into order_items (order_id, product_id, quantity, unit_price) values (68, 5, 1, 1568171);
insert into order_items (order_id, product_id, quantity, unit_price) values (69, 13, 10, 788372);
insert into order_items (order_id, product_id, quantity, unit_price) values (69, 14, 3, 1132126);
insert into order_items (order_id, product_id, quantity, unit_price) values (7, 6, 2, 896998);
insert into order_items (order_id, product_id, quantity, unit_price) values (71, 12, 2, 745009);
insert into order_items (order_id, product_id, quantity, unit_price) values (71, 13, 8, 613102);
insert into order_items (order_id, product_id, quantity, unit_price) values (71, 9, 5, 693924);
insert into order_items (order_id, product_id, quantity, unit_price) values (73, 7, 5, 928056);
insert into order_items (order_id, product_id, quantity, unit_price) values (74, 18, 4, 1084439);
insert into order_items (order_id, product_id, quantity, unit_price) values (74, 3, 6, 703015);
insert into order_items (order_id, product_id, quantity, unit_price) values (74, 9, 4, 483093);
insert into order_items (order_id, product_id, quantity, unit_price) values (75, 13, 9, 630600);
insert into order_items (order_id, product_id, quantity, unit_price) values (75, 15, 3, 697791);
insert into order_items (order_id, product_id, quantity, unit_price) values (75, 16, 9, 1274186);
insert into order_items (order_id, product_id, quantity, unit_price) values (75, 7, 6, 1066581);
insert into order_items (order_id, product_id, quantity, unit_price) values (75, 9, 1, 95234);
insert into order_items (order_id, product_id, quantity, unit_price) values (76, 12, 10, 667885);
insert into order_items (order_id, product_id, quantity, unit_price) values (76, 13, 9, 579226);
insert into order_items (order_id, product_id, quantity, unit_price) values (77, 11, 9, 1230544);
insert into order_items (order_id, product_id, quantity, unit_price) values (77, 15, 3, 959588);
insert into order_items (order_id, product_id, quantity, unit_price) values (77, 3, 4, 1089332);
insert into order_items (order_id, product_id, quantity, unit_price) values (77, 9, 5, 1483687);
insert into order_items (order_id, product_id, quantity, unit_price) values (78, 17, 4, 249079);
insert into order_items (order_id, product_id, quantity, unit_price) values (78, 3, 5, 152049);
insert into order_items (order_id, product_id, quantity, unit_price) values (78, 6, 2, 238800);
insert into order_items (order_id, product_id, quantity, unit_price) values (78, 8, 5, 229398);
insert into order_items (order_id, product_id, quantity, unit_price) values (79, 10, 10, 306208);
insert into order_items (order_id, product_id, quantity, unit_price) values (79, 9, 10, 757493);
insert into order_items (order_id, product_id, quantity, unit_price) values (8, 18, 7, 573629);
insert into order_items (order_id, product_id, quantity, unit_price) values (8, 3, 9, 128416);
insert into order_items (order_id, product_id, quantity, unit_price) values (80, 12, 4, 246495);
insert into order_items (order_id, product_id, quantity, unit_price) values (80, 18, 3, 531910);
insert into order_items (order_id, product_id, quantity, unit_price) values (81, 3, 5, 177446);
insert into order_items (order_id, product_id, quantity, unit_price) values (81, 4, 7, 636536);
insert into order_items (order_id, product_id, quantity, unit_price) values (81, 8, 1, 96153);
insert into order_items (order_id, product_id, quantity, unit_price) values (82, 2, 7, 279957);
insert into order_items (order_id, product_id, quantity, unit_price) values (82, 4, 5, 1683675);
insert into order_items (order_id, product_id, quantity, unit_price) values (83, 15, 10, 55677);
insert into order_items (order_id, product_id, quantity, unit_price) values (83, 17, 1, 281560);
insert into order_items (order_id, product_id, quantity, unit_price) values (83, 9, 10, 1320867);
insert into order_items (order_id, product_id, quantity, unit_price) values (84, 8, 9, 720408);
insert into order_items (order_id, product_id, quantity, unit_price) values (85, 12, 2, 126122);
insert into order_items (order_id, product_id, quantity, unit_price) values (85, 2, 10, 855262);
insert into order_items (order_id, product_id, quantity, unit_price) values (85, 3, 9, 617951);
insert into order_items (order_id, product_id, quantity, unit_price) values (86, 12, 3, 915382);
insert into order_items (order_id, product_id, quantity, unit_price) values (86, 2, 10, 1432654);
insert into order_items (order_id, product_id, quantity, unit_price) values (86, 3, 9, 1188810);
insert into order_items (order_id, product_id, quantity, unit_price) values (87, 15, 3, 803504);
insert into order_items (order_id, product_id, quantity, unit_price) values (87, 8, 5, 1712717);
insert into order_items (order_id, product_id, quantity, unit_price) values (88, 14, 2, 1016227);
insert into order_items (order_id, product_id, quantity, unit_price) values (89, 1, 1, 1435604);
insert into order_items (order_id, product_id, quantity, unit_price) values (89, 12, 1, 161457);
insert into order_items (order_id, product_id, quantity, unit_price) values (91, 6, 8, 112674);
insert into order_items (order_id, product_id, quantity, unit_price) values (92, 12, 4, 157437);
insert into order_items (order_id, product_id, quantity, unit_price) values (92, 9, 8, 452607);
insert into order_items (order_id, product_id, quantity, unit_price) values (93, 19, 10, 1453326);
insert into order_items (order_id, product_id, quantity, unit_price) values (94, 18, 9, 1223571);
insert into order_items (order_id, product_id, quantity, unit_price) values (94, 5, 10, 1362136);
insert into order_items (order_id, product_id, quantity, unit_price) values (95, 17, 4, 245379);
insert into order_items (order_id, product_id, quantity, unit_price) values (95, 19, 9, 1558748);
insert into order_items (order_id, product_id, quantity, unit_price) values (95, 3, 4, 1678097);
insert into order_items (order_id, product_id, quantity, unit_price) values (95, 6, 2, 1239320);
insert into order_items (order_id, product_id, quantity, unit_price) values (96, 2, 4, 743643);
insert into order_items (order_id, product_id, quantity, unit_price) values (97, 7, 6, 503637);
insert into order_items (order_id, product_id, quantity, unit_price) values (98, 18, 2, 1587876);
insert into order_items (order_id, product_id, quantity, unit_price) values (98, 19, 3, 1099185);
insert into order_items (order_id, product_id, quantity, unit_price) values (98, 5, 5, 1031751);
insert into order_items (order_id, product_id, quantity, unit_price) values (99, 3, 6, 945791);
insert into order_items (order_id, product_id, quantity, unit_price) values (99, 8, 4, 115997);


create table payments (
	payment_id INT,
	order_id INT,
	date_of_payment DATE,
	payment_type_id INT,
	PRIMARY KEY (`payment_id`)
);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (1, 1, '2025-03-23', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (2, 2, '2025-08-14', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (3, 3, '2025-03-10', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (4, 4, '2025-09-26', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (5, 5, '2025-08-10', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (6, 6, '2025-07-08', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (7, 7, '2025-05-26', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (8, 8, '2025-04-21', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (9, 9, '2025-02-22', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (10, 10, '2025-06-10', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (11, 11, '2025-07-05', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (12, 12, '2025-03-19', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (13, 13, '2025-02-22', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (14, 14, '2025-06-10', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (15, 15, '2025-05-14', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (16, 16, '2025-03-16', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (17, 17, '2025-05-18', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (18, 18, '2025-07-18', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (19, 19, '2025-06-24', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (20, 20, '2025-05-27', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (21, 21, '2025-06-02', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (22, 22, '2025-07-14', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (23, 23, '2025-05-25', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (24, 24, '2025-07-12', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (25, 25, '2025-06-21', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (26, 26, '2025-05-10', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (27, 27, '2025-02-26', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (28, 28, '2025-07-27', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (29, 29, '2025-08-06', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (30, 30, '2025-03-16', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (31, 31, '2025-09-18', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (32, 32, '2025-04-02', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (33, 33, '2025-06-02', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (34, 34, '2025-04-26', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (35, 35, '2025-06-23', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (36, 36, '2025-07-01', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (37, 37, '2025-08-25', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (38, 38, '2025-05-22', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (39, 39, '2025-10-03', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (40, 40, '2025-03-02', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (41, 41, '2025-05-26', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (42, 42, '2025-03-15', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (43, 43, '2025-07-18', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (44, 44, '2025-03-16', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (45, 45, '2025-03-25', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (46, 46, '2025-03-14', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (47, 47, '2025-07-23', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (48, 48, '2025-07-03', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (49, 49, '2025-10-02', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (50, 50, '2025-09-06', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (51, 51, '2025-03-07', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (52, 52, '2025-06-07', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (53, 53, '2025-05-20', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (54, 54, '2025-07-12', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (55, 55, '2025-07-30', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (56, 98, '2025-08-09', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (57, 57, '2025-02-27', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (58, 58, '2025-07-27', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (59, 59, '2025-08-15', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (60, 60, '2025-05-09', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (61, 61, '2025-09-17', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (62, 62, '2025-04-06', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (63, 63, '2025-06-01', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (64, 64, '2025-05-02', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (65, 65, '2025-05-20', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (66, 66, '2025-07-09', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (67, 67, '2025-02-26', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (68, 68, '2025-03-13', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (69, 69, '2025-07-29', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (70, 70, '2025-09-06', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (71, 71, '2025-09-05', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (72, 72, '2025-06-23', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (73, 100, '2025-04-26', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (74, 74, '2025-04-13', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (75, 75, '2025-08-09', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (76, 76, '2025-03-11', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (77, 77, '2025-06-06', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (78, 78, '2025-07-08', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (79, 79, '2025-09-27', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (80, 80, '2025-10-09', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (81, 81, '2025-02-22', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (82, 82, '2025-09-14', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (83, 83, '2025-06-21', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (84, 84, '2025-04-03', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (85, 99, '2025-08-11', 1);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (86, 86, '2025-05-02', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (87, 87, '2025-08-16', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (88, 88, '2025-04-28', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (89, 89, '2025-07-25', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (90, 90, '2025-09-18', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (91, 91, '2025-05-20', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (92, 92, '2025-07-27', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (93, 93, '2025-08-10', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (94, 94, '2025-05-30', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (95, 95, '2025-06-11', 3);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (96, 96, '2025-09-11', 2);
insert into payments (payment_id, order_id, date_of_payment, payment_type_id) values (97, 97, '2025-03-26', 1);