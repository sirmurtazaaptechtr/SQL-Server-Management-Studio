use PublicSchool;

select * from course;
select * from student;

use Northwind;

select * from Customers;

select ContactName, city, Country, Phone from Customers;

select * from Customers
where Country = 'Germany';

select * from Products;

select * from Products
where CategoryID = 2;

select * from [Order Details];

select * from [Order Details]
where OrderID = 10258;

select OrderID,ProductID,UnitPrice,Quantity,Discount,UnitPrice*Quantity*(1-Discount) as LineTotal
from [Order Details]
--where OrderID = 10258;
