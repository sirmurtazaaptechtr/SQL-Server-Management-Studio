backup database Feb062024_db
to disk = 'd:\backups\Feb062024_db.bak';

use master;

drop database Feb062024_db;

restore database Feb062024_db
from disk = 'd:\backups\Feb062024_db.bak';

use Feb062024_db;

select * from users;

use northwind;

select * from Categories;
select * from CustomerCustomerDemo;
select * from CustomerDemographics;
select * from Customers;
select * from Employees;
select * from EmployeeTerritories;
select * from [Order Details];
select * from Orders;
select * from Products;
select * from Region;
select * from Shippers;
select * from Suppliers;
select * from Territories;

SELECT ContactName, City FROM Customers;

select country from customers;

select distinct country from customers;

select distinct ContactTitle from Customers;

select COUNT(distinct city) as CountOfCities from Customers;

select * from Customers
where ContactTitle = 'Owner'

select * from Products
where UnitPrice <= 10;

SELECT * FROM Products
WHERE UnitPrice BETWEEN 50 AND 60;

SELECT * FROM Customers
WHERE City LIKE 'sa%';

SELECT * FROM Customers
WHERE City IN ('Paris','London');

select * from Suppliers
order by CompanyName;

select * from Suppliers
order by CompanyName desc;

SELECT * FROM Customers
ORDER BY Country, ContactName;

SELECT * FROM Customers
ORDER BY Country desc, City asc;

SELECT *
FROM Customers
WHERE Country = 'Spain' AND ContactName LIKE 'M%';

SELECT *
FROM Customers
WHERE Country = 'Spain' OR ContactName LIKE 'M%';

SELECT * FROM Customers
WHERE NOT Country = 'Spain'
order by Country;

SELECT * FROM Customers
WHERE ContactName NOT LIKE 'A%'
order by ContactName;

SELECT * FROM Customers
WHERE City NOT IN ('Paris', 'London')
order by city;



