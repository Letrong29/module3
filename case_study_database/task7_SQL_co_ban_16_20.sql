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
UPDATE customer 
SET 
    customer_type_id = 1
WHERE
    c.id IN (SELECT 
            table_temp.id
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
    customer c
WHERE
    c.customer_type_id = 1;

SELECT 
    c.id AS customer_id,
    c.name,
    cost + SUM(ct_d.amount * ct_d.attach_facility_id) AS total_price_in_2021
FROM
    contract ct
        JOIN
    contract_detail ct_d ON ct_d.contract_id = ct.id
        JOIN
    facility f ON f.id = ct.facility_id
        JOIN
    customer c ON c.id = ct.customer_id
WHERE
    c.customer_type_id = 2
        AND YEAR(ct.start_date) = 2021
GROUP BY ct.customer_id
HAVING total_price_in_2021 >= 1000000;