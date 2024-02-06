create database mySampleDB;

use mySampleDB;

create table employee(
emp_id int identity(1,1) primary key,
emp_name varchar(100) not null,
emp_contact varchar(100) unique,
street varchar(100),
city varchar(100) default('Karachi'),
country varchar(100) default('Pakistan') check(country='Pakistan'),
salary money
);

insert into employee(emp_name,emp_contact,salary)
values('Rayyan','0300-8239541',200000),
('Ghazali','0312-2036438',50000),
('Rehman','0335-8106192',75000)

select *
from employee;

select *
from employee
where emp_id=2;