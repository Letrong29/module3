USE college_student_management;

SELECT 
    address, COUNT(id) AS amount_student
FROM
    student
GROUP BY address;

SELECT 
    s.id, s.`name`, AVG(mark)
FROM
    student s
        JOIN
    mark m ON s.id = m.student_id
GROUP BY s.id , s.`name`;

SELECT 
    s.id, s.`name`, AVG(mark) AS diem_trung_binh
FROM
    student s
        JOIN
    mark m ON s.id = m.student_id
GROUP BY s.id , s.`name`
HAVING AVG(mark) > 15;

SELECT 
    s.id, s.`name`, AVG(mark) AS averager_point
FROM
    student s
        JOIN
    mark m ON s.id = m.student_id
GROUP BY s.id , s.`name`
HAVING AVG(mark) >= ALL (SELECT 
        AVG(mark)
    FROM
        mark
    GROUP BY student_id);


