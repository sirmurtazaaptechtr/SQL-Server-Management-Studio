use AdventureWorks2019;
select * from HumanResources.Employee;

select * from HumanResources.Employee
where JobTitle = 'Design Engineer';

select * from HumanResources.Employee 
where Gender = 'F' and MaritalStatus = 'S';

select * from HumanResources.Employee 
where JobTitle = 'Production Technician - WC60'
and  Gender = 'F'
and MaritalStatus = 'M';

select BusinessEntityID,BirthDate,OrganizationLevel from HumanResources.Employee 
where JobTitle = 'Production Technician - WC60'
and  Gender = 'F'
and MaritalStatus = 'M';

select * from Purchasing.PurchaseOrderDetail;

select ProductID,OrderQty,UnitPrice 
from Purchasing.PurchaseOrderDetail;

select ProductID,OrderQty,UnitPrice,OrderQty*UnitPrice as 'Bill Amount' 
from Purchasing.PurchaseOrderDetail;

select *
from Purchasing.PurchaseOrderHeader;

select PurchaseOrderID,SubTotal,TaxAmt,SubTotal+TaxAmt as 'SubTotal with Tax'
from Purchasing.PurchaseOrderHeader;

select PurchaseOrderID,SubTotal,TaxAmt,SubTotal+TaxAmt as 'SubTotalWithTax'
from Purchasing.PurchaseOrderHeader
where SubTotal+TaxAmt >= 500000;

select *
from Person.Person;

select BusinessEntityID,FirstName,MiddleName,LastName,FirstName+' '+MiddleName+' '+LastName as 'FullName'
from Person.Person;

select BusinessEntityID,FirstName,MiddleName,LastName,FirstName+' '+MiddleName+' '+LastName as 'FullName'
from Person.Person
where MiddleName is NULL;

select BusinessEntityID,JobTitle,BirthDate,MaritalStatus,Gender 
from HumanResources.Employee
--where JobTitle = 'Design Engineer' OR JobTitle = 'Research and Development Manager';
--where JobTitle in ('Design Engineer','Research and Development Manager');
where BusinessEntityID between 1 and 50 and MaritalStatus = 's' and Gender ='f';
