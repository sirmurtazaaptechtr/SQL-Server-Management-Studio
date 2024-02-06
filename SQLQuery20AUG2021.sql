use AdventureWorks2019;
select PurchaseOrderID,EmployeeID from Purchasing.PurchaseOrderHeader 
where  PurchaseOrderID in(
select PurchaseOrderID from Purchasing.PurchaseOrderDetail where PurchaseOrderDetailID > 5);
select PurchaseOrderID,EmployeeID from Purchasing.PurchaseOrderHeader 
where  EmployeeID in(
select BusinessEntityID from Person.Person where MiddleName is not null);
select BusinessEntityID from HumanResources.Employee
	union
select BusinessEntityID from Person.Person
	union
select CustomerID from Sales.Customer
order by BusinessEntityID;
select PurchaseOrderID,PurchaseOrderDetailID from Purchasing.PurchaseOrderDetail;
select PurchaseOrderID,OrderDate from Purchasing.PurchaseOrderHeader;
select pod.PurchaseOrderID,pod.PurchaseOrderDetailID,poh.OrderDate 
from Purchasing.PurchaseOrderDetail pod
inner join
Purchasing.PurchaseOrderHeader poh
on pod.PurchaseOrderID = poh.PurchaseOrderID;
select SalesOrderID,SalesPersonID,OrderDate,TotalDue from Sales.SalesOrderHeader;
select BusinessEntityID,FirstName,LastName from Person.Person;
select * from Sales.SalesOrderHeader;
select soh.SalesOrderID,soh.SalesPersonID,p.FirstName,p.LastName,soh.OrderDate,soh.TotalDue 
from Sales.SalesOrderHeader soh
inner join
Person.Person p
on soh.SalesPersonID = p.BusinessEntityID
where p.FirstName in ('Tsvi');
select BusinessEntityID,FirstName,MiddleName,LastName from Person.Person where BusinessEntityID=293;
select BusinessEntityID,AddressID from Person.BusinessEntityAddress where BusinessEntityID=293;
select p.BusinessEntityID,p.FirstName,p.MiddleName,p.LastName,bea.BusinessEntityID,bea.AddressID 
from Person.Person p
left join
Person.BusinessEntityAddress bea
on p.BusinessEntityID=bea.BusinessEntityID
where bea.BusinessEntityID is null
order by p.BusinessEntityID;












