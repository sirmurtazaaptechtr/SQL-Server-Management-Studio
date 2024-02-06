use AdventureWorks2019;

select *
from Person.Person;

select BusinessEntityID,FirstName,MiddleName,LastName,
--FirstName+' '+MiddleName+' '+LastName as FullName
CONCAT(FirstName,' ',MiddleName,' ',LastName) as FullName
from Person.Person
order by BusinessEntityID;

select FirstName,LEN(FirstName) as NoOfChars
from Person.Person;

select FirstName,LEFT(FirstName,2) as L2Char,Right(FirstName,2) as R2Char,
SUBSTRING(FirstName,2,1) as C21Char
from Person.Person;

select *
from Sales.SalesOrderHeader;

select OrderDate,DAY(OrderDate) as DayInDate
from Sales.SalesOrderHeader;

select OrderDate,MONTH(OrderDate) as MonthInDate
from Sales.SalesOrderHeader;

select OrderDate,YEAR(OrderDate) as YearInDate
from Sales.SalesOrderHeader;

select OrderDate,DAY(OrderDate) as DayInDate,
MONTH(OrderDate) as MonthInDate,YEAR(OrderDate) as YearInDate
from Sales.SalesOrderHeader;

select CURRENT_TIMESTAMP as SystemTimeWOTZ;

select * from Sales.SalesOrderDetail;

select SalesOrderID,SUM(LineTotal) as SumLineTotal
from Sales.SalesOrderDetail
where SalesOrderID between 50000 and 59999
group by SalesOrderID
having SUM(LineTotal) > 10000
order by SalesOrderID;