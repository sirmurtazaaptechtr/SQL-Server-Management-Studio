use AdventureWorks2019;

select JobTitle
from HumanResources.Employee;

select distinct JobTitle
from HumanResources.Employee;

select *
from HumanResources.Department;

select GroupName
from HumanResources.Department;

select distinct Name
from HumanResources.Department;

select *
from Person.Person;

select FirstName,MiddleName,LastName,FirstName+' '+MiddleName+' '+LastName as fullName
from Person.Person;

select FirstName,MiddleName,LastName,concat(FirstName,' ',MiddleName,' ',LastName) as fullName
from Person.Person;

select BusinessEntityID,JobTitle 
from HumanResources.Employee
--where JobTitle='Design Engineer' or JobTitle='Engineering Manager';
where JobTitle in ('Design Engineer','Engineering Manager');

select BusinessEntityID,JobTitle 
from HumanResources.Employee
where BusinessEntityID between 51 and 100;

select *
from Person.StateProvince;

select distinct name
from Person.StateProvince
where name like 'Pu%';

select distinct name
from Person.StateProvince
where name like 'Al____';

select City,PostalCode
from Person.Address
order by city ;

select distinct City,PostalCode
from Person.Address
order by city ;

select distinct City,PostalCode
from Person.Address
order by city desc;

select FirstName,MiddleName,LastName
from Person.Person
where MiddleName is null
order by FirstName;

select * from Sales.SalesOrderHeader;

select OrderDate,SUM(TotalDue) as DaySale
from Sales.SalesOrderHeader
group by OrderDate;

select SalesPersonID,SUM(TotalDue) 
from Sales.SalesOrderHeader
group by SalesPersonID
having SUM(TotalDue) > 10000000
order by sum(TotalDue) desc;

use Northwind;

select * from Customers;




