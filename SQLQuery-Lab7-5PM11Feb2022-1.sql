select PurchaseOrderID,EmployeeID, OrderDate,ShipDate,
datediff(day,OrderDate,ShipDate) as ShipmentDelay
from Purchasing.PurchaseOrderHeader
where DATEDIFF(day,OrderDate,ShipDate)>14;

select CURRENT_TIMESTAMP;

select DATEDIFF(SECOND,'1983-Jul-03 18:30:00:000',CURRENT_TIMESTAMP);

select DATEDIFF(YEAR,'22-Jun-2007',CURRENT_TIMESTAMP);
select DATEDIFF(MONTH,'22-Jun-2007',CURRENT_TIMESTAMP);
select DATEDIFF(WEEK,'22-Jun-2007',CURRENT_TIMESTAMP);
select DATEDIFF(DAY,'22-Jun-2007',CURRENT_TIMESTAMP);

select BusinessEntityID,FirstName,MiddleName,LastName,
FirstName+ ' '+ MiddleName+' '+ LastName as FullName
from Person.Person;

select BusinessEntityID,FirstName,MiddleName,LastName,
FirstName+ ' '+ MiddleName+' '+ LastName as FullName
from Person.Person
where MiddleName is null;

Select BusinessEntityID,FirstName,MiddleName,LastName,
CONCAT(FirstName, ' ', MiddleName,' ', LastName)as FullName
from Person.Person
where MiddleName is null;

select *
from Person.StateProvince;

select distinct CountryRegionCode
from Person.StateProvince;

select StateProvinceID,CountryRegionCode,Name
from Person.StateProvince
--where CountryRegionCode='US' and name like 'A%a';
--where CountryRegionCode='US' and name like '%o';
--where CountryRegionCode='US' and name like 'w%';
where CountryRegionCode='US' and name like '____';

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