-- TASK 5 SQL CƠ BẢN 6-10 --

USE FUrama_management;

-- Câu 6: Hiển thị (mã dịch vụ, tên dịch vụ, diện tích, chi phí thuê, tên loại dịch vụ)
-- của tất cả các loại dịch vụ chưa từng được khách hàng
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


-- Câu 7: Hiển thị thông tin (mã dịch vụ, tên dịch vụ, diện tích, số người tối đa, chi phí thuê, tên loại dịch vụ) của tất cả các loại
-- dịch vụ đã từng được khách hàng đặt phòng trong năm 2020 nhưng chưa từng được khách hàng đặt phòng trong năm 2021.
SELECT 
    f.id,
    f.`name` AS facility,
    f.area,
    f.max_people,
    f.cost,
    ft.`name` AS facility_type
FROM
    contract ct
        JOIN
    facility f ON ct.facility_id = f.id
        JOIN
    facility_type ft ON f.facility_type_id = ft.id
WHERE
    YEAR(ct.start_date) = 2020
        AND ct.id NOT IN (SELECT 
            ct.facility_id
        FROM
            contract ct 
        WHERE
            YEAR(ct.start_date) = 2021)
GROUP BY f.id;


-- Câu 8: Hiển thị thông tin họ tên khách hàng có trong hệ thống, với yêu cầu họ tên không trùng nhau.
-- Học viên sử dụng theo 3 cách khác nhau để thực hiện yêu cầu trên.

-- Cách 1
SELECT 
    `name`
FROM
    customer
GROUP BY `name`;

-- Cách 2
SELECT DISTINCT
    `name`
FROM
    customer;

-- cách 3
SELECT 
    `name`
FROM
    customer 
UNION SELECT 
    `name`
FROM
    customer;

    
-- Câu 9: Thực hiện thống kê doanh thu theo tháng
-- nghĩa là tương ứng với mỗi tháng trong năm 2021 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.
SELECT 
    MONTH(ct.start_date) AS `month`,
    COUNT(MONTH(ct.start_date)) AS amount_customer_booking
FROM
    contract ct
WHERE
    YEAR(ct.start_date) = 2021
GROUP BY `month`
ORDER BY `month`;


-- Câu 10: Hiển thị thông tin tương ứng với từng hợp đồng thì đã sử dụng bao nhiêu dịch vụ đi kèm. 
-- Kết quả hiển thị bao gồm mã hợp đồng, ngày làm hợp đồng, ngày kết thúc, tiền đặt cọc, số lượng dịch vụ đi kèm 
-- (được tính dựa trên việc sum số lượng ở bản dịch vụ đi kèm).
SELECT 
    ct.id,
    ct.start_date,
    ct.end_date,
    ct.deposit,
    SUM(amount) AS amount_facility_detail
FROM
    contract ct
        LEFT JOIN
    contract_detail ct_d ON ct.id = ct_d.contract_id
GROUP BY ct.id;


