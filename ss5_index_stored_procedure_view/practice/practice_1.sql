use classicmodels;

-- Sử dụng select bình thường, và xem tốc độ sử lý
SELECT 
    *
FROM
    classicmodels.customers
WHERE
    customerName = 'Land of Toys Inc.';
    
-- Sử dụng explain select để xem điều gì xảy ra bên trong câu lệnh query
EXPLAIN SELECT 
    *
FROM
    classicmodels.customers
WHERE
    customerName = 'Land of Toys Inc.';

-- Thêm chỉ mục cho cặp contactFirstName và contactLastName của bản customers
ALTER 
	TABLE classicmodels.customers
ADD 
	INDEX idx_full_name(contactFirstName,contactLastName);
    
-- Sử dụng lại explain select tìm theo index vừa tạo và xem kết quả
EXPLAIN SELECT
    *
FROM
    classicmodels.customers
WHERE
    contactFirstName = 'Jean' or contactFirstName = 'king';

 -- Xóa chỉ mục
 ALTER 
	TABLE classicmodels.customers
 DROP
	INDEX idx_full_name;

