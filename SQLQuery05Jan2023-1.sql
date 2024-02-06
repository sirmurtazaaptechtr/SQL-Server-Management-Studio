use Northwind;

select * from Customers;
select * from Suppliers;

select CustomerID,ContactName,Address,City,Country from Customers;
select SupplierID,ContactName,Address,City,Country from Suppliers;

select ContactName,Address,City from Customers
union 
select ContactName,Address,City from Suppliers;

select CustomerID,ContactName,Address,City,Country from Customers where Country in('Germany','Mexico','UK','USA')
union all
select ContactTitle,ContactName,Address,City,Country from Suppliers where Country  in('Germany','Mexico','UK','USA')
order by ContactName;


select Country,COUNT(CustomerID) as TotalCustomers from Customers
--where Country='Germany'
group by Country
order by Country;

select * from Orders;
select * from [Order Details];

select * from [Order Details] where OrderID = 10248;

select OrderID,SUM(UnitPrice*Quantity) as TotalOrderAmount
from [Order Details] 
--where OrderID = 10248
group by OrderID;
