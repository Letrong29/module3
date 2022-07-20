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
        LEFT JOIN
    employee e ON e.id = ct.employee_id
        LEFT JOIN
    customer c ON c.id = ct.customer_id
        LEFT JOIN
    facility f ON f.id = ct.facility_id
        LEFT JOIN
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
    af.id AS attach_facility_id,
    af.`name` AS name_attach_facility,
    SUM(ct_d.amount) AS max_amount_use
FROM
    attach_facility af
        JOIN
    contract_detail ct_d ON ct_d.attach_facility_id = af.id
        JOIN
    contract c ON c.id = ct_d.contract_id
GROUP BY ct_d.attach_facility_id
HAVING max_amount_use = (SELECT 
        SUM(amount) AS amount
    FROM
        contract_detail ct_d
    GROUP BY ct_d.attach_facility_id
    ORDER BY amount DESC
    LIMIT 1);
    
-- Câu 14: Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất. 
-- Thông tin hiển thị bao gồm ma_hop_dong, ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung (được tính dựa trên việc count các ma_dich_vu_di_kem).
SELECT 
    ct.id AS contract_id,
    f_type.`name` AS name_facility_type,
    af.`name` AS name_attach_facility,
    COUNT(af.id) AS amount_use
FROM
    contract ct
        JOIN
    contract_detail ct_d ON ct_d.contract_id = ct.id
        JOIN
    attach_facility af ON af.id = ct_d.attach_facility_id
        JOIN
    facility f ON f.id = ct.facility_id
        JOIN
    facility_type f_type ON f_type.id = f.facility_type_id
GROUP BY af.id
HAVING amount_use = 1
ORDER BY ct.id;

-- Câu 15: Hiển thi thông tin của tất cả nhân viên bao gồm 
-- ma_nhan_vien, ho_ten, ten_trinh_do, ten_bo_phan, so_dien_thoai, dia_chi 
-- mới chỉ lập được tối đa 3 hợp đồng từ năm 2020 đến 2021.
SELECT 
    e.id AS employee_id,
    e.name AS name_employee,
    ed.name AS education_degree,
    p.name AS position,
    e.phone_number,
    e.address,
    COUNT(ct.employee_id) AS amount_of_contract
FROM
    employee e
        JOIN
    education_degree ed ON ed.id = e.education_degree_id
        JOIN
    position p ON p.id = e.position_id
        JOIN
    contract ct ON ct.employee_id = e.id
WHERE
    YEAR(ct.start_date) IN (2020 , 2021)
GROUP BY ct.employee_id
HAVING amount_of_contract <= 3
ORDER BY e.id;

