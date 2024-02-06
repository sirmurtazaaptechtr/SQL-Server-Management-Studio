use AdventureWorks2019;

select * from Sales.SalesOrderHeader;

select * from Sales.Customer;

select SalesOrderID,OrderDate,CustomerID,SubTotal 
from Sales.SalesOrderHeader;

select soh.SalesOrderID,soh.OrderDate,soh.CustomerID,c.AccountNumber,soh.SubTotal 
from Sales.SalesOrderHeader as soh
inner join
Sales.Customer as c
on
soh.CustomerID = c.CustomerID;

select * from Person.Person;

select * from Person.BusinessEntityAddress;

select p.BusinessEntityID,p.FirstName,p.MiddleName,p.LastName,boa.BusinessEntityID,boa.AddressID 
from Person.Person as p inner join Person.BusinessEntityAddress as boa
on p.BusinessEntityID = boa.BusinessEntityID;

select p.BusinessEntityID,p.FirstName,p.MiddleName,p.LastName,boa.BusinessEntityID,boa.AddressID 
from Person.Person as p full outer join Person.BusinessEntityAddress as boa
on p.BusinessEntityID = boa.BusinessEntityID;

select p.BusinessEntityID,p.FirstName,p.MiddleName,p.LastName,boa.BusinessEntityID,boa.AddressID 
from Person.Person as p left join Person.BusinessEntityAddress as boa
on p.BusinessEntityID = boa.BusinessEntityID
order by boa.BusinessEntityID;

select p.BusinessEntityID,p.FirstName,p.MiddleName,p.LastName,boa.BusinessEntityID,boa.AddressID 
from Person.Person as p right join Person.BusinessEntityAddress as boa
on p.BusinessEntityID = boa.BusinessEntityID
order by p.BusinessEntityID;

select p.BusinessEntityID,p.FirstName,p.MiddleName,p.LastName,boa.BusinessEntityID,boa.AddressID 
from Person.Person as p left join Person.BusinessEntityAddress as boa
on p.BusinessEntityID = boa.BusinessEntityID
where boa.BusinessEntityID is null
order by p.BusinessEntityID;

select p.BusinessEntityID,p.FirstName,p.MiddleName,p.LastName,boa.BusinessEntityID,boa.AddressID 
from Person.Person as p right join Person.BusinessEntityAddress as boa
on p.BusinessEntityID = boa.BusinessEntityID
where p.BusinessEntityID is null
order by boa.BusinessEntityID;

select BusinessEntityID,FirstName,MiddleName,LastName
from person.Person;

