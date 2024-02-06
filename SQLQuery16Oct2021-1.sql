BACKUP DATABASE Northwind
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER1A\MSSQL\Backup\Northwind.bak'
WITH DIFFERENTIAL;

--'D:\Northwind.bak'

BACKUP DATABASE AdventureWorks2019
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER1A\MSSQL\Backup\AdventureWorks2019.bak'

drop database AdventureWorks2019;

drop database Northwind;


use AdventureWorks2019;

select *
from Person.Person;

CREATE PROCEDURE selectFullName
AS
select BusinessEntityID,CONCAT(FirstName,' ',MiddleName,' ',LastName) as FullName
from Person.Person;

CREATE PROCEDURE backUpAllDB
AS
BACKUP DATABASE Northwind
TO DISK = 'D:\Northwind.bak'

BACKUP DATABASE AdventureWorks2019
TO DISK = 'D:\AdventureWorks2019.bak';


EXEC selectFullName;

EXEC backUpAllDB;

ALTER PROCEDURE backUpAllDB
AS
BACKUP DATABASE Northwind
TO DISK = 'D:\Northwind.bak'

BACKUP DATABASE AdventureWorks2019
TO DISK = 'D:\AdventureWorks2019.bak'

BACKUP DATABASE MyCompany
TO DISK = 'D:\MyCompany.bak';


exec backUpAllDB;

CREATE PROCEDURE SelectAllCustomers
AS
SELECT * FROM Customers
GO;

drop procedure SelectAllCustomers;

use Northwind;

CREATE PROCEDURE SelectAllCustomers
AS
SELECT * FROM Customers;

EXEC SelectAllCustomers;

ALTER PROCEDURE SelectAllCustomers @City nvarchar(15)
AS
SELECT * FROM Customers WHERE City = @City;

EXEC SelectAllCustomers 'London';

ALTER PROCEDURE SelectAllCustomers @City nvarchar(30), @PostalCode nvarchar(10)
AS
SELECT * FROM Customers WHERE City = @City AND PostalCode = @PostalCode;

EXEC SelectAllCustomers @City = 'London', @PostalCode = 'WA1 1DP';
