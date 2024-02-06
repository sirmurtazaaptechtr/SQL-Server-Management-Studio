use AdventureWorks2019;

select * 
from HumanResources.Employee;

select BusinessEntityID 
from HumanResources.Employee;

select BusinessEntityId, JobTitle
from HumanResources.Employee;

select JobTitle
from HumanResources.Employee;

select distinct JobTitle
from HumanResources.Employee;

select *
from HumanResources.Employee
where Gender = 'M';
--where JobTitle ='Buyer';