USE college_student_management;

SELECT * 
FROM student;

SELECT * 
FROM student
WHERE `status` = TRUE;

SELECT *
FROM `subject`
WHERE credit < 10;

SELECT student.id, student.`name` AS name_student, class.`name` AS name_class
FROM student JOIN class ON student.class_id = class.id
WHERE class.`name` = 'A1'; 

SELECT student.id, student.`name` AS name_student, mark.mark, `subject`.`name`
FROM student 
JOIN mark 
ON student.id = mark.id
JOIN `subject` 
ON mark.id = `subject`.id;

SELECT student.id, student.name, subject.name AS sub_name, mark.mark
FROM student
JOIN mark
ON student.id = mark.id
JOIN subject
ON student.id = subject.id
WHERE subject.name = "CF";


 