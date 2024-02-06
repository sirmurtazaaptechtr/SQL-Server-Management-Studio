use AdventureWorks2019;
select BusinessEntityID,FirstName,MiddleName,LastName,
FirstName+' '+MiddleName+' '+LastName as FullName
from Person.Person;
select BusinessEntityID,FirstName,MiddleName,LastName,
CONCAT(FirstName,' ',MiddleName,' ',LastName) as FullName
from Person.Person;
select BusinessEntityID,FirstName,LEN(FirstName) as NoOfChars
from Person.Person;
select BusinessEntityID,CONCAT(FirstName,' ',MiddleName,' ',LastName) as FullName,
SUBSTRING(FirstName,1,1) as Initials
from Person.Person;
select BusinessEntityID,CONCAT(FirstName,' ',MiddleName,' ',LastName) as FullName,
CONCAT(SUBSTRING(FirstName,1,1),SUBSTRING(MiddleName,1,1),SUBSTRING(LastName,1,1)) as Initials
from Person.Person
order by BusinessEntityID desc;

select SalesOrderID,OrderDate
from Sales.SalesOrderHeader;

select SalesOrderID,OrderDate,
DAY(OrderDate) as DayInDate,
MONTH(OrderDate) as MonthInDate,
YEAR(OrderDate) as YearInDate
from Sales.SalesOrderHeader;

select CURRENT_TIMESTAMP as CurrentTimeWOTZ;

select SalesOrderID,SUM(LineTotal) as SubTotal_LineTotal
from Sales.SalesOrderDetail
group by SalesOrderID
having SUM(LineTotal)>20000;

select SalesOrderID,SUM(LineTotal) as SubTotal_LineTotal
from Sales.SalesOrderDetail
where SalesOrderID between 50101 and 50200
group by SalesOrderID
having SUM(LineTotal) > 25375
order by SalesOrderID desc;

select * from Person.Person;
select * from Person.BusinessEntityAddress;
select BusinessEntityID from Person.BusinessEntityAddress;

select * from Person.Person
where BusinessEntityID not in (select BusinessEntityID from Person.BusinessEntityAddress);

select AddressID from Person.BusinessEntityAddress where BusinessEntityID = 294;

select * from Person.Address
where AddressID = (select AddressID from Person.BusinessEntityAddress where BusinessEntityID = 294);