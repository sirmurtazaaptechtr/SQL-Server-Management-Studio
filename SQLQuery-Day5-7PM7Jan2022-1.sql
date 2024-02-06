use Northwind;
select * from Products;

select SUM(UnitPrice*UnitsInStock) as StockWorth
from Products;

select AVG(UnitPrice) as AveragePrice
from Products;

SELECT MIN(UnitPrice) AS SmallestPrice
FROM Products;

select MAX(UnitPrice) as Expensive
from Products;

SELECT COUNT(ProductID)
FROM Products;

select SupplierID,SUM(UnitPrice*UnitsInStock) as TotalPayable
from Products
group by SupplierID
having SupplierID=1;

SELECT * FROM Customers;

SELECT * FROM Customers
--WHERE Country IN ('Germany', 'France', 'UK');
WHERE City IN ('London');

select * from Customers;

select distinct Country from Customers;

SELECT * FROM Customers
WHERE Country IN (SELECT distinct Country FROM Suppliers);

SELECT * FROM Customers
WHERE Country NOT IN (SELECT distinct Country FROM Suppliers);

SELECT * FROM Products;

SELECT * FROM Products
WHERE UnitPrice BETWEEN 1 AND 10;

SELECT * FROM Products
WHERE UnitPrice BETWEEN 10 AND 20
AND CategoryID NOT IN (1,2,3);

select * from Orders;

SELECT * FROM Orders
WHERE OrderDate BETWEEN '07/01/1996' AND '07/07/1996';

select * from orders;
select * from Customers;

--Inner Join
select Orders.OrderID,Customers.ContactName,Orders.OrderDate 
from Orders inner join Customers
ON Orders.CustomerID=Customers.CustomerID;

use AdventureWorks2019;

select * from Person.Person;

select * from Person.BusinessEntityAddress;

select * from Person.Address;

select
pp.BusinessEntityID,CONCAT(pp.FirstName,' ',pp.MiddleName,' ',pp.LastName)as fullName,
pbea.AddressID,
pa.AddressLine1,pa.City,pa.PostalCode
from person.person as pp
inner join Person.BusinessEntityAddress as pbea on pp.BusinessEntityID=pbea.BusinessEntityID
inner join Person.Address as pa on pbea.AddressID=pa.AddressID
order by pp.BusinessEntityID;

--full outer Join

select 
pp.BusinessEntityID,CONCAT(pp.FirstName,' ',pp.MiddleName,' ',pp.LastName)as fullName,
pbea.BusinessEntityID 
from Person.Person as pp
full outer join Person.BusinessEntityAddress as pbea
on pp.BusinessEntityID=pbea.BusinessEntityID
order by pbea.BusinessEntityID, pp.BusinessEntityID;

select
pp.BusinessEntityID,CONCAT(pp.FirstName,' ',pp.MiddleName,' ',pp.LastName)as fullName,
pbea.AddressID,
pa.AddressLine1,pa.City,pa.PostalCode
from person.person as pp
full outer join Person.BusinessEntityAddress as pbea on pp.BusinessEntityID=pbea.BusinessEntityID
full outer join Person.Address as pa on pbea.AddressID=pa.AddressID
order by pp.BusinessEntityID;

--left join

select pp.BusinessEntityID,
CONCAT(pp.FirstName,' ',pp.MiddleName,' ',pp.LastName)as fullName,
pbea.BusinessEntityID 
from Person.Person as pp
left join Person.BusinessEntityAddress as pbea
on pp.BusinessEntityID=pbea.BusinessEntityID
order by pbea.BusinessEntityID;

--right join

select pp.BusinessEntityID,
CONCAT(pp.FirstName,' ',pp.MiddleName,' ',pp.LastName)as fullName,
pbea.BusinessEntityID 
from Person.Person as pp
right join Person.BusinessEntityAddress as pbea
on pp.BusinessEntityID=pbea.BusinessEntityID
order by pbea.BusinessEntityID;