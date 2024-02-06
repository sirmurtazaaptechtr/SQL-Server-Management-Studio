use AdventureWorks2019;

select * 
from Sales.SalesOrderHeader;

select SalesOrderID,OrderDate,DueDate,ShipDate,DAY(OrderDate) 
from Sales.SalesOrderHeader;

select SalesOrderID,OrderDate,DueDate,ShipDate,MONTH(OrderDate) 
from Sales.SalesOrderHeader;

select SalesOrderID,OrderDate,DueDate,ShipDate,YEAR(OrderDate) 
from Sales.SalesOrderHeader;

select SalesOrderID,OrderDate,DueDate,ShipDate,DATEDIFF(day,OrderDate,ShipDate) as 'shippedAfter(days)'
from Sales.SalesOrderHeader;

select CURRENT_TIMESTAMP;

select * from HumanResources.Employee;

select BusinessEntityID,BirthDate,Gender,MaritalStatus,
DATEDIFF(year,BirthDate,CURRENT_TIMESTAMP) as 'age (Years)'
from HumanResources.Employee
where Gender='F' and MaritalStatus='S';

select distinct JobTitle from HumanResources.Employee;

select DATEDIFF(year,'2006-05-30',CURRENT_TIMESTAMP) as "Ahmed'sAge";

select *
from Sales.SalesOrderDetail;

select SalesOrderID,LineTotal
from Sales.SalesOrderDetail;

select SalesOrderID,SUM(OrderQty) as 'total Qty',SUM(LineTotal) as 'total Amount'
from Sales.SalesOrderDetail
where SalesOrderID = 43659
group by SalesOrderID;
 
select SalesOrderID,SUM(LineTotal) as 'total Amount'
from Sales.SalesOrderDetail
group by SalesOrderID;

select SalesOrderID,MAX(LineTotal) as 'Amount of Expensive in Bill'
from Sales.SalesOrderDetail
group by SalesOrderID;

select SalesOrderID,MIN(LineTotal) as 'Amount of Cheapest in Bill'
from Sales.SalesOrderDetail
group by SalesOrderID;

select ProductID,SUM(OrderQty) as TotalNoOfProductSold,SUM(LineTotal) as TotalRev
from Sales.SalesOrderDetail
group by ProductID;

select SUM(OrderQty) as TotalNoOfProductSold,SUM(LineTotal) as TotalRev
from Sales.SalesOrderDetail;

--SUM() --MAX() --MIN() --AVG() --COUNT()

select BusinessEntityID,FirstName,MiddleName,LastName,
FirstName+' '+MiddleName+' '+LastName as FullName
from Person.Person;

select BusinessEntityID,FirstName,MiddleName,LastName,
CONCAT(FirstName,' ',MiddleName,' ',LastName) as FullName
from Person.Person;

select BusinessEntityID,FirstName,LEN(FirstName) as NoOfAlphabets
from Person.Person;

select BusinessEntityID,CONCAT(FirstName,' ',MiddleName,' ',LastName) as FullName,
SUBSTRING(FirstName,1,1) as Initials
from Person.Person;

select BusinessEntityID,CONCAT(FirstName,' ',MiddleName,' ',LastName) as FullName,
CONCAT(SUBSTRING(FirstName,1,1),SUBSTRING(MiddleName,1,1),SUBSTRING(LastName,1,1)) as Initials
from Person.Person
order by BusinessEntityID desc;

select SalesOrderID,SUM(LineTotal) as 'Total Amount'
from Sales.SalesOrderDetail
group by SalesOrderID
having SUM(LineTotal) >150000
order by SalesOrderID;

--Query Writing Sequence Select -> Distinct -> From -> Where -> Group by -> Having -> Order by
--Query Execution Sequence From -> Where -> Group by -> Having -> Select -> Distinct -> Order by

select * from Person.Person;
select * from Person.BusinessEntityAddress;
select BusinessEntityID from Person.BusinessEntityAddress;

select * from Person.Person
where BusinessEntityID not in (select BusinessEntityID from Person.BusinessEntityAddress);

select AddressID from Person.BusinessEntityAddress where BusinessEntityID = 294;

select * from Person.Address
where AddressID = (select AddressID from Person.BusinessEntityAddress where BusinessEntityID = 294);

use Northwind;
select * from Products;

select * from Categories;

select * 
from Products
where CategoryID = (select CategoryID from Categories where CategoryName='Beverages');