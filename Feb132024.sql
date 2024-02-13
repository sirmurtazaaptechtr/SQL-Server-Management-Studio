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

select CompanyName,City,Country
from Customers;

select distinct City 
from Customers;

select distinct ContactTitle,COUNT(CustomerID) AS #OfCustomers
from Customers
group by ContactTitle;

select distinct City,COUNT(CustomerID) AS #OfCustomers
from Customers
group by City;

select distinct Country,COUNT(CustomerID) AS #OfCustomers
from Customers
group by Country;

select *
from Customers
where Country = 'Brazil'

select *
from Customers
where ContactTitle = 'Owner' OR ContactTitle = 'Owner/Marketing Assistant';

select *
from Customers
where ContactTitle IN('Owner','Owner/Marketing Assistant');

select *
from Customers
where Country IN('USA','Mexico');

select * 
from Customers 
where Country = 'USA' OR ContactTitle = 'Owner';

select * 
from Customers 
where Country = 'USA' AND ContactTitle = 'Owner';

select * 
from Products
where UnitPrice <= 50
order by UnitPrice desc;

select * 
from Products
where UnitPrice BETWEEN 40 and 50
order by UnitPrice;

select *
from Products
where ProductName like 'R%';

select *
from Products
where QuantityPerUnit like '%jars%';

SELECT * FROM Customers
WHERE NOT Country = 'Spain'
order by Country;

SELECT * FROM Customers
WHERE Country NOT IN('Spain','USA','UK')
order by Country;

select *
from Customers
where Region IS NULL
order by Country,City;

select *
from Customers
where Region IS NOT NULL
order by Country,City;

select *
from Customers
order by City,ContactName;

SELECT * FROM Customers
ORDER BY Country ASC, ContactName DESC;


