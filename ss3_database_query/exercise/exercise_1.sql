use college_student_management;

SELECT 
    *
FROM
    student
WHERE
    student.`name` LIKE 'h%';

SELECT 
    *
FROM
    class
WHERE
    MONTH(start_date) = 12;

SELECT 
    *
FROM
    `subject`
WHERE
    credit BETWEEN 3 AND 5;

SET sql_safe_updates = 0;
UPDATE student 
SET 
    class_id = '2'
WHERE
    `name` = 'Hung';
SET sql_safe_updates = 1;

SELECT 
    s.`name` AS student_name,
    m.mark AS mark,
    sub.`name` AS subject_name
FROM
    student s
        JOIN
    mark m ON m.student_id = s.id
        JOIN
    `subject` sub ON m.subject_id = sub.id
ORDER BY m.mark DESC , s.`name`;
