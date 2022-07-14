DROP DATABASE IF EXISTS test_score_management;

CREATE DATABASE test_score_management;

USE test_score_management;

CREATE TABLE student (
    id VARCHAR(20),
    `name` VARCHAR(50),
    day_of_birth DATETIME,
    class VARCHAR(20),
    gender VARCHAR(20),
    PRIMARY KEY (id)
);

CREATE TABLE `subject` (
    id VARCHAR(20),
    `name` VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE transcript (
    student_id VARCHAR(20),
    subject_id VARCHAR(20),
    test_score INT,
    test_day DATETIME,
    PRIMARY KEY (student_id , subject_id),
    FOREIGN KEY (student_id)
        REFERENCES student (id),
    FOREIGN KEY (subject_id)
        REFERENCES `subject` (id)
);

CREATE TABLE teacher (
    id VARCHAR(20),
    `name` VARCHAR(20),
    phone_number VARCHAR(20),
    PRIMARY KEY (id)
);

ALTER TABLE `subject` 
ADD teacher_id VARCHAR(20);

ALTER TABLE `subject` 
ADD CONSTRAINT fk_teacher_id FOREIGN KEY(teacher_id) REFERENCES teacher(id);

