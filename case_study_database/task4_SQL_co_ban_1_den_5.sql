-- SQL CỞ BẢN 1-5 --

use furama_management;
 
-- 2. Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” 
-- và có tối đa 15 kí tự.
SELECT 
    *
FROM
    employee
WHERE
    `name` REGEXP '^[HTK]'
        AND CHAR_LENGTH(`name`) <= 15;


-- 3. Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi 
-- và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
SELECT 
    *
FROM
    customer
WHERE
    (TIMESTAMPDIFF(YEAR,
        date_of_birth,
        CURDATE()) BETWEEN 18 AND 50)
        AND (address LIKE '%Quảng Trị'
        OR address LIKE '%Đà Nẵng');
        
        
-- 4. Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. 
-- Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. 
-- Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
SELECT 
    c.id,
    c.`name`,
    c_type.`name` AS customer_type,
    COUNT(customer_id) AS amount_booking
FROM
    customer_type c_type
        JOIN
    customer c ON c_type.id = c.customer_type_id
        JOIN
    contract ct ON c.id = ct.customer_id
WHERE
    c_type.`name` LIKE 'Diamond'
GROUP BY ct.customer_id
ORDER BY COUNT(customer_id);


-- 5. Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien 
-- (Với tổng tiền được tính theo công thức như sau: Chi Phí Thuê + Số Lượng * Giá, với Số Lượng và Giá là từ bảng dich_vu_di_kem, hop_dong_chi_tiet) 
-- cho tất cả các khách hàng đã từng đặt phòng. 
-- (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).
-- CHƯA ĐÚNG KẾT QUẢ --
SELECT 
    c.id,
    c.`name` AS name_of_customer,
    c_type.`name` AS name_of_facility,
    ct.id AS contract_id,
    f.`name` AS facility_name,
    ct.start_date,
    ct.end_date,
    f.cost + SUM(IFNULL(ct_d.amount * af.cost, 0)) AS bill
FROM
    customer c
        LEFT JOIN
    customer_type c_type ON c_type.id = c.customer_type_id
        LEFT JOIN
    contract ct ON c.id = ct.customer_id
        LEFT JOIN
    facility f ON f.id = ct.facility_id
        LEFT JOIN
    contract_detail ct_d ON ct.id = ct_d.contract_id
        LEFT JOIN
    attach_facility af ON ct_d.attach_facility_id = af.id
GROUP BY ct.id , c.id
ORDER BY c.id;