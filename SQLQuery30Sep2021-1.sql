use AdventureWorks2019;

select * 
from Sales.SalesOrderDetail;

select SalesOrderID,SUM(LineTotal) AS TotalBill
from Sales.SalesOrderDetail
group by SalesOrderID;

select ProductID,SUM(OrderQty) AS UnitSold
from Sales.SalesOrderDetail
group by ProductID
order by ProductID;


select ProductID,SUM(LineTotal) AS TotalRev
from Sales.SalesOrderDetail
group by ProductID
order by ProductID;

select ProductID,Name
from Production.Product
where ProductID >= 707
order by ProductID;

select ProductID,SUM(OrderQty) AS UnitSold,AVG(UnitPrice) AS AVGAmt	
from Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY ProductID;

select ProductID,max(UnitPrice) AS hiSP,min(UnitPrice) AS loSP,AVG(UnitPrice) AS avgSP	
from Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY ProductID;