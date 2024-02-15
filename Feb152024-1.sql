use northwind;

select * from Products;
select * from Suppliers;
select * from Categories;

select *
from Products P
INNER JOIN Suppliers S ON P.SupplierID = S.SupplierID
INNER JOIN Categories C ON P.CategoryID = C.CategoryID

select P.ProductID,P.ProductName,P.UnitsInStock,C.CategoryName,S.CompanyName,S.ContactName,S.Phone
from Products P
INNER JOIN Suppliers S ON P.SupplierID = S.SupplierID
INNER JOIN Categories C ON P.CategoryID = C.CategoryID
where P.UnitsInStock < 12
order by P.UnitsInStock;

select * from Orders;
select * from Shippers;
select * from Customers;

select O.OrderID,O.OrderDate,C.ContactName,C.Phone,O.ShipName,O.ShipAddress,O.ShipPostalCode,O.ShipCity,O.ShipCountry 
from Orders O
INNER JOIN Customers C ON O.CustomerID = C.CustomerID
INNER JOIN Shippers S ON O.ShipVia = S.ShipperID;

select * from Orders
LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID
where Customers.CustomerID IS NULL;

select * from Orders
RIGHT JOIN Customers ON Orders.CustomerID = Customers.CustomerID
where Orders.OrderID IS NULL;

select * from Orders
FULL OUTER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;