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
alter table student 
drop column 
student_address;
alter table student
add
streetNo varchar(200);
alter table student
add 
city varchar(100) default('Karachi'),
country varchar(100) check(country='Pakistan');
alter table student
alter column
student_id int not null;
alter table student
add
constraint PK_student_stdid primary key(student_id);

alter table student
alter column
student_Name varchar(100) not null;