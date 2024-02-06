select @@VERSION;
select @@SERVERNAME;

use AdventureWorks2019;

select * from Person.Person;
select * from Person.EmailAddress;

create database Student_Rec;

use Student_Rec;

create table std_students
(
stdID int,
stdName varchar(1000),
stdFName varchar(1000),
stdDOB date,
stdCellno varchar(100),
stdEmail varchar(1000),
stdAddress varchar(1000),

);

select * from std_students;
