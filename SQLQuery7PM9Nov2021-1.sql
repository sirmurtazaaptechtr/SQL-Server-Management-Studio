use Northwind;

select * from Customers;

select * from Orders;

select odr.OrderID,cust.ContactName,odr.OrderDate 
from Orders as odr
inner join Customers as cust
on odr.CustomerID=cust.CustomerID;

SELECT Orders.OrderID, Customers.ContactName, Orders.OrderDate
FROM Orders
INNER JOIN 
Customers ON Orders.CustomerID=Customers.CustomerID;

use AdventureWorks2019;

select * from Person.Person;
select * from Person.BusinessEntityAddress;
select * from Person.Address;

select pp.BusinessEntityID,FirstName,pbea.BusinessEntityID from Person.Person as pp
inner join
Person.BusinessEntityAddress as pbea
on pp.BusinessEntityID=pbea.BusinessEntityID;

select pp.BusinessEntityID,FirstName,pbea.BusinessEntityID from Person.Person as pp
full outer join
Person.BusinessEntityAddress as pbea
on pp.BusinessEntityID=pbea.BusinessEntityID
where pp.BusinessEntityID is NULL;

select pp.BusinessEntityID,FirstName,pbea.BusinessEntityID from Person.Person as pp
left outer join
Person.BusinessEntityAddress as pbea
on pp.BusinessEntityID=pbea.BusinessEntityID
--where pp.BusinessEntityID is NULL
order by pp.BusinessEntityID;

select pp.BusinessEntityID,FirstName,pbea.BusinessEntityID from Person.Person as pp
right outer join
Person.BusinessEntityAddress as pbea
on pp.BusinessEntityID=pbea.BusinessEntityID
--where pp.BusinessEntityID is NULL
order by pbea.BusinessEntityID;
;