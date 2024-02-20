use northwind;

select * from Customers;
select * from Suppliers;

select CompanyName,ContactName,ContactTitle,Phone from Customers
Union
select CompanyName,ContactName,ContactTitle,Phone from Suppliers;

select CompanyName,ContactName,ContactTitle,Phone,City,Country from Customers
where Country = 'Germany'
Union
select CompanyName,ContactName,ContactTitle,Phone,City,Country from Suppliers
where Country = 'Germany'
order by City;

select * from Products;
select * from Categories;

select CategoryID,COUNT(ProductID) as NumberOfProducts
from Products
group by CategoryID;

select Categories.CategoryName,COUNT(Products.ProductID) as NumberOfProducts
from Products
INNER JOIN Categories on Products.CategoryID = Categories.CategoryID 
group by Categories.CategoryName;

select Customers.ContactName,COUNT(Orders.OrderID) as NumberOfOrders,Customers.Country
from Orders
INNER JOIN Customers on Orders.CustomerID = Customers.CustomerID
where Customers.Country in ('USA','UK','Germany')
group by Customers.ContactName,Customers.Country
having COUNT(Orders.OrderID) > 10
order by NumberOfOrders;