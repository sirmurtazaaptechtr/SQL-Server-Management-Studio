create database MyCompany;
use MyCompany;
create table employee(
empID int identity(1,1) primary key,
fullName varchar(50) not null,
dob date,
PPN varchar(20),
DLN varchar(20),
CNIC varchar(20),
cell varchar(20),
email varchar(100)
);
create table dept(
deptID int identity(1,1) primary key,
deptName varchar(50) not null
);
alter table employee add gender varchar(10),city varchar(50),country varchar(50);
alter table employee add deptID int references dept(deptID);
ALTER TABLE employee ADD CONSTRAINT df_City DEFAULT 'Karachi' FOR City;
ALTER TABLE employee ADD CHECK (country='Pakistan');

insert into dept(deptName)
values ('Admin'),('Marketing'),('Accounts'),('Production'),('Sales');
select *
from dept;
insert into employee(fullName,dob,cell,deptID,country,gender)
values
('Muhammad Konain','22-Jun-2007','0332-2445719',1,'Pakistan','Male'),
('Muhammad Raza','21-Jan-2006','0317-2617137',3,'Pakistan','Male'),
('Muhammad Irtaza','25-May-2008','0332-2690667',2,'Pakistan','Male'),
('Ahmed Abbas','30-May-2006','0334-5366292',5,'Pakistan','Male'),
('Abdullah Iqbal','14-May-2004','0335-7196408',4,'Pakistan','Male');
select *
from employee;
truncate table employee;
drop table employee;
drop table dept;
truncate table dept;
use master;
drop database MyCompany;

select fullName,dob
from employee;

use Northwind;

select * 
from customers;

select contactname,city
from customers;

select City
from Customers;

select distinct City
from Customers;