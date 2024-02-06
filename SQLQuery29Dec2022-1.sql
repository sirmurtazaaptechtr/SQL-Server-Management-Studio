use Northwind;

select * from Customers;

select top 10 * from Customers;

select * from Customers
where ContactTitle = 'Sales Representative';

select top 10 * from Customers
where ContactTitle = 'Sales Representative';

SELECT TOP 50 PERCENT * FROM Customers
where ContactTitle = 'Sales Representative';

select * from Products;

select MIN(UnitPrice) as sub_Se_Sasta
from Products;

select MAX(UnitPrice) as sub_Se_Mehanga
from Products;

select ProductName,UnitPrice from Products
where UnitPrice = (select MIN(UnitPrice) from Products);

select COUNT(ProductName) from Products
where SupplierID = 8;

SELECT COUNT(ProductID) FROM Products;

SELECT AVG(UnitPrice) FROM Products;

select * from [Order Details];

SELECT SUM(Quantity) as TotalOrderedProducts
FROM [Order Details];

SELECT * FROM Customers
WHERE ContactName LIKE '%jose%';

SELECT * FROM Customers
WHERE ContactName LIKE '_r%';

SELECT * FROM Customers
WHERE ContactName LIKE '__i%';

SELECT * FROM Customers
WHERE ContactName LIKE '____ %';

SELECT * FROM Customers
WHERE City LIKE 'L_n_on';

SELECT * FROM Customers
WHERE City LIKE '[bsp]%';

SELECT * FROM Customers
WHERE City LIKE '[a-c]%' 
order by city asc;

SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

SELECT distinct Country FROM Customers
WHERE Country IN (SELECT Country FROM Suppliers)
order by Country;

select country from Customers;

select CustomerID from Customers where Country='Canada';

select * from orders;

select * from Suppliers
where SupplierID in (select SupplierID from Products
where ProductID in (select ProductID from [Order Details]
where OrderID in (select orderid from Orders 
where ShipCountry = 'canada')))
order by Country;

SELECT * FROM Products
WHERE UnitPrice BETWEEN 10 AND 20
order by UnitPrice;

SELECT * FROM Products
WHERE UnitPrice NOT BETWEEN 10 AND 20
order by UnitPrice;

SELECT * FROM Products
WHERE UnitPrice BETWEEN 10 AND 20
AND CategoryID NOT IN (1,2,3);

SELECT * FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

SELECT * FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';