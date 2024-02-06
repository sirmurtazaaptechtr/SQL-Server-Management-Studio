use Northwind;

select * 
from Customers;

select C1.CustomerID,C1.CompanyName AS Company1, C2.CustomerID,C2.CompanyName AS Company2, C1.City 
from Customers C1,Customers C2
where C1.CustomerID<>C2.CustomerID
AND C1.City = C2.City
order by C1.City;

use MyDB;

insert into Person(FullName,Gender,DOB,deptID) 
values
('Ali','Male','29-Apr-2004',2),
('Shahid','Male','29-Apr-2004',2);

select * from Person;

--Self Join

select P1.ID,P1.FullName as Person1,P2.ID,P2.FullName as Person2,P1.deptID
from Person as P1,Person as P2
where P1.ID <> P2.ID
AND P1.deptID = P2.deptID
order by P1.deptID;

--Union

use Northwind;

SELECT City,Country FROM Customers
UNION
SELECT City,Country FROM Suppliers
ORDER BY Country;

SELECT City,Country FROM Customers
UNION ALL
SELECT City,Country FROM Suppliers
ORDER BY Country;

select * from orders;

select EmployeeID,COUNT(Freight) as TotalOrders,SUM(Freight) as TotalFreight
from Orders
group by EmployeeID
order by EmployeeID;