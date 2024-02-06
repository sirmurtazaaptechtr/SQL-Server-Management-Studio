create database PublicSchool;

use PublicSchool;

create table student(
student_id int,
student_Name varchar(100),
dob date,
student_address varchar(200)
);

create table course(
course_no int,
course_Name varchar(100),
course_Duration int
);