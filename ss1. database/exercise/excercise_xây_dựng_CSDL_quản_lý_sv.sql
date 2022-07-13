
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

insert into class(name_class) 
value ("C0422G1"),("C0522G1");

insert into teacher(name_teacher, age, country) 
value ("HaiTT", 24, "da nang"), ("TienNVT", 27, "da nang");

update class 
set class.name_class = "C0322G1" where id = 1;

update class 
set class.name_class = "C0422G1" where id = 1;