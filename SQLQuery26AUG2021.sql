use AdventureWorks2019;
select * from Person.Person where FirstName='Syed';
select BusinessEntityID,CONCAT(FirstName,' ',MiddleName,' ',LastName)as FullName from Person.Person;
--Stored Procedure # 1
create procedure PersonFullName
as
select BusinessEntityID,CONCAT(FirstName,' ',MiddleName,' ',LastName)as FullName 
from Person.Person;
--Stored Procedure # 2
create procedure SelectedFullName @a int
as
select BusinessEntityID,CONCAT(FirstName,' ',MiddleName,' ',LastName)as FullName 
from Person.Person
where BusinessEntityID = @a;
--Call Procedure
execute PersonFullName;
execute SelectedFullName 295;
execute SelectedFullName 285;
--Drop Procedure
drop procedure PersonFullName;
drop procedure SelectedFullName;
drop procedure PersonFullName,SelectedFullName;

create database SampleDB;

USE SampleDB;

CREATE TABLE Employees(
EmployeeID      INT IDENTITY(1,1) PRIMARY KEY,
EmployeeName    VARCHAR(50) NOT NULL,
EmployeeAddress VARCHAR(50) NOT NULL,
MonthSalary     NUMERIC(10,2) NOT NULL
);

INSERT INTO dbo.Employees
(
    EmployeeName,
    EmployeeAddress,
    MonthSalary
)
VALUES
(   'Mark Smith',    
    'Ocean Dr 1234', 
    10000            
    ),
(   'Joe Wright',    
    'Evergreen 1234',
    10000            
),
(   'John Doe',             
    'International Dr 1234',
    10000                   
),
(   'Peter Rodriguez', 
    '74 Street 1234',  
    10000              
);

select *
from dbo.Employees;

create trigger tgr1
on dbo.employees
for
insert
as
select *
from dbo.Employees desc;

INSERT INTO dbo.Employees ( EmployeeName , EmployeeAddress ,MonthSalary )
VALUES ( 'Paul Martinez' , '22 Street 4217', 4000);

drop trigger tgr1;

INSERT INTO dbo.Employees ( EmployeeName , EmployeeAddress ,MonthSalary )
VALUES ( 'Shahmir' , 'Flat No 607', 5000);
