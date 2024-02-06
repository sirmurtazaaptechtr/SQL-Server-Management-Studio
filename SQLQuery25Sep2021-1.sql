select @@VERSION;
use AdventureWorks2019;
select *
from HumanResources.Employee;
select * 
from HumanResources.Employee
where JobTitle='Design Engineer';
select *
from HumanResources.Employee
where Gender='F' and MaritalStatus='S';
select *
from HumanResources.Employee
where JobTitle='Production Technician - WC60'
and MaritalStatus='M'
and Gender='F';
select *
from Purchasing.PurchaseOrderDetail;
select ProductID,OrderQty,UnitPrice
from Purchasing.PurchaseOrderDetail;
select ProductID,OrderQty,UnitPrice,OrderQty*UnitPrice as BillAmount
from Purchasing.PurchaseOrderDetail;
select *
from Purchasing.PurchaseOrderHeader;
select PurchaseOrderID,SubTotal,TaxAmt,SubTotal+TaxAmt as subTotalwithTax,Freight,TotalDue
from Purchasing.PurchaseOrderHeader;
select PurchaseOrderID,SubTotal,TaxAmt,SubTotal+TaxAmt as subTotalwithTax,Freight,TotalDue
from Purchasing.PurchaseOrderHeader
where SubTotal+TaxAmt>=100000;
select PurchaseOrderID,SubTotal,TaxAmt,SubTotal+TaxAmt as subTotalwithTax,Freight,TotalDue
from Purchasing.PurchaseOrderHeader
where SubTotal+TaxAmt between 90000 and 100000;
select *
from Person.Person;
select BusinessEntityID,FirstName,MiddleName,LastName
from Person.Person;
select BusinessEntityID,FirstName,MiddleName,LastName,
FirstName+' '+MiddleName+' '+LastName as FullName
from Person.Person;
select BusinessEntityID,FirstName,MiddleName,LastName,
concat(FirstName,' ',MiddleName,' ',LastName) as FullName
from Person.Person;
select BusinessEntityID,FirstName,MiddleName,LastName,
concat(FirstName,' ',MiddleName,' ',LastName) as FullName
from Person.Person
order by FirstName;
select BusinessEntityID,FirstName,MiddleName,LastName,
concat(FirstName,' ',MiddleName,' ',LastName) as FullName
from Person.Person
order by FirstName desc;
select BusinessEntityID,FirstName,MiddleName,LastName,
concat(FirstName,' ',MiddleName,' ',LastName) as FullName
from Person.Person
where FirstName like 'T%or'
order by FirstName desc;