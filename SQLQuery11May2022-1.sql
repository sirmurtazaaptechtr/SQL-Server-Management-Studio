create database MyDB;

use MyDB;

create table person(
ID int identity(1,1) primary key,
FullName varchar(200) not null,
Gender varchar(10),
DOB date,
Contact varchar(50),
Address varchar(800)
);

alter table person drop column address;

alter table person add Street varchar(100);

alter table person 
add
Area varchar(100),
City varchar(100),
State varchar(100),
Country varchar(100);

select *
from person;

insert into person(FullName,Gender,DOB,City,Country)
values('Abdullah Khan','Male','12-July-2001','Karachi','Pakistan');

insert into person(FullName,Gender,DOB,City,Country)
values('Huzaifa Ali','Male','23-Aug-2003','Karachi','Pakistan');

insert into person(FullName,Gender,DOB,City,Country)
values('Saima Younus','Male','10-Aug-1980','Karachi','Pakistan');

update person
set Gender = 'Female'
where ID = 3;

update person
set Contact = '0317-2251680'
where ID = 1;

insert into person(FullName,Gender,DOB,City,Country)
values('Younus Khan','Male','10-Aug-1980','Karachi','Pakistan');

delete from person
where ID = 4;

select * from dept;

alter table person add deptID int references dept(ID); 
