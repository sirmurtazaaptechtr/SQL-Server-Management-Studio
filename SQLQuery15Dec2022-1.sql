use northwind;
use AdventureWorks2019;
use PublicSchool;
use master;

drop database AdventureWorks2019;
drop database MyDB;
drop database Northwind;
drop database PublicSchool;
drop database Sample;

create database Students;
create database ProductionTracking;

use ProductionTracking;

create table Lot(
LotNumber int identity(1,1) primary key,
CreateDate date not null,
CostOfMaterials money not null
);

create table RawMaterials(
MaterialID int identity(1,1) primary key,
typeOfMaterial varchar(max),
 UnitCost money not null
);
create table ProductionUnits(
Serial# int identity(1,1) primary key,
"ExactWeight(kg)" decimal(12,4) not null,
ProductType varchar(max) not null,
ProductDesc varchar(max),
"QualityTest?(Y/N)" varchar(1) not null,
LotNumber int foreign key references Lot(LotNumber)
);





