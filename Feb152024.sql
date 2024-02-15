use northwind;

select * from Products;
select * from Suppliers;
select * from Categories;

select *
from Products
INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
where Products.UnitsInStock < 6
order by Products.ProductName;

select Products.ProductID,Products.ProductName,Categories.CategoryName,Suppliers.CompanyName,Products.UnitsInStock 
from Products
INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
where Products.UnitsInStock < 6
order by Products.ProductName;

select * from Customers;
select * from Orders;

select *
from Orders
LEFT JOIN Customers ON Customers.CustomerID = Orders.CustomerID;

select *
from Orders
LEFT JOIN Customers ON Customers.CustomerID = Orders.CustomerID
where Customers.CustomerID IS NULL;

select Orders.OrderID,Orders.OrderDate,Orders.ShipAddress,Customers.CompanyName,Customers.ContactName,Customers.Phone
from Orders
LEFT JOIN Customers ON Customers.CustomerID = Orders.CustomerID;

select *
from Orders
RIGHT JOIN Customers ON Customers.CustomerID = Orders.CustomerID
where Orders.CustomerID IS NULL;

select *
from Orders
FULL OUTER JOIN Customers ON Customers.CustomerID = Orders.CustomerID
order by Orders.CustomerID desc;

SELECT A.ContactName AS CustomerName1, B.ContactName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;