drop database SampleDB,AdventureWorks2019,AptechStudentRec,
hassan,hassan_demo,hassan_pro,hussain,MyCompany,myFirstDB,
mySampleDB,Northwind,sample7PMDB,sms,STD_R,stdRec,StudentRec;


select @@VERSION;
use Northwind;

select * from Customers;

use AdventureWorks2019;

select * from HumanResources.Employee;

backup database Northwind
to disk = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER1A\MSSQL\Backup\Northwind.bak'

drop database Northwind;