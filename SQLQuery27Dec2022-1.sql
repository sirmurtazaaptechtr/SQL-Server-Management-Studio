create database mySchool;
use mySchool;
create table student(
student_id int identity(1,1) primary key,
student_name varchar(200) not null,
student_address varchar(400)
);
create table seat(
seat_no int identity(1,1) primary key,
seat_position varchar(100) not null,
student_id int foreign key references student(student_id)
);
create table instructor(
instructor_no int identity(1,1) primary key,
instructor_name varchar(200) not null,
instructor_faculty varchar(200) not null
);
create table course(
course_number int identity(1,1) primary key,
course_name varchar(200) not null,
instructor_no int foreign key references instructor(instructor_no)
);
create table professor(
professor_id int identity(1,1) primary key,
professor_name varchar(200) not null,
professor_faculty varchar(200) not null
);
create table section(
section_number int identity(1,1) primary key,
professor_id int foreign key references professor(professor_id)
);
create table class(
class_id int identity(1,1) primary key,
course_number int foreign key references course(course_number),
section_number int foreign key references section(section_number),
num_registered int,
class_date_time datetime
);
create table student_takes_coures(
student_id int foreign key references student(student_id),
course_number int foreign key references course(course_number),
primary key(student_id,course_number)
);