use AdventureWorks2019;

create procedure abc2 @GroupName nvarchar(50)
as
select * 
from HumanResources.Department 
where GroupName = @GroupName;

create procedure bigQ @a int
as
select SalesOrderID,SUM(LineTotal) as SumLineTotal
from Sales.SalesOrderDetail
where SalesOrderID between 50000 and 59999
group by SalesOrderID
having SUM(LineTotal) > @a
order by SalesOrderID;

create procedure SelectFromPerson
as
select BusinessEntityID,
CONCAT(FirstName,' ',MiddleName,' ',LastName) 
as FullName from Person.Person;

execute abc2 @GroupName ='Research and Development';

execute bigQ @a = 10000;

execute abc2 @GroupName ='Quality Assurance';

execute SelectFromPerson;