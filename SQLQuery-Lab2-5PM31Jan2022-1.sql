create database MyCompany;

use MyCompany;

create table employee(
empID int identity(1,1) primary key,
fullName varchar(50) not null,
dob date,
PPN varchar(20),
DLN varchar(20),
CNIC varchar(20),
cell varchar(20),
email varchar(100)
);

create table dept(
deptID int identity(1,1) primary key,
deptName varchar(50) not null
);

alter table employee add gender varchar(10),city varchar(50),contry varchar(50);

alter table employee add deptID int references dept(deptID);