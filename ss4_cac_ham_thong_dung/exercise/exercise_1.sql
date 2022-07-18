USE college_student_management;

SELECT 
    *
FROM
    `subject`
WHERE
    credit = (SELECT 
            MAX(credit)
        FROM
            `subject`);

SELECT 
    sub.`name` AS ten_mon_hoc, MAX(mark) AS diem_thi_cao_nhat
FROM
    `subject` sub
        JOIN
    mark m ON sub.id = m.subject_id
GROUP BY subject_id;

SELECT 
    s.*, AVG(mark) AS diem_trung_binh
FROM
    student s
        JOIN
    mark m ON s.id = m.student_id
GROUP BY student_id
ORDER BY AVG(mark) DESC;


