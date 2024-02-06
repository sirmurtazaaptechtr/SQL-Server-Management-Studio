create database sample7PMDB;

use sample7PMDB;

create table myTable(
dataID int,
dataName varchar(100),
dataContact varchar(100),
dataDOB date
);

select *
from myTable;

insert into myTable
values (1,'Ghazali','0312-2036438','30-July-2003');

insert into myTable(dataID,dataContact,dataName)
values (2,'0300-8239541','Rayyan');

select *
from myTable
where dataID = 2;