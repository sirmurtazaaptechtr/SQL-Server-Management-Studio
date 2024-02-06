go
use AdventureWorks2019;
go
select *
from Person.StateProvince;
go
select StateProvinceCode,CountryRegionCode,Name
from Person.StateProvince
where Name like 'Ca%' ;
go
select StateProvinceCode,CountryRegionCode,Name
from Person.StateProvince
where Name like '%o' ;
go
select StateProvinceCode,CountryRegionCode,Name
from Person.StateProvince
where Name like '%al' ;
go
select StateProvinceCode,CountryRegionCode,Name
from Person.StateProvince
where Name like 'al_____' ;
go
select StateProvinceCode,CountryRegionCode,Name
from Person.StateProvince
order by Name desc;
go
select FirstName,MiddleName,LastName
from Person.Person
where MiddleName is not null
order by FirstName asc, LastName desc;
go
select *
from Sales.SalesOrderDetail;
go
select SalesOrderID,LineTotal
from Sales.SalesOrderDetail;
go
select SalesOrderID, sum(LineTotal) as SubTotalLineTotal
from Sales.SalesOrderDetail
group by SalesOrderID;
go
select sum(LineTotal) as GrandTotalLineTotal
from Sales.SalesOrderDetail;
go
select avg(LineTotal) as AvgGrandTotalLineTotal
from Sales.SalesOrderDetail;
go
select SalesOrderID, max(LineTotal) as SubTotalMaxLineTotal
from Sales.SalesOrderDetail
group by SalesOrderID;
go
select SalesOrderID, min(LineTotal) as SubTotalMinLineTotal
from Sales.SalesOrderDetail
group by SalesOrderID;
go
select SalesOrderID, avg(LineTotal) as SubTotalAvgLineTotal
from Sales.SalesOrderDetail
group by SalesOrderID;

select SalesOrderID, count(LineTotal) as UnitsSold
from Sales.SalesOrderDetail
group by SalesOrderID;

select COUNT(SalesOrderID) as TotalNumberofItemsSold
from Sales.SalesOrderDetail;