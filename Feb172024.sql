select * from Products;
select * from Suppliers;
select * from Categories;

select P.ProductID,P.ProductName,S.CompanyName,C.CategoryName,P.QuantityPerUnit,P.UnitPrice,P.UnitsInStock
from Products P
INNER JOIN Suppliers S on P.SupplierID = S.SupplierID
INNER JOIN Categories C on P.CategoryID = C.CategoryID;

select * from Orders;

select O.OrderID,O.CustomerID,C.ContactName,C.Phone,O.EmployeeID,CONCAT(E.Title,', ',E.FirstName,' ',E.LastName) as 'Title & Name',O.OrderDate,O.RequiredDate,O.ShippedDate,O.Freight,O.ShipVia,S.CompanyName,O.ShipAddress,O.ShipCity,O.ShipCountry
from Orders O
INNER JOIN Customers C on O.CustomerID = C.CustomerID
INNER JOIN Employees E on O.EmployeeID = E.EmployeeID
INNER JOIN Shippers S on O.ShipVia = S.ShipperID;

select CategoryID,COUNT(ProductID) as 'Number of Products'
from Products
group by CategoryID;

select Categories.CategoryID,Categories.CategoryName,COUNT(ProductID) as 'Number of Products'
from Products
INNER JOIN Categories on Products.CategoryID = Categories.CategoryID
group by Categories.CategoryID,Categories.CategoryName;

select * from Orders;

select CustomerID,COUNT(OrderID) as 'Number of Orders'
from Orders
group by CustomerID;

select O.CustomerID,C.CompanyName,C.ContactName,COUNT(O.OrderID) as 'Number of Orders'
from Orders O
INNER JOIN Customers C on O.CustomerID = C.CustomerID
group by O.CustomerID,C.CompanyName,C.ContactName
having COUNT(OrderID) < 10
order by [Number of Orders] desc;