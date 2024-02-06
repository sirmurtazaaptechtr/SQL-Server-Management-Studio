use AdventureWorks2019;

select * 
from Sales.SalesOrderHeader;

select SalesOrderID,OrderDate,DueDate,ShipDate,DAY(OrderDate) 
from Sales.SalesOrderHeader;

select SalesOrderID,OrderDate,DueDate,ShipDate,MONTH(OrderDate) 
from Sales.SalesOrderHeader;

select SalesOrderID,OrderDate,DueDate,ShipDate,YEAR(OrderDate) 
from Sales.SalesOrderHeader;

select SalesOrderID,OrderDate,DueDate,ShipDate,DATEDIFF(day,OrderDate,ShipDate) as 'shipAfter(days)'
from Sales.SalesOrderHeader;

select CURRENT_TIMESTAMP;

select * from HumanResources.Employee;

select BusinessEntityID,BirthDate,Gender,MaritalStatus,
DATEDIFF(year,BirthDate,CURRENT_TIMESTAMP) as 'age (Years)'
from HumanResources.Employee
where Gender='F' and MaritalStatus='S';

select distinct JobTitle from HumanResources.Employee;

select DATEDIFF(year,'2003-07-30',CURRENT_TIMESTAMP) as "Ghazali'sAge";

select SalesOrderID,SUM(LineTotal) as 'Total Bill'
from Sales.SalesOrderDetail
group by SalesOrderID
having SUM(LineTotal) >150000
order by SalesOrderID;

--Query Writing Sequence Select -> Distinct -> From -> Where -> Group by -> Having -> Order by
--Query Execution Sequence From -> Where -> Group by -> Having -> Select -> Distinct -> Order by

use Northwind;

select * from Products;

select * from Categories;

select * 
from Products
where CategoryID = (select CategoryID from Categories where CategoryName='Beverages');