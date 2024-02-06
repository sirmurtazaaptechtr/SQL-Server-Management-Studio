create database SchoolSysDb

use SchoolSysDb

create table Classes (
ClassId int  identity(1,1) primary key,
ClassName varchar(50) null
)

create table Subjects (
SubjectId int identity(1,1) primary key,
SubjectName varchar(50) null,
ClassId int foreign key references Classes (ClassID) null
)

create table Students (
StudentId int identity(1,1) primary key,
StudentName varchar(50) null,
RollNo varchar(50) null,
DOB date null,
Gender varchar(50) null,
Mobile bigint null,
Email varchar(100) null,
StudentAddress varchar(max) null,
ClassId int foreign key references Classes (ClassID) null
)

create table Teachers (
TeacherId int identity(1,1) primary key,
TeacherName varchar(50) null,
DOB date null,
Gender varchar(50) null,
Mobile bigint null,
Email varchar(100) null,
TeacherAddress varchar(max) null,
Password varchar(20) null
)

create table TeacherSubject (
TSId int identity(1,1) primary key,
TeacherId int foreign key references Teachers (TeacherId),
ClassId int foreign key references Classes (ClassId),
SubjectId int foreign key references Subjects (SubjectId)
)

create table AttendanceMarkers (
AMId int identity(1,1) primary key,
AttendanceMarker varchar (10)
)

create table TeacherAttendances (
TAId int identity(1,1) primary key,
TeacherId int foreign key references Teachers (TeacherId) null,
Attendance int foreign key references AttendanceMarkers (AMId) null,
Dated Date null
)

create table StudentAttendances (
SAId int identity(1,1) primary key,
StudentId int foreign key references Students (StudentId) null,
RollNo varchar(50) null,
TeacherId int foreign key references Teachers (TeacherId) null,
ClassId int foreign key references Classes (ClassId),
SubjectId int foreign key references Subjects (SubjectId) null,
Attendance int foreign key references AttendanceMarkers (AMId) null,
Dated Date null
)

create table Fees(
FeeId int identity(1,1) primary key,
ClassId int foreign key references Classes (ClassId),
FeeAmount money null, 
Dated Date null
)

create table ExamTypes (
ETId int identity(1,1) primary key,
ExamType varchar(50) null
)

create table Exams (
ExamId int identity(1,1) primary key,
ExamTypeId int foreign key references ExamTypes (ETId) null,
TeacherId int foreign key references Teachers (TeacherId) null,
ClassId int foreign key references Classes (ClassId) null,
SubjectId int foreign key references Subjects (SubjectId) null,
StudentId int foreign key references Students (StudentId) null,
RollNo varchar(50) null,
MaxMarks int null,
ObtMarks int null,
Dated Date null
)

create table ExpenseTypes (
ExpenseTypeId int identity(1,1) primary key,
ExpenseType varchar(50)
)

create table Expense (
ExpenseId int identity(1,1) primary key,
ExpenseTypeId int foreign key references ExpenseTypes (ExpenseTypeId) null,
ClassId int foreign key references Classes (ClassId) null,
SubjectId int foreign key references Subjects (SubjectId) null,
ChargedAmount money null,
Dated Date null
)

