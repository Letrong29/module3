
create table student_management.class(
id int auto_increment,
name_class varchar(45),
primary key(id)
);

create table student_management.teacher(
id int auto_increment,
name_teacher varchar(45),
age int,
country varchar(45),
primary key(id)
);

insert into class(name_class) value ("C0422G1"),("C0522G1");

insert into teacher(name_teacher, age, country) value ("HaiTT", 24, "da nang"), ("TienNVT", 27, "da nang");

update class set class.name_class = "C0322G1" where id = 1;

update class set class.name_class = "C0422G1" where id = 1;