use AdventureWorks2019;

/*Aggregate Functions in SQL*/
select *
from Sales.SalesOrderDetail;

select *
from Sales.SalesOrderDetail
where SalesOrderID=43659;

select SalesOrderID,sum(LineTotal) as SubTotalLineTotal
from Sales.SalesOrderDetail
where SalesOrderID=43659
group by SalesOrderID;

select SalesOrderID, sum(LineTotal) as SubTotalLineTotal
from Sales.SalesOrderDetail
group by SalesOrderID;

select sum(LineTotal) as GrandTotalLineTotal
from Sales.SalesOrderDetail;

select avg(LineTotal) as AvgGrandTotalLineTotal
from Sales.SalesOrderDetail;

select SalesOrderID, max(LineTotal) as SubTotalMaxLineTotal
from Sales.SalesOrderDetail
group by SalesOrderID;

select SalesOrderID, min(LineTotal) as SubTotalMinLineTotal
from Sales.SalesOrderDetail
group by SalesOrderID;

select SalesOrderID, avg(LineTotal) as SubTotalAvgLineTotal
from Sales.SalesOrderDetail
group by SalesOrderID;

select SalesOrderID, count(LineTotal) as UnitsSold
from Sales.SalesOrderDetail
group by SalesOrderID;

select count(SalesOrderID) as TotalNumberofItemsSold
from Sales.SalesOrderDetail;

/*String Function in SQL*/

select *
from Person.Person;

select BusinessEntityID,FirstName,MiddleName,LastName 
from Person.Person;

select BusinessEntityID,FirstName,MiddleName,LastName,
CONCAT(FirstName,' ',MiddleName,' ',LastName) as FullName 
from Person.Person;

select BusinessEntityID,FirstName,
SUBSTRING(FirstName,1,1) as FI
from Person.Person;

select BusinessEntityID,
CONCAT(FirstName,' ',MiddleName,' ',LastName) as FullName,
CONCAT(SUBSTRING(FirstName,1,1),SUBSTRING(MiddleName,1,1),SUBSTRING(LastName,1,1)) as Initials
from Person.Person
order by BusinessEntityID;

select BusinessEntityID,
CONCAT(FirstName,' ',MiddleName,' ',LastName) as FullName,
CONCAT(SUBSTRING(FirstName,1,1),SUBSTRING(MiddleName,1,1),SUBSTRING(LastName,1,1)) as Initials,
LEN(FirstName)+LEN(MiddleName)+LEN(LastName) as totalNumberOfChars
from Person.Person
order by BusinessEntityID;


