use mySampleDB;

create table student(
sid int identity(1,1) primary key,
sName varchar(100) not null,
contact varchar(100),
email varchar(100),
area varchar(100),
city varchar(100) default('Karachi'),
county varchar(100) default('Pakistan') check(county = 'Pakistan'));

select * from student;

alter table student add dob date;

alter table student drop column area;

alter table student add house_flat_no varchar(100),street varchar(100);

insert into student(sName,contact,email)
values('Ghazali','0312-2036438','moizghazali3@gmail.com'),
('Rayyan','0300-8239541','rayyanhanif24@gmail.com'),
('Rehman','0335-8106192','abdulrehmankaleem195@gmail.com')

delete student
where sid = 3;

truncate table student;

drop table student;

create table stdInfo(
stdID int identity(1,1),
stdName varchar(255) not null,
stdFName varchar(255),
stdDOB date not null,
stdGender char,
stdEmail varchar(255) not null,
stdMail varchar(255) not null,
stdCellNo varchar(255) not null,
stdCity varchar(255) default 'Karachi',
stdCountry varchar(255) default 'Pakistan' check (stdCountry = 'Pakistan'),
primary key (stdID)
);

sp_rename 'stdInfo','student';

select * from student;

sp_rename 'student.stdDOB','DOB';

sp_rename 'student.DOB','stdDOB';

create index in_stdName
on student(stdName);

alter table student alter column stdGender varchar(10);