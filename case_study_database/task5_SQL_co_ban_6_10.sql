-- SQL CƠ BẢN 6-10 --

use FUrama_management;

-- 6. Hiển thị ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue,
-- ten_loai_dich_vu của tất cả các loại dịch vụ chưa từng được khách hàng
-- thực hiện đặt từ quý 1 của năm 2021 (Quý 1 là tháng 1, 2, 3).
SELECT 
    f.id,
    f.`name` AS name_of_facility,
    f.area,
    f.cost,
    ft.`name` AS name_of_facility_type,
    ct.start_date
FROM
    contract ct
        JOIN
    facility f ON ct.facility_id = f.id
        JOIN
    facility_type ft ON f.facility_type_id = ft.id
WHERE
    f.`name` NOT IN (SELECT 
            f.`name`
        FROM
            facility f
                JOIN
            contract ct ON f.id = ct.facility_id
        WHERE
            YEAR(ct.start_date) = 2021
                AND (MONTH(ct.start_date) IN (1 , 2, 3)))
GROUP BY f.id;


    
