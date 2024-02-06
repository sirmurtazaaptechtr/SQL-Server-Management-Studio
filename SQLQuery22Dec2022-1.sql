use std_DB;

select * 
from students;

use Northwind;

select *
from Customers;

select CustomerID,CompanyName,ContactName,ContactTitle,City 
from Customers;

SELECT Country FROM Customers;
SELECT distinct Country FROM Customers;

select CompanyName from Customers;
select distinct CompanyName from Customers;

select ContactTitle from Customers;
select distinct ContactTitle from Customers;

select Phone from Customers;
select distinct Phone from Customers;


select CompanyName,ContactName,ContactTitle,City 
from Customers
where Country='Germany';

select CompanyName,ContactName,ContactTitle,City 
from Customers
where Country='Mexico';

select CompanyName,ContactName,ContactTitle,City,Country 
from Customers
where ContactTitle='Owner' or ContactTitle='Owner/Marketing Assistant';

SELECT * FROM Customers
WHERE Country='Germany' AND City='Berlin'OR City='München';

SELECT * FROM Customers
WHERE Country='Germany' OR Country='Spain';