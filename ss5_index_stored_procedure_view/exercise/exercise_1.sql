DROP DATABASE IF EXISTS demo_bai_tap_ss5;

-- Bước 1: Tạo cơ sở dữ liệu demo --
CREATE DATABASE demo_bai_tap_ss5;

USE demo_bai_tap_ss5;

-- Bước 2: Tạo bảng Products với các trường dữ liệu sau --
CREATE TABLE products (
    id INT AUTO_INCREMENT,
    `code` VARCHAR(10),
    `name` VARCHAR(50),
    price DOUBLE,
    amount INT,
    `description` TEXT,
    `status` VARCHAR(50),
    PRIMARY KEY (id)
);

INSERT INTO products(`code`, `name`, price, amount, `description`, `status`) 
VALUE	('product001', 'áo', 1000, 4, 'abc', 'new'),
		('product002', 'quần', 2000, 4, 'Abc', 'New'),
		('product003', 'Mì tôm', 3000, 4, 'aBC', 'neW'),
		('product004', 'máY quạt', 4000, 4, 'ABC', 'new'),
		('product005', 'điều Hòa', 5000, 4, 'AbC', 'nEW'),
		('product006', 'ti vi', 6000, 4, 'AbC', 'nEW'),
		('product007', 'xe máy', 7000, 4, 'aBc', 'NeW'),
		('product008', 'xe đạp', 8000, 4, 'abc', 'NEW'),
		('product009', 'Trứng', 9000, 4, 'abc', 'nEW'),
		('product010', 'SữA', 1001, 4, 'abc', 'nEw'),
		('product011', 'NƯỚc ngọt', 1002, 4, 'abc', 'new'),
		('product012', 'bia', 1003, 4, 'abc', 'new');


-- Bước 3: 
-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục) --
CREATE INDEX unique_index ON products(`code`);

DROP INDEX unique_index ON products;

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice) --
CREATE INDEX composite_index ON products(`name`, price);

DROP INDEX composite_index ON products;

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào --
EXPLAIN SELECT 
	* 
FROM 
	demo_bai_tap_ss5.products 
WHERE 
	`code` = 'product001';

EXPLAIN SELECT 
	* 
FROM 
	products 
WHERE 
	(`name` = 'áo') OR (price = 2000);


-- Bước 4:
-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products. --
CREATE VIEW v_products AS
    SELECT 
        p.`code`, p.`name`, p.price, p.`status`
    FROM
        products p;

-- Tiến hành sửa đổi view --
SELECT 
    *
FROM
    v_products;

UPDATE v_products 
SET 
    `name` = 'giày'
WHERE
    `code` = 'product001';

UPDATE v_products 
SET 
    `name` = 'áo'
WHERE
    `code` = 'product001';

-- Tiến hành xoá view --
DROP VIEW v_products;

-- Bước 5:
-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product --
delimiter //
CREATE PROCEDURE find_all_product()
BEGIN
	SELECT 
		* 
    FROM 
		products;
END //
delimiter ;

CALL find_all_product();

-- Tạo store procedure thêm một sản phẩm mới --
delimiter //
CREATE PROCEDURE add_new_product(p_code VARCHAR(10), p_name VARCHAR(50), p_price DOUBLE, p_amount INT, p_description TEXT, p_status VARCHAR(50))
BEGIN
	INSERT INTO 
		products(`code`, `name`, price, amount, `description`, `status`) 
    VALUE
		(p_code, p_name, p_price, p_amount, p_description, p_status);
END //
delimiter ;

CALL add_new_product('product013', 'giày', 13000, 2, 'abcd', 'new'); -- sử dụng store procedure add

CALL find_all_product(); -- kiểm tra kết quả 
    
-- Tạo store procedure sửa thông tin sản phẩm theo id -- 
delimiter //
CREATE PROCEDURE update_product_by_id(check_id int, p_code VARCHAR(10), p_name VARCHAR(50), p_price DOUBLE, p_amount INT, p_description TEXT, p_status VARCHAR(50))
BEGIN
	UPDATE 
		products 
    SET 
		`code` = p_code, 
		`name` = p_name, 
        price = p_price, 
        amount = p_amount, 
        `description` = p_description, 
        `status` = p_status
	WHERE 
		id = check_id;
END //
delimiter ;

CALL update_product_by_id(1, 'product001','mũ', 100, 2, 'xyz', 'old'); -- sử dụng store procedure update

CALL find_all_product(); -- kiểm tra kết quả

-- Tạo store procedure xoá sản phẩm theo id --
delimiter //
CREATE PROCEDURE delete_product_by_id(check_id int)
BEGIN
	DELETE FROM
		products 
	WHERE 
		id = check_id;
END //
delimiter ;

CALL delete_product_by_id(1); -- sử dụng store procedure delete

CALL find_all_product(); -- kiểm tra kết quả
