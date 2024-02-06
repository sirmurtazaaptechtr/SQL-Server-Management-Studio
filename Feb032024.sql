create database student_db;

use student_db;

create table students (
id int identity(1,1) primary key,
name varchar(max) not null,
email varchar(max),
contact varchar(20),
dob date,
gender varchar(20)
);

alter table students drop column name;

alter table students add 
firstname varchar(50) not null,
middlename varchar(50),
lastname varchar(50);

select * from students;

insert into students
values
('khanyusra550@gmail.com','0319-4739662','19-Nov-2005','female','Sardar','Yusra','Khan');

insert into students
values
('abdulqadirumaima10@gmail.com','0334-1681079','18-Aug-2003','female','Umaima','Abdul','Qadir'),
('ayeasahakhan@gmail.com','0319-7930113','31-Dec-1999','female','Ayesha','','Khan'),
('huzaifa200054@gmail.com','0332-2471107','04-Sep-2005','male','Muhammad','Huzaifa','Khan'),
('','','1-Jan-2007','male','Hassan','','Raza');