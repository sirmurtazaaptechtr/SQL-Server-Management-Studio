use sms;
select * from student;
/*alter table student rename to stdInfo;*/
sp_rename 'student','stdInfo';
select * from stdInfo;
sp_rename 'stdInfo.dob','birthday', 'column';
sp_rename 'stdInfo','student';

create table stdInfo(
stdID int identity(1,1) unique not null,
stdName varchar(255) not null,
stdFName varchar(255),
stdDOB date not null,
stdGender char,
stdEmail varchar(255) not null,
stdMail varchar(255) not null,
stdCellNo varchar(255) not null,
stdCity varchar(255) default 'Karachi',
stdCountry varchar(255) check (stdCountry = 'Pakistan'),
primary key (stdID)
);

create index IN_stdInfo
on stdInfo (stdName);

insert into stdInfo(stdName,stdDOB,stdEmail,stdMail,stdCellNo,stdCountry)
values('Tooba','7-Nov-2000','syedatooba776@gmail.com','LinesArea','0312-2445411','Pakistan');

update stdInfo
set stdGender='F'
where stdID = 2;

select * from stdInfo;

ALTER TABLE stdInfo
ALTER COLUMN stdGender char NOT NULL;

update stdInfo
set stdFName = 'Jawaid'
where stdID = 2;

ALTER TABLE stdInfo
ALTER COLUMN stdFName varchar(255) NOT NULL;

insert into stdInfo(stdName,stdDOB,stdEmail,stdMail,stdCellNo,stdCountry,stdFName,stdGender)
values('Rabeea','19-Apr-1999','rabiya.riyaz@live.com','Sharfabad','0324-8085922','Pakistan','Riaz','F');

