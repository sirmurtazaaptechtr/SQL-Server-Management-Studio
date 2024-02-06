use AdventureWorks2019;

select *
from Person.Person;

select BusinessEntityID,FirstName,MiddleName,LastName
from Person.Person
where MiddleName is null;

select *
from Person.StateProvince;

select distinct CountryRegionCode
from Person.StateProvince;

select StateProvinceID,CountryRegionCode,Name
from Person.StateProvince
where CountryRegionCode='US' and name like '____';
--where CountryRegionCode='US' and name like 'A%a';
--where CountryRegionCode='US' and name like '%o';
--where CountryRegionCode='US' and name like 'w%';

select *
from Person.Address;

select City,PostalCode
from Person.Address
order by PostalCode;

select StateProvinceID,CountryRegionCode,Name
from Person.StateProvince
order by CountryRegionCode desc, name asc;

select SalesOrderID,LineTotal
from Sales.SalesOrderDetail
order by SalesOrderID;

select SalesOrderID,Sum(LineTotal)as SumOfLineTotal,
Min(LineTotal) as cheapest,
Max(LineTotal) as Expensive,
Avg(LineTotal) as Average,
count(LineTotal) as Qty
from Sales.SalesOrderDetail
group by SalesOrderID
order by SalesOrderID;

Select * from Person.Person;

Select BusinessEntityID,FirstName,MiddleName,LastName,
--FirstName+ ' '  + MiddleName+ ' '  + LastName as FullName
CONCAT(FirstName, ' '  , MiddleName, ' ' , LastName)as FullName
from Person.Person;

