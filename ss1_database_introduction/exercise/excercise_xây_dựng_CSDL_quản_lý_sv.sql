DROP DATABASE IF EXISTS student_management;

CREATE DATABASE student_management;

USE student_management;

CREATE TABLE student_management.student (
    id INT NOT NULL,
    name_student VARCHAR(45) NULL,
    age INT NULL,
    country VARCHAR(45) NULL,
    PRIMARY KEY (id)
);

CREATE TABLE student_management.class (
    id INT AUTO_INCREMENT,
    name_class VARCHAR(45),
    PRIMARY KEY (id)
);

CREATE TABLE student_management.teacher (
    id INT AUTO_INCREMENT,
    name_teacher VARCHAR(45),
    age INT,
    country VARCHAR(45),
    PRIMARY KEY (id)
);

INSERT INTO class(name_class) 
VALUE ("C0422G1"),("C0522G1");

INSERT INTO teacher(name_teacher, age, country) 
VALUE ("HaiTT", 24, "da nang"), ("TienNVT", 27, "da nang");

UPDATE class 
SET class.name_class = "C0322G1" WHERE id = 1;

UPDATE class 
SET class.name_class = "C0422G1" WHERE id = 1;