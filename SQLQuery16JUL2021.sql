
use AdventureWorks2019;
use Student_Rec;

select *
from std_students;

drop table std_students;

use master;

drop database Student_Rec;

create database stdRec;

use stdRec;

create table stdInfo
(
stdID int,
stdName varchar(200),
stdFName varchar(200),
stdDOB datetime,
stdEmail varchar(200),
stdCellNo varchar(100),
);

alter table stdInfo add stdMailAdd varchar(200);
alter table stdInfo add stdBloodG varchar (100);

alter table stdInfo drop column stdBloodG;

alter table stdInfo alter column stdDOB date;

insert into stdInfo
values ('001','Yasir Ahmed','Riaz Ahmed','12-05-1998','yasir_ahmed001@gmail.com','0316-2954143','Khudad Colony');
insert into stdInfo
values ('002','Madiha Talha','Anwer ul Haq','11-28-1988','madihatalha754@outlook.com','0312-0245627','Khudad Colony');

truncate table stdInfo;

select *
from stdInfo;

