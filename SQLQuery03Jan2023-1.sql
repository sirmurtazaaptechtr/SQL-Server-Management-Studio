use AdventureWorks2019;

select * from HumanResources.Employee;
select * from Person.Person;

select hre.BusinessEntityID,hre.NationalIDNumber,pp.FirstName,pp.MiddleName,pp.LastName,hre.JobTitle
from HumanResources.Employee as hre
Inner Join Person.Person as pp
on pp.BusinessEntityID = hre.BusinessEntityID;

select hre.BusinessEntityID,hre.NationalIDNumber,pp.FirstName,pp.MiddleName,pp.LastName,hre.JobTitle
from HumanResources.Employee as hre
full outer Join Person.Person as pp
on pp.BusinessEntityID = hre.BusinessEntityID;

select * from Person.Person;
select * from Person.BusinessEntityAddress;


select pp.BusinessEntityID,pp.FirstName,pp.LastName,pbea.AddressID
from Person.Person as pp inner join Person.BusinessEntityAddress as pbea
on pp.BusinessEntityID=pbea.BusinessEntityID
order by pp.BusinessEntityID;


select pp.BusinessEntityID,pp.FirstName,pp.LastName,pbea.AddressID
from Person.Person as pp left outer join Person.BusinessEntityAddress as pbea
on pp.BusinessEntityID=pbea.BusinessEntityID
order by pbea.AddressID;

select pp.BusinessEntityID,pp.FirstName,pp.LastName,pbea.BusinessEntityID,pbea.AddressID
from Person.Person as pp right outer join Person.BusinessEntityAddress as pbea
on pp.BusinessEntityID=pbea.BusinessEntityID
order by pp.BusinessEntityID;

select pp.BusinessEntityID,pp.FirstName,pp.LastName,pbea.BusinessEntityID,pbea.AddressID
from Person.Person as pp full outer join Person.BusinessEntityAddress as pbea
on pp.BusinessEntityID=pbea.BusinessEntityID
order by pbea.BusinessEntityID;

use Northwind;
select * from Customers;

SELECT A.ContactName AS CustomerName1, B.ContactName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;