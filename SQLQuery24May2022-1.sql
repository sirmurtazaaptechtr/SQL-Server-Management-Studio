use Northwind;

select * from Customers;
select Country from Customers;
select distinct Country from Customers;
select distinct Country from Customers order by Country;
select distinct Country from Customers order by Country desc;

select * from Products;
select ProductName,UnitPrice from Products;
select ProductName,UnitPrice from Products where Discontinued = 0;
select ProductName,UnitPrice from Products where Discontinued = 0 order by UnitPrice;
select ProductName,UnitPrice from Products where Discontinued = 0 order by UnitPrice desc;
select * from Customers order by Country asc, CompanyName desc;
select * from Customers where Fax is null;

SELECT TOP 10 * FROM Customers;
SELECT TOP 6 * FROM Customers WHERE Country='Germany';

select * from products;
select MIN(UnitPrice) as "Cheapest item's Price" from Products;
select MAX(UnitPrice) as "Most Expensive item's Price" from Products;
SELECT COUNT(ProductID) FROM Products;
SELECT AVG(UnitPrice) FROM Products;
select SUM(UnitsInStock) as "Total Products in Stock" from Products;