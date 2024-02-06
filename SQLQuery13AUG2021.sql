GO
use AdventureWorks2019;

select *
from Person.Person;

select BusinessEntityID,FirstName,MiddleName,LastName
from Person.Person
where LastName like 'Ka%';

select BusinessEntityID,FirstName,MiddleName,LastName
from Person.Person
where LastName like '%an';

select BusinessEntityID,FirstName,MiddleName,LastName
from Person.Person
where LastName like 'Al__';

select *
from Person.StateProvince

select StateProvinceCode,CountryRegionCode,Name
from Person.StateProvince
order by CountryRegionCode asc, Name asc;

select FirstName,MiddleName,LastName
from Person.Person
where MiddleName is not null
order by FirstName asc, LastName desc;
 
select *
from Sales.SalesOrderDetail;
 
select SalesOrderID,LineTotal
from Sales.SalesOrderDetail;
 
select SalesOrderID,SUM(LineTotal)
from Sales.SalesOrderDetail
group by SalesOrderID;

select SalesOrderID,MAX(LineTotal)
from Sales.SalesOrderDetail
group by SalesOrderID;

select SalesOrderID,MIN(LineTotal)
from Sales.SalesOrderDetail
group by SalesOrderID;

select ProductID,SUM(OrderQty) as TotalNoOfProductSold,SUM(LineTotal) as TotalRev
from Sales.SalesOrderDetail
group by ProductID;

select SUM(OrderQty) as TotalNoOfProductSold,SUM(LineTotal) as TotalRev
from Sales.SalesOrderDetail;

--MAX()
--MIN()
--AVG()
--COUNT()





