use AdventureWorks2019;

select BusinessEntityID,FirstName,MiddleName,LastName from Person.Person order by BusinessEntityID;
select BusinessEntityID,AddressID from Person.BusinessEntityAddress;

select p.BusinessEntityID,p.FirstName,p.MiddleName,p.LastName,bea.BusinessEntityID,bea.AddressID 
from Person.Person p
inner join
Person.BusinessEntityAddress bea
on p.BusinessEntityID = bea.BusinessEntityID
order by p.BusinessEntityID;

select p.BusinessEntityID,p.FirstName,p.MiddleName,p.LastName,bea.BusinessEntityID,bea.AddressID 
from Person.Person p
left join
Person.BusinessEntityAddress bea
on p.BusinessEntityID = bea.BusinessEntityID
order by p.BusinessEntityID;

select p.BusinessEntityID,p.FirstName,p.MiddleName,p.LastName,bea.BusinessEntityID,bea.AddressID 
from Person.Person p
right join
Person.BusinessEntityAddress bea
on p.BusinessEntityID = bea.BusinessEntityID
order by bea.BusinessEntityID;

select p.BusinessEntityID,p.FirstName,p.MiddleName,p.LastName,bea.BusinessEntityID,bea.AddressID 
from Person.Person p
full outer join
Person.BusinessEntityAddress bea
on p.BusinessEntityID = bea.BusinessEntityID
where p.BusinessEntityID is null
order by bea.BusinessEntityID;

select * from Person.Person where BusinessEntityID=9534;

SELECT P1.BusinessEntityID,P1.FirstName,P1.MiddleName,P1.LastName,P2.BusinessEntityID,P2.FirstName,P2.LastName
FROM Person.Person P1, Person.Person p2
WHERE P1.BusinessEntityID<>P2.BusinessEntityID
AND P1.LastName = P2.LastName
ORDER BY P1.BusinessEntityID;