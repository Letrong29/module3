DROP DATABASE IF EXISTS college_student_management;

CREATE DATABASE college_student_management;

USE college_student_management;

CREATE TABLE class (
    id INT AUTO_INCREMENT,
    `name` VARCHAR(60) NOT NULL,
    start_date DATETIME NOT NULL,
    `status` BIT,
    PRIMARY KEY (id)
);

CREATE TABLE student (
    id INT AUTO_INCREMENT,
    `name` VARCHAR(30) NOT NULL,
    address VARCHAR(30),
    phone VARCHAR(30),
    `status` BIT,
    class_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (class_id)
        REFERENCES class (id)
);

CREATE TABLE `subject` (
    id INT AUTO_INCREMENT,
    `name` VARCHAR(30) NOT NULL,
    credit TINYINT NOT NULL DEFAULT 1 CHECK (credit >= 1),
    `status` BIT DEFAULT 1,
    PRIMARY KEY (id)
);

CREATE TABLE mark (
    id INT AUTO_INCREMENT,
    subject_id INT NOT NULL,
    student_id INT NOT NULL,
    mark FLOAT DEFAULT 0 CHECK (mark BETWEEN 0 AND 10),
    exam_time TINYINT DEFAULT 1,
    PRIMARY KEY (id),
    UNIQUE (subject_id , student_id),
    FOREIGN KEY (subject_id)
        REFERENCES `subject` (id),
    FOREIGN KEY (student_id)
        REFERENCES student(id)
);