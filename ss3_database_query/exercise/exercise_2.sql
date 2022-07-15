use sell_management;

-- NHẬP DỮ LIỆU VÀO CÁC BẢNG --

INSERT INTO sell_management.customer (id, name, age) 
VALUES ('1', 'Minh Quan', '10'),
	   ('2', 'Ngoc Oanh', '20'),
	   ('3', 'Hong Ha', '50');
       
INSERT INTO `order` (customer_id, day_oder, total_price) 
VALUES ('1', '2006-02-21' , Null),
	   ('2', '2006-02-23', Null),
	   ('1', '2006-03-16', Null);
       
INSERT INTO sell_management.product ( name, price)
VALUES ('May Giat', '3'),
	   ('Tu Lanh', '5'),
	   ('Dieu Hoa', '7'),
	   ('Quat', '1'),
	   ('Bep Dien', '2');
       
INSERT INTO sell_management.order_detail (order_id, product_id, QTY) 
VALUES ('1', '1', '3'),
	   ('1', '3', '7'),
	   ('1', '4', '2'),
	   ('2', '1', '1'),
	   ('3', '1', '8'),
	   ('2', '5', '4'),
	   ('2', '3', '3');
       
-- TRUY XUẤT DỮ LIỆU --

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order -- 

SELECT 
    o.id, o.day_oder, o.total_price
FROM
    `order` o;
    
-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách --

SELECT 
    c.`name`, p.name
FROM
    customer c
        JOIN
    `order` o ON c.id = o.id
        JOIN
    order_detail od ON o.id = od.order_id
        JOIN
    product p ON od.product_id = p.id;
    
-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào --

SELECT 
    c.`name`
FROM
    customer c
        LEFT JOIN
    `order` o ON c.id = o.customer_id
WHERE
    o.day_oder IS NULL;
    
-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn 
-- (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice) 

SELECT 
    o.id, o.day_oder, SUM(p.price * od.QTY) as total_price
FROM
    `order` o
        JOIN
    order_detail od ON o.id = od.order_id
        JOIN
    product p ON od.product_id = p.id
GROUP BY o.id;