use AdventureWorks2019;
select * 
from Production.ProductDescription;

--Trigger in SQL
create database SampleDB;

use SampleDB;
create table Employees(
EmployeeID      int identity(1,1) primary key,
EmployeeName    varchar(50) not null,
EmployeeAddress varchar(50) not null,
MonthSalary     numeric(10,2) not null
);
insert into Employees
	(EmployeeName,EmployeeAddress,MonthSalary)
values
	('Mark Smith','Ocean Dr 1234',10000),
	('Joe Wright','Evergreen 1234',10000),
	('John Doe','International Dr 1234',10000),
	('Peter Rodriguez','74 Street 1234',10000);
select *
from Employees;
--insert trigger on Employees Table
create trigger emp_insert_tr
on Employees
for insert
as
select * from Employees;
--delete trigger on Employees Table
create trigger emp_del_tr
on Employees
after delete
as
select * from Employees;
insert into Employees
	(EmployeeName,EmployeeAddress,MonthSalary)
values('Abdullah Suri','PECHS Block 2',15000);
insert into Employees
	(EmployeeName,EmployeeAddress,MonthSalary)
values('Suri','Block 2',150);
delete from Employees
where EmployeeID = 6;
drop trigger emp_del_tr,emp_insert_tr;