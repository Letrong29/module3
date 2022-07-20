-- TASTK 6 SQL CỞ BẢN 11-15 --

USE furama_management;

-- Câu 11: Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng 
-- bởi những khách hàng có "tên loại khách" là “Diamond” và có "địa chỉ" ở “Vinh” hoặc “Quảng Ngãi”.
SELECT 
    af.id, af.`name`
FROM
    attach_facility af
        JOIN
    contract_detail ct_d ON af.id = ct_d.attach_facility_id
        JOIN
    contract ct ON ct_d.contract_id = ct.id
        JOIN
    customer c ON ct.customer_id = c.id
        JOIN
    customer_type c_type ON c_type.id = c.customer_type_id
WHERE
    c_type.name LIKE 'Diamond'
        AND (c.address LIKE '%Vinh'
        OR c.address LIKE '%Quảng Ngải');
        
-- Câu 12: Hiển thị thông tin:
-- ma_hop_dong, 
-- ho_ten (nhân viên), 
-- ho_ten (khách hàng), 
-- so_dien_thoai (khách hàng), 
-- ten_dich_vu
-- so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem)
-- tien_dat_coc của tất cả các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2020 nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2021.
-- CHƯA ĐÚNG KẾT QUẢ --
SELECT 
    ct.id AS contract_id,
    e.`name` AS employee_name,
    c.`name` AS customer_name,
    c.phone_number AS customer_phone_number,
    f.`name` AS facility_name,
    SUM(ct_d.amount) AS amount_attach_facility,
    ct.deposit
FROM
    contract ct
        JOIN
    employee e ON e.id = ct.employee_id
        JOIN
    customer c ON c.id = ct.customer_id
        JOIN
    facility f ON f.id = ct.facility_id
        JOIN
    contract_detail ct_d ON ct_d.contract_id = ct.id
WHERE
    ct.id IN (SELECT 
            ct.id
        FROM
            contract ct
        WHERE
            YEAR(ct.start_date) = 2020
                AND MONTH(ct.start_date) BETWEEN 10 AND 12)
        AND ct.id NOT IN (SELECT 
            ct.id
        FROM
            contract ct
        WHERE
            YEAR(ct.start_date) = 2021
                AND MONTH(ct.start_date) BETWEEN 1 AND 6)
GROUP BY ct.id;

-- Câu 13: Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng. 
-- (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).
SELECT 
    af.id, af.`name`, SUM(ct_d.amount) AS amount
FROM
    attach_facility af
        JOIN
    contract_detail ct_d ON ct_d.attach_facility_id = af.id
        JOIN
    contract c ON c.id = ct_d.contract_id
GROUP BY ct_d.id
HAVING amount = (SELECT 
        MAX(`table`.amount)
    FROM
        (SELECT 
            SUM(amount) AS amount
        FROM
            contract_detail ct_d
        GROUP BY ct_d.attach_facility_id) AS `table`);
