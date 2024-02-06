create database myFirstDB;

use myFirstDB;

create table student(
stdID int identity(1,1) primary key,
stdName varchar(100) not null,
stdCNIC varchar(100),
contact varchar(100),
email varchar(100),
DOB date not null
);

insert into 
student (stdName,DOB)
values ('Haider Ali','10-Nov-1996');

select *
from student;

insert into 
student (stdName,stdCNIC,contact,email,DOB)
values ('Zainab','42201-1234567-2','0335-3266391','zainabkhanz@hotmail.com','1-Jun-1992');

truncate table student;

drop table student;

use master;

drop database myFirstDB;