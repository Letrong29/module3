create schema student_management;
create table student_management.student(
id int not null,
name_student varchar(45) null,
age int null,
country varchar(45) null,
primary key(id)
);