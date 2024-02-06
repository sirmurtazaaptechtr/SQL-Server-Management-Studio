create database school;

use school;

create table teachers(
id int identity(1,1) primary key,
name varchar(50),
address varchar(100),
salary int);

select * from teachers;

insert into teachers (name,address,salary)
values
('Syed Murtaza Hussain','Flat # ','240000');