use AdventureWorks2019;

select *
from HumanResources.Employee;

select BusinessEntityID,JobTitle,BirthDate,MaritalStatus,Gender
from HumanResources.Employee;

select BusinessEntityID,JobTitle,BirthDate,MaritalStatus,Gender
from HumanResources.Employee
where JobTitle = 'Production Technician - WC60';

select BusinessEntityID,JobTitle,BirthDate,MaritalStatus,Gender
from HumanResources.Employee
where JobTitle = 'Production Technician - WC60'
and Gender = 'F';

select BusinessEntityID,JobTitle,BirthDate,MaritalStatus,Gender
from HumanResources.Employee
where MaritalStatus = 'S' and Gender = 'F';

select BusinessEntityID,JobTitle,BirthDate,MaritalStatus,Gender 
from HumanResources.Employee
--where JobTitle = 'Design Engineer' OR JobTitle = 'Research and Development Manager';
--where JobTitle in ('Design Engineer','Research and Development Manager');
where BusinessEntityID between 1 and 50 and MaritalStatus = 'S' and Gender ='F';

select *
from Person.Person;

select BusinessEntityID,FirstName,MiddleName,LastName
from Person.Person;

select BusinessEntityID,FirstName,MiddleName,LastName,
FirstName+' '+MiddleName+' '+LastName as FullName
from Person.Person
where MiddleName is not null;

select *
from Purchasing.PurchaseOrderDetail;

select PurchaseOrderID,ProductID,OrderQty,UnitPrice,
OrderQty*UnitPrice as BillAmount
from Purchasing.PurchaseOrderDetail
where OrderQty*UnitPrice > 100000;

select *
from Purchasing.PurchaseOrderHeader;

select PurchaseOrderID,SubTotal,TaxAmt,
SubTotal+TaxAmt as SubTotalWithTax
from Purchasing.PurchaseOrderHeader;

