use Northwind;
select EmployeeID,COUNT(Freight) as TotalOrders,SUM(Freight) as TotalFreight
from Orders
--where SUM(Freight)>5000
group by EmployeeID
having  SUM(Freight)>5000
order by EmployeeID;
SELECT Country, COUNT(CustomerID) as TotalCustomers
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
order by Country, COUNT(CustomerID) DESC;
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE LastName = 'Davolio' OR LastName = 'Fuller'
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 25;
SELECT CompanyName
FROM Suppliers
WHERE EXISTS 
(SELECT ProductName 
FROM Products 
WHERE Products.SupplierID = Suppliers.supplierID AND UnitPrice < 20);
SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID FROM [Order Details] WHERE Quantity = 10);
SELECT ProductName
FROM Products
WHERE ProductID = ALL
  (SELECT ProductID FROM [Order Details] WHERE Quantity = 10);
select CURRENT_TIMESTAMP;
select * from Orders;
select OrderID,OrderDate,DAY(OrderDate) as DOM,ShippedDate from Orders;
select OrderID,OrderDate,Month(OrderDate) as MOY,ShippedDate from Orders;
select OrderID,OrderDate,Year(OrderDate) as YOC,ShippedDate from Orders;
select OrderID,OrderDate,
DATEDIFF(DAY,OrderDate,ShippedDate) as DaystoDeliver,ShippedDate
from Orders;
select DATEDIFF(year,'23-Aug-2003',CURRENT_TIMESTAMP) as BirthDay;
use AdventureWorks2019;

select * 
from Person.Person;

select FirstName,MiddleName,LastName,
FirstName+' '+MiddleName+' '+LastName as fullName
from Person.Person
where MiddleName is null;

select FirstName,MiddleName,LastName,
FirstName+' '+MiddleName+' '+LastName as fullName
from Person.Person
where MiddleName is not null;

select FirstName,MiddleName,LastName,
CONCAT(FirstName,' ',MiddleName,' ',LastName) as FullName
from Person.Person;

select FirstName,MiddleName,LastName,
CONCAT(FirstName,' ',MiddleName,' ',LastName) as FullName
from Person.Person
where MiddleName is null;

