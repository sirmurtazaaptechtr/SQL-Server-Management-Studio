use AdventureWorks2019;

select *
from Person.Person;

select FirstName,MiddleName,LastName
from Person.Person
where MiddleName is null;

use Northwind;

select *
from Customers;

select * 
from Customers
where CustomerID='ALFKI';

update Customers
set ContactName = 'Ali Baba'
where CustomerID='ALFKI';

update Customers
set ContactName = 'Maria Anders'
where CustomerID='ALFKI';

delete from Customers
where CustomerID='ALFKI';

select * from Orders;

select * from Orders
where CustomerID='ALFKI';

select OrderID from Orders
where CustomerID='ALFKI';

delete from Orders
where CustomerID='ALFKI';

select * from [Order Details]
where OrderID in (select OrderID from Orders
where CustomerID='ALFKI');

delete from [Order Details]
where OrderID in (select OrderID from Orders
where CustomerID='ALFKI');

use AdventureWorks2019;

select *
from Person.Person;

select BusinessEntityID,FirstName,MiddleName,LastName
from Person.Person;

select *
from Person.Person
where BusinessEntityID = 285;

select *
from Person.Person
where BusinessEntityID > 200;

select *
from Person.Person
where BusinessEntityID between 200 and 300;

select *
from Person.Person
where BusinessEntityID in (50,150,250,350);

select BusinessEntityID,FirstName,MiddleName,LastName,
FirstName+' '+MiddleName+' '+LastName as FullName
from Person.Person
where MiddleName is null;

select * 
from HumanResources.Employee;

select distinct JobTitle 
from HumanResources.Employee;

select BusinessEntityID,JobTitle 
from HumanResources.Employee
--where JobTitle = 'Research and Development Manager';
where JobTitle = 'Janitor';

select BusinessEntityID,JobTitle,BirthDate,MaritalStatus,Gender,HireDate
from HumanResources.Employee;

select BusinessEntityID,JobTitle,BirthDate,MaritalStatus,Gender,HireDate
from HumanResources.Employee
--where MaritalStatus = 'S' and Gender = 'F';
--where MaritalStatus = 'S' and Gender = 'M';
--where MaritalStatus = 'M' and Gender = 'F';
where MaritalStatus = 'M' and Gender = 'M';

select *
from Purchasing.PurchaseOrderHeader;

select EmployeeID,SubTotal,TaxAmt,Freight,TotalDue
from Purchasing.PurchaseOrderHeader;

select EmployeeID,SubTotal,TaxAmt,SubTotal+TaxAmt as TotalwithoutFreight
from Purchasing.PurchaseOrderHeader;

select EmployeeID,SubTotal,TaxAmt,SubTotal+TaxAmt as TotalwithoutFreight
from Purchasing.PurchaseOrderHeader
where TaxAmt+SubTotal<10000;

select PurchaseOrderID,EmployeeID,OrderDate,ShipDate,
DATEDIFF(day,OrderDate,ShipDate) as Shipmentdelay
from Purchasing.PurchaseOrderHeader
where DATEDIFF(day,OrderDate,ShipDate)>14;




