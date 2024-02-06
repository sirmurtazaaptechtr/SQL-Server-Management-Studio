--Inner Join
use Northwind;
select * from orders;
select * from Customers;
update Orders
set CustomerID = NULL
where OrderID in (11076,11077);

select orders.OrderID,Customers.CompanyName,Orders.OrderDate,Orders.ShipName 
from orders
inner join Customers
on Orders.CustomerID = Customers.CustomerID
order by orders.OrderID;

select orders.OrderID,Customers.CompanyName,Orders.OrderDate,Orders.ShipName 
from orders
full outer join Customers
on Orders.CustomerID = Customers.CustomerID
order by orders.OrderID;

select orders.OrderID,Customers.CompanyName,Orders.OrderDate,Orders.ShipName 
from orders
right outer join Customers
on Orders.CustomerID = Customers.CustomerID
order by orders.OrderID;

select orders.OrderID,Customers.CompanyName,Orders.OrderDate,Orders.ShipName 
from orders
left outer join Customers
on Orders.CustomerID = Customers.CustomerID
order by orders.OrderID;


select c.CompanyName,c.City,c.Country,o.OrderID,o.OrderDate,o.ShipName
from Customers as c
inner join Orders as o
on c.CustomerID = o.CustomerID;

--self join
--cross join