-- TASTK 7 SQL CỞ BẢN 16-20 --

USE furama_management;

-- Câu 16: Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến 2021
SET sql_safe_updates = 0; 
DELETE FROM employee e 
WHERE e.id NOT IN (SELECT 
    ct.employee_id
FROM
    contract ct
WHERE
    YEAR(ct.start_date) BETWEEN 2019 AND 2021) ;
SET sql_safe_updates = 1;

SELECT 
    *
FROM
    employee;
    
-- Câu 17: Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, 
-- chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng Tiền thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ.
SET sql_safe_updates = 0;
UPDATE customer c 
SET 
    customer_type_id = 1
WHERE
    c.id IN (SELECT 
            table_temp.customer_id
        FROM
            (SELECT 
                c.id AS customer_id,
				c.name,
				cost + SUM(ct_d.amount * ct_d.attach_facility_id) AS total_price_in_2021
            FROM
                contract ct
            JOIN contract_detail ct_d ON ct_d.contract_id = ct.id
            JOIN facility f ON f.id = ct.facility_id
            JOIN customer c ON c.id = ct.customer_id
            WHERE
                c.customer_type_id = 2
                    AND YEAR(ct.start_date) = 2021
            GROUP BY ct.customer_id
            HAVING total_price_in_2021 >= 1000000)as table_temp);
SET sql_safe_updates = 1;

SELECT 
    *
FROM
    customer;

-- Câu 18: Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).
SET sql_safe_updates = 0;
SET foreign_key_checks = 0;
DELETE FROM customer  
WHERE customer.id IN (SELECT 
	ct.customer_id
FROM
    contract ct
WHERE
    YEAR(ct.start_date) < 2021);
SET foreign_key_checks = 1;
SET sql_safe_updates = 1;

SELECT 
    *
FROM
    customer;

-- Câu 19: Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.
SET sql_safe_updates = 0;
UPDATE attach_facility 
SET 
    cost = cost * 2
WHERE
    id IN (SELECT 
            ct_d.attach_facility_id
        FROM
            contract_detail ct_d
                JOIN
            contract ct ON ct.id = ct_d.contract_id
        WHERE
            YEAR(ct.start_date) = 2020
        GROUP BY ct_d.attach_facility_id
        HAVING SUM(amount) > 10);
SET sql_safe_updates = 1;

SELECT 
    *
FROM
    attach_facility;
    
-- Câu 20: Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống, 
-- thông tin hiển thị bao gồm id (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.

SELECT 
    e.id,
    e.name,
    e.email,
    e.phone_number,
    e.date_of_birth,
    e.address
FROM
    employee e 
UNION SELECT 
    c.id,
    c.name,
    c.email,
    c.phone_number,
    c.date_of_birth,
    c.address
FROM
    customer c;