use Northwind;

select * from Customers;
select * from Orders;
select * from Employees;

select Country,COUNT(CustomerID) as Customers 
from Customers
--where COUNT(CustomerID) >= 5
group by Country
having COUNT(CustomerID) >= 5;

SELECT Country, COUNT(CustomerID) as Customers
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) >= 5
ORDER BY COUNT(CustomerID) DESC;

select CONCAT(emp.FirstName,' ',emp.LastName) as FullName,COUNT(odr.OrderID) as TotalOrders 
from Orders as odr inner join  Employees as emp on odr.EmployeeID = emp.EmployeeID
group by CONCAT(emp.FirstName,' ',emp.LastName) 
having COUNT(odr.OrderID) >= 100;

SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE LastName = 'Davolio' OR LastName = 'Fuller'
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 25;

SELECT ContactName as SupplierName
FROM Suppliers
WHERE EXISTS 
(
SELECT ProductName 
FROM Products 
WHERE Products.SupplierID = Suppliers.supplierID AND UnitPrice < 20
);

SELECT ProductName
FROM Products
WHERE ProductID = ANY
(
SELECT ProductID
FROM [Order Details]
WHERE Quantity = 20
);

SELECT ProductName
FROM Products
WHERE ProductID = ANY
(
SELECT ProductID
FROM [Order Details]
WHERE Quantity > 99
);


SELECT ProductName
FROM Products
WHERE ProductID = ALL
(
SELECT ProductID
FROM [Order Details]
WHERE Quantity = 20
);

USE [Northwind]
GO

/****** Object:  Table [dbo].[CustomersBackup2022]    Script Date: 1/7/2023 2:56:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CustomersBackup2022](
	[CustomerID] [nchar](5) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](30) NULL,
	[ContactTitle] [nvarchar](30) NULL,
	[Address] [nvarchar](60) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Country] [nvarchar](15) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL,
 CONSTRAINT [PK_CustomersBackup2022] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

select * from Customers;
select * from CustomersBackup2022;
select * from ShortCustomersBackup2022 ;

drop table CustomersBackup2022;

select * 
into CustomersBackup2022
from Customers;

select  CustomerID,CompanyName,ContactName,ContactTitle,City,Country
into ShortCustomersBackup2022
from Customers;
