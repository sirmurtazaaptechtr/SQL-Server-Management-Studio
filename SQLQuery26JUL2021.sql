create database stdRec;

use stdRec;

create table stdInfo(
stdID int,
stdName varchar(255),
stdFName varchar(255),
stdDOB date,
stdGender char,
stdEmail varchar(255),
stdMail varchar(255),
stdCellNo varchar(255)
);

alter table stdInfo add stdCity varchar(255);
alter table stdInfo add stdCountry varchar(255);
alter table stdInfo add cID int;

drop table stdInfo;

create database stdRec;

use stdRec;

create table stdInfo(
stdID int unique not null,
stdName varchar(255) not null,
stdFName varchar(255),
stdDOB date not null,
stdGender char,
stdEmail varchar(255) not null,
stdMail varchar(255) not null,
stdCellNo varchar(255) not null,
stdCity varchar(255) default 'Karachi',
stdCountry varchar(255) check (stdCountry = 'Pakistan'),
cID int,
primary key (stdID)
);

create index IN_stdInfo
on stdInfo (stdName);

insert into stdInfo(stdID,stdName,stdFName,stdDOB,stdGender,stdEmail,stdMail,stdCellNo,stdCountry)
values('001','Yasir Ahmed','Riaz Ahmed','12-05-1998','M','yasir_ahmed001@gmail.com','Khudad Colony','0316-2954143','Pakistan');

insert into stdInfo
values ('002','Madiha Talha','Anwer ul Haq','11-28-1988','F','madihatalha754@outlook.com','Khudad Colony','0312-0245627','Karachi','Pakistan',null);

insert into stdInfo
values ('003','Abdullah Suri','Rashid Suri','03-10-2004','M','abdullahsuri09@gmail.com','PECHS','0331-8070952','Karachi','Pakistan',null);

insert into stdInfo
values ('004','Ahsan','Asif','09-02-2000','M','ahsanasif420@gmail.com','Chandni Chowk','0331-0256237','Karachi','Pakistan',null);

insert into stdInfo
values ('005','Muhammad Usman','Muhammad Akram','09-10-2000','M','ua745814@gmail.com','Nazim Abad # 4','0321-2376515','Karachi','Pakistan',null);

truncate table stdInfo;

select *
from stdInfo;