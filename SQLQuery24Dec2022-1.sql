use Northwind;

select * from Customers;

select *
from Customers
order by City asc;

select *
from Customers
order by Country asc, city asc, CompanyName asc;

SELECT * FROM Customers
ORDER BY Country ASC, ContactName DESC;

select * from Customers
where Fax is null;

select * from Customers
where Region is null;

select * from Customers
where Region is null or Fax is null;

select * from Customers
where Region is null and Fax is null;

use std_DB;

select *
from students;

alter table students
add gender varchar(10);

update students
set gender = 'female'
where stdID in (4,5);
