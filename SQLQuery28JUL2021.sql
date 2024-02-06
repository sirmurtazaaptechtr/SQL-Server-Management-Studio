create database StudentRec;

use StudentRec;

create table student
(stdId int unique not null,
stdName varchar(255) not null,
stdFName varchar(255),
stdCNIC varchar(255) unique not null,
stdDOB date not null,
stdCellNo varchar(128) not null,
stdEmail varchar(255) not null,
stdCity varchar(255) default 'Karachi' not null,
stdCountry varchar(255) check (stdCountry='Pakistan') not null,
primary key (stdId)
);

alter table student add constraint UN_studnet_CellnEmail unique (stdCellNo,stdEmail);

create index IN_studnet_stdName on student (stdName);

insert into student(stdID,stdName,stdCNIC,stdDOB,stdCellNo,stdEmail,stdCountry)
values('1','Ahsan','42101-1234567-9','09-02-2000','0331-0256237','ahsanasif420@gmail.com','Pakistan');

insert into student
values('2','Madiha','Anwer','42101-7654321-0','11-28-1988','0312-0245627','madihatalha@outlook.com','Bahawal Pur','Pakistan');

select *
from student;