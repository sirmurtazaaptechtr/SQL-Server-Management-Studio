use myFirstDB;

select *
from student;

backup database myFirstDB
to disk ='D:\myFirstDB.bak';

use master;

drop database myFirstDB;

use myFirstDB;

select *
from student;

use AdventureWorks2019;

select *
from HumanResources.Department;

select *
from HumanResources.Employee;

select BusinessEntityID,JobTitle,BirthDate,MaritalStatus,Gender
from HumanResources.Employee;

select BusinessEntityID,JobTitle,BirthDate,MaritalStatus,Gender
from HumanResources.Employee
where JobTitle = 'Research and Development Manager';

select BusinessEntityID,JobTitle,BirthDate,MaritalStatus,Gender
from HumanResources.Employee
where Gender = 'F';

select BusinessEntityID,JobTitle,BirthDate,MaritalStatus,Gender,DATEDIFF(year,BirthDate,GETDATE()) as age
from HumanResources.Employee
where Gender = 'F' and MaritalStatus='S' and DATEDIFF(year,BirthDate,GETDATE()) >=30;

select *
from Purchasing.PurchaseOrderHeader;

select PurchaseOrderID,OrderDate,SubTotal,TaxAmt,Freight,TotalDue,SubTotal+Freight as TotalDueWithoutTax
from Purchasing.PurchaseOrderHeader;

select PurchaseOrderID,OrderDate,SubTotal,TaxAmt,Freight,TotalDue,SubTotal+Freight as TotalDueWithoutTax
from Purchasing.PurchaseOrderHeader
where SubTotal+Freight > 10000;

select PurchaseOrderID,OrderDate,SubTotal,TaxAmt,Freight,TotalDue,SubTotal+Freight as TotalDueWithoutTax
from Purchasing.PurchaseOrderHeader
where TotalDue-TaxAmt > 10000;
