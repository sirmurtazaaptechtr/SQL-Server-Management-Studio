use AdventureWorks2019;

select * from Person.Person;

select BusinessEntityID,FirstName,MiddleName,LastName,
CONCAT(LEFT(FirstName,1),LEFT(MiddleName,1),LEFT(LastName,1)) as Initials 
from Person.Person;

select BusinessEntityID,FirstName,MiddleName,LastName,
LOWER(CONCAT(LEFT(FirstName,2),LEFT(MiddleName,1),LastName,BusinessEntityID)) as userID
from Person.Person;

select BusinessEntityID,FirstName,MiddleName,LastName,
LOWER(CONCAT(LEFT(FirstName,2),LEFT(MiddleName,1),SUBSTRING(LastName,2,3),BusinessEntityID)) as userID
from Person.Person;

select *
from Sales.SalesOrderHeader


select SalesOrderID,OrderDate,DAY(OrderDate)
from Sales.SalesOrderHeader;

select SalesOrderID,OrderDate,
DAY(OrderDate) as Day,
MONTH(OrderDate) as Month,
YEAR(OrderDate) as Year,
DATENAME(weekday,OrderDate) as Weekday,
DATENAME(dayofyear,OrderDate) as DayofYear,
DATENAME(week,OrderDate) as Week,
DATENAME(quarter,OrderDate) as Quarter
from Sales.SalesOrderHeader;

SELECT SalesOrderID,OrderDate,ShipDate,
DATEDIFF(day,OrderDate,ShipDate) AS TAT
from Sales.SalesOrderHeader;

SELECT SalesOrderID,OrderDate,ShipDate,
DATEDIFF(day,OrderDate,ShipDate) AS TAT
from Sales.SalesOrderHeader
where DATEDIFF(day,OrderDate,ShipDate)>7;

select CURRENT_TIMESTAMP as SystemTimeWTZ;

select * from Sales.SalesOrderDetail order by SalesOrderID;
	
select SalesOrderID,SUM(LineTotal) as orderTotal
from Sales.SalesOrderDetail
group by SalesOrderID
Having SUM(LineTotal)<100;

select SalesOrderID,SUM(LineTotal) as orderTotal
from Sales.SalesOrderDetail
where SalesOrderID between 50000 and 60000
group by SalesOrderID
Having SUM(LineTotal)<100
order by SalesOrderID;