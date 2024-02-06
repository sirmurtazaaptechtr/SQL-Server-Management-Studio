create database AptechStudentRec;
use AptechStudentRec;
create table students(
stdID int identity(1,1) primary key,
stdName varchar(50) not null,
stdDOB	date,
stdGen varchar(10),
stdemail varchar(100),
stdContact	varchar(100)
);
create table course(
courseID int identity(1,1) primary key,
courseName varchar(100) not null,
courseDurationInMonths int not null
);
alter table students add city varchar(50) default('Karachi');
alter table students add country varchar(50) default('Pakistan');
alter table students add cID int references course(courseID);
insert into students(stdName,stdDOB,stdGen)
values
('Irtaza','25-May-2008','M'),
('Konain','22-Jun-2007','M'),
('Raza','21-Jan-2006','M'),
('Ahmed','30-May-2006','M');
select * from students;
insert into students(stdName,city)
values ('Saleh','Hyderabad');
insert into students(stdName,stdContact,stdDOB,stdemail)
values('Usman','0330-2411442','11-Jul-2007','fpsmas.ua@gmail.com');
select city,stdName,stdGen from students;