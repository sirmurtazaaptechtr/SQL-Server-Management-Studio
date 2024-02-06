use Northwind;

SELECT OrderID, Quantity,
CASE
    WHEN Quantity > 30 THEN 'The quantity is greater than 30'
    WHEN Quantity = 30 THEN 'The quantity is 30'
    ELSE 'The quantity is under 30'
END AS QuantityText
FROM [Order Details];

SELECT ContactName, City, Country
FROM Customers
ORDER BY
(CASE
    WHEN City IS NULL THEN Country
    ELSE City
END);

select * from Products;

--ProductID = 2, UnitsInStock = 17 to NULL
update Products
set UnitsInStock = NULL
where ProductID = 2;

SELECT ProductName, UnitPrice * (UnitsInStock + UnitsOnOrder) as TotalValue
FROM Products;

SELECT ProductName, UnitPrice * (ISNULL(UnitsInStock, 0) + ISNULL(UnitsOnOrder, 0)) as TotalValue
FROM Products;

update Products
set UnitsInStock = 17
where ProductID = 2;

select * from Customers;

create procedure SelectAllCustomers
as
select * from Customers;

execute SelectAllCustomers;

select * 
from Customers
where City = 'Berlin' OR Country = 'UK';

create procedure SelectCustomers @City nvarchar(15),@Country nvarchar(15)
as
select * 
from Customers
where City = @City OR Country = @Country;

execute SelectCustomers NULL,'UK';

execute SelectCustomers 'London','Germany';

SELECT * FROM Orders;

SELECT * FROM Orders WHERE OrderDate='1996-07-08';

SELECT * FROM Orders WHERE OrderDate between '1996-07-01' and '1996-07-31';

select OrderID,OrderDate,ShippedDate,DATEDIFF(DAY,OrderDate,ShippedDate) as delayInDays from Orders

SELECT GETDATE() as Today;

CREATE VIEW [Brazil Customers] AS
SELECT * 
FROM Customers
WHERE Country = 'Brazil';

select * from [Brazil Customers];