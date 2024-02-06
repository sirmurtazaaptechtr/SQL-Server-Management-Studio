use AdventureWorks2019;

select * from Person.Person p;
select * from Person.BusinessEntityAddress bea;

select p.BusinessEntityID,p.FirstName,p.MiddleName,p.LastName,bea.BusinessEntityID,bea.AddressID 
from Person.Person p
inner join Person.BusinessEntityAddress bea
on p.BusinessEntityID = bea.BusinessEntityID
order by p.BusinessEntityID;

select p.BusinessEntityID,p.FirstName,p.MiddleName,p.LastName,bea.BusinessEntityID,bea.AddressID 
from Person.Person p
full outer join Person.BusinessEntityAddress bea
on p.BusinessEntityID = bea.BusinessEntityID
order by bea.BusinessEntityID;

select p.BusinessEntityID,p.FirstName,p.MiddleName,p.LastName,bea.BusinessEntityID,bea.AddressID 
from Person.Person p
full outer join Person.BusinessEntityAddress bea
on p.BusinessEntityID = bea.BusinessEntityID
where p.BusinessEntityID is null
order by bea.BusinessEntityID;

select p.BusinessEntityID,p.FirstName,p.MiddleName,p.LastName,bea.BusinessEntityID,bea.AddressID 
from Person.Person p
left join Person.BusinessEntityAddress bea
on p.BusinessEntityID = bea.BusinessEntityID
order by p.BusinessEntityID;

select p.BusinessEntityID,p.FirstName,p.MiddleName,p.LastName,bea.BusinessEntityID,bea.AddressID 
from Person.Person p
right outer join Person.BusinessEntityAddress bea
on p.BusinessEntityID = bea.BusinessEntityID
order by p.BusinessEntityID, bea.BusinessEntityID;

select p1.BusinessEntityID,p1.FirstName,p1.LastName,p2.BusinessEntityID,p2.FirstName,p2.LastName 
from Person.Person p1, Person.Person p2
where p1.BusinessEntityID<>p2.BusinessEntityID
and p1.LastName=p2.LastName
order by p1.BusinessEntityID;