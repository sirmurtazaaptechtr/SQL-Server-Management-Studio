create database tts7pm_db;
use tts7pm_db;
create table employees (
id int identity(1,1) primary key,
name varchar(50) not null,
email varchar(50) unique,
dob date,
salary money,
address varchar(200),
city varchar(30) default 'Karachi',
country varchar(30) default 'Pakistan'
);
create table departments (
id int identity(1,1) primary key,
dept_name varchar (30) not null,
description varchar (100)
);
alter table employees
add dept_id int references departments(id);
insert into departments (dept_name)
values
('Administration'),
('Sales'),
('Marketing'),
('Human Resource'),
('Production');
select * from departments;
insert into employees (name,email,dob,salary,dept_id) values
('Kinza Danish','kinzadanish44@gmail.com','8-Apr-2003',2500.0,1),
('Ahsan Khan','ahsankhan@gmail.com','2002-07-20',3500,4),
('Rohaan Hussain','rohaanhussain59@gmail.com','6/12/2003',4500,2),
('Hunain Ali','hunainshahzafarshah6@gmail.com','2005-Oct-14',1500,3);
select * from employees;
update employees
set dob = '12/6/2003'
where id = 3;
insert into employees (name,email,address) values
('Yaseen Afridi','yaseen@gmail.com','Layari'),
('Shayan Ahmed','shayan@outlook.com','Malir'),
('Shahid Afridi','shahid@hotmail.com','Gulshan');
delete 
from employees where id = 9;
select * 
from employees where address is null;
select *
from employees where salary > 2000;
select *
from employees where name = 'Ahsan Khan';
select *
from employees where name Like '% Khan';
select *
from employees order by name desc;
select *
from employees
order by name, salary desc;
insert into employees(dept_id,name,email,city,salary) 
values
(1, 'Ramesh','ramesh@email.com', 'Ahmedabad', 2000.00 ),  
(1, 'Khilan','khilan@email.com', 'Delhi', 1500.00 ),
(3, 'kaushik','kaushik@email.com', 'Kota', 2000.00 ),
(4, 'Chaitali','chaitali@email.com', 'Mumbai', 6500.00 ),
(2, 'Hardik','hardik@email.com', 'Bhopal', 8500.00 ),
(5, 'Komal','komal@email.com', 'MP', 4500.00 );

update employees
set country = 'India'
where id in (10,11,12,13,14,15);

update employees
set dept_id = 5
where id in (7,8);

select dept_id,sum(salary) as TotalPayout
from employees
group by dept_id;

select country,count(id) as TotalEmployees
from employees
group by country;

select city,count(id) as TotalEmployees
from employees
group by city;

select e.id,e.name,e.salary,e.city,e.country,d.dept_name 
from employees as e
join departments as d on e.dept_id = d.id;

select d.dept_name,sum(e.salary) as TotalPayout 
from employees as e
join departments as d on e.dept_id = d.id
group by d.dept_name
order by sum(e.salary) desc;

create procedure dept_salary
as
select d.dept_name,sum(e.salary) as TotalPayout 
from employees as e
join departments as d on e.dept_id = d.id
group by d.dept_name
order by sum(e.salary) desc
GO

use mwf3pm_db;
exec dept_salary;

use Northwind

backup database Northwind
to disk = 'D:\backups\northwind.bak';

backup database mwf3pm_db
to disk = 'D:\backups\mwf3pm_db.bak';

CREATE PROCEDURE SelectCustomers @City nvarchar(15)
AS
SELECT * FROM Customers WHERE City = @City
GO

exec SelectCustomers @City = 'London';

drop procedure SelectCustomers;