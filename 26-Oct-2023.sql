use test_db;

CREATE TABLE CUSTOMERS(
ID INT IDENTITY(1,1) NOT NULL,
NAME VARCHAR (20) NOT NULL,
DOB DATE NOT NULL,
ADDRESS CHAR (25),
SALARY MONEY,
PRIMARY KEY (ID));

exec sp_columns customers;

drop table CUSTOMERS;

create table customers(
id int identity(1,1) not null,
name varchar (20) not null,
dob date not null,
address char (25),
salary money,
primary key (id));

insert into customers (name,dob)
values
('Rabia Asif','5-Dec-2007'),
('Sakina Qasim','2003-01-18'),
('Muhammad Khurram','3/11/2001');

select * from customers;

update customers
set dob = '11-Mar-2001'
where id = 3;

update customers
set dob = '5-Dec-2007'
where id = 1;

update customers
set dob = '2003-01-18'
where id = 2;

truncate table customers;

INSERT INTO CUSTOMERS (NAME,dob,ADDRESS,SALARY) 
VALUES ('Ramesh', '2003-01-18', 'Ahmedabad', 2000.00 );
  
INSERT INTO CUSTOMERS (NAME,DOB,ADDRESS,SALARY) 
VALUES ('Khilan', '2003-01-18', 'Delhi', 1500.00 );  

INSERT INTO CUSTOMERS (NAME,DOB,ADDRESS,SALARY) 
VALUES ('kaushik', '2003-01-18', 'Kota', 2000.00 );  

INSERT INTO CUSTOMERS (NAME,DOB,ADDRESS,SALARY) 
VALUES ('Chaitali', '2003-01-18', 'Mumbai', 6500.00 ); 
 
INSERT INTO CUSTOMERS (NAME,DOB,ADDRESS,SALARY) 
VALUES ('Hardik', '2003-01-18', 'Bhopal', 8500.00 );  

INSERT INTO CUSTOMERS (NAME,DOB,ADDRESS,SALARY) 
VALUES ('Komal', '2003-01-18', 'MP', 4500.00 );

select name,address from customers;

update customers
set address = 'Khudadad Colony', salary = 2500.50
where id = 2;

select * from customers;

delete from customers
where id = 8;

select * from customers where salary > 2000;

select * from customers where name = 'komal';

select * from customers where name like 'k%';

select * from customers where name like '% k%';

select * from customers;
select * from customers order by name;

INSERT INTO CUSTOMERS (NAME,DOB,ADDRESS,SALARY) 
VALUES ('Komal', '2003-02-18', 'PIB Colony', 6500.00 );

select * from customers order by name, salary desc;

update customers
set address = 'MP'
where id in(3,1) 

update customers
set address = 'Kota'
where id in(11,5) 

update customers
set salary = 2040
where id = 1; 

select address,SUM(salary) as TotalPayout
from customers
group by address
having sum(salary) > 5000
order by sum(salary);

select distinct address from customers;

use Northwind;

select p.ProductName,c.CategoryName,s.Address from Products as p
INNER JOIN Categories as c
ON p.CategoryID = c.CategoryID
INNER JOIN Suppliers as s
ON p.SupplierID = s.SupplierID;

