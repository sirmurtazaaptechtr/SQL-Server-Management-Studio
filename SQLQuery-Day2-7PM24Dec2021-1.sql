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

alter table student add nationality varchar(100);

alter table student add address varchar(100);

alter table student drop column address;

alter table student 
add street varchar(100), city varchar(100), country varchar (100);

alter table student alter column DOB datetime not null;

sp_rename 'student','std_R';

select *
from std_R;

sp_rename 'std_R','student';

alter table student alter column contact varchar(100) not null;

alter table student add unique(contact,email);

alter table student add default 'Karachi' for  city;

insert into 
student (stdName,stdCNIC,contact,email,DOB)
values ('Zainab','42201-1234567-2','0335-3266391','zainabkhanz@hotmail.com','1-Jun-1992');

truncate table student;

alter table student add check (country = 'Pakistan' or country is null);

insert into 
student (stdName,stdCNIC,contact,email,DOB,country)
values ('Zainab','42201-1234567-2','0335-3266391','zainabkhanz@hotmail.com','1-Jun-1992','Pakistan');

-- single line comment

/*
Multiline 
Comment
*/

select *
from student;