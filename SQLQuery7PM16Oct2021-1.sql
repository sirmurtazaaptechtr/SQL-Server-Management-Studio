backup database AdventureWorks2019
to disk = 'E:\backup\AdventureWorks2019.bak'
WITH DIFFERENTIAL;

backup database Northwind
to disk = 'E:\backup\Northwind.bak'
WITH DIFFERENTIAL;

backup database mySampleDB
to disk = 'E:\backup\mySampleDB.bak'
WITH DIFFERENTIAL;

drop database AdventureWorks2019;
drop database Northwind;

use mySampleDB;

alter table employee add gender varchar(10);

update employee
set  gender ='M'
where emp_id in (4,5,6);

update employee
set street = 'Kashmir Road'
where emp_id = 1;

update employee
set street = 'Jamshed Road'
where emp_id = 3;

update employee
set street = 'Liaqat Abad'
where emp_id = 2;

insert into employee(emp_name,emp_contact,salary)
values('Faisal','0316-2738199',150000),
('Sameed','0311-1290881',250000),
('Yazdan','0317-2105279',175000)

create table dept(
dept_id int identity(1,1) primary key,
dept_name varchar(100) unique not null
);

create table emp_dept(
emp_id int not null references employee(emp_id),
dept_id int not null references dept(dept_id),
DOJ date
primary key(emp_id,dept_id)
);

select * from employee;

select * from dept;

select * from emp_dept;

insert into dept(dept_name)
values('Admin'),
('Marketing'),
('Human Resources'),
('Accounts'),
('Finance'),
('Sales'),
('Services'),
('Production');

insert into emp_dept(emp_id,dept_id,DOJ)
values(1,1,'15-Oct-2020');

insert into emp_dept(emp_id,dept_id,DOJ)
values(1,3,'15-Oct-2020');

--The INSERT statement conflicted with the FOREIGN KEY constraint
--insert into emp_dept(emp_id,dept_id,DOJ)
--values(2,10,'15-Oct-2020');