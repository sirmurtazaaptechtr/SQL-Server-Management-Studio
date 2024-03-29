/*15-July-2021*/
USE Student_Rec;
USE master;
USE AdventureWorks2019;

CREATE DATABASE STD_R;

USE STD_R;

CREATE TABLE STUDENTS
(
STDID INT,
STDNAME VARCHAR(200),
STDFNAME VARCHAR(200),
STDDOB DATE,
STDEMAIL VARCHAR(200),
STDCELLNO VARCHAR(100),
);

ALTER TABLE STUDENTS ADD STDMAIL VARCHAR(200);
ALTER TABLE STUDENTS ADD STDBLOODGROUP VARCHAR(100);
ALTER TABLE STUDENTS DROP COLUMN STDBLOODGROUP;

ALTER TABLE STUDENTS ALTER COLUMN STDDOB DATETIME;

SELECT *
FROM STUDENTS;

INSERT INTO STUDENTS
VALUES('001','ABDUL AZIZ','SHM ARIF WASEEM','09-06-2003','sheikhabdulaziz1911@gmail.com','0315-0003226','PECHS BLOCK 6');

INSERT INTO STUDENTS 
VALUES('002','MAAZ KHAWAJA','KHAWAJA MOIN UDDIN','09-06-1999','maaz.accp2020@gmail.com','0310-2749082','PIB COLONY');

INSERT INTO STUDENTS 
VALUES('003','FAYEZ AAMIR','AAMIR TAQI','06-20-2002','fayezamir2@gmail.com','0321-2202684','AL HAMRA SOCIETY');

INSERT INTO STUDENTS 
VALUES('004','SHAHZAR AWAN','RIYASAT AWAN','03-01-2000','shahzarawan2k@gmail.com','0318-2725843','KALA PULL CANTT');

INSERT INTO STUDENTS 
VALUES('005','AHAD FAISAL','FAISAL YOUNUS','09-10-2003','abdulahad.aa63@gmail.com','0314-4515451','PIB COLONY');

TRUNCATE TABLE STUDENTS;

DROP TABLE STUDENTS;

USE AdventureWorks2019;

DROP DATABASE STD_R;

sp_rename 'students','stdInfo';

select *
from stdInfo;

truncate table stdinfo;

drop table stdInfo;

use master;

drop database STD_R;

/*16-July-2021*/

CREATE TABLE STUDENTS
(
STDID INT unique not null,
STDNAME VARCHAR(200) not null,
STDFNAME VARCHAR(200),
STDDOB DATE not null,
STDEMAIL VARCHAR(200),
STDCELLNO VARCHAR(100) not null,
STDMAIL VARCHAR(200)
primary key (STDID)
);

INSERT INTO STUDENTS
VALUES('001','ABDUL AZIZ','SHM ARIF WASEEM','09-06-2003','sheikhabdulaziz1911@gmail.com','0315-0003226','PECHS BLOCK 6');

INSERT INTO STUDENTS 
VALUES('002','MAAZ KHAWAJA','KHAWAJA MOIN UDDIN','09-06-1999','maaz.accp2020@gmail.com','0310-2749082','PIB COLONY');

INSERT INTO STUDENTS 
VALUES('003','FAYEZ AAMIR','AAMIR TAQI','06-20-2002','fayezamir2@gmail.com','0321-2202684','AL HAMRA SOCIETY');

INSERT INTO STUDENTS 
VALUES('004','SHAHZAR AWAN','RIYASAT AWAN','03-01-2000','shahzarawan2k@gmail.com','0318-2725843','KALA PULL CANTT');

INSERT INTO STUDENTS 
VALUES('005','AHAD FAISAL','FAISAL YOUNUS','09-10-2003','abdulahad.aa63@gmail.com','0314-4515451','PIB COLONY');

SELECT *
FROM STUDENTS;

INSERT INTO STUDENTS
VALUES (
'006',
'SYED MURTAZA HUSSAIN',
NULL,
'07-03-1983',
'smuhussain@gmail.com',
'0314-2308332',
'NEW TOWN'
);

INSERT INTO STUDENTS
VALUES (
'007',
'HAMZA YAQOOB',
NULL,
'07-15-2002',
'yaqoobbantwa123@gmail.com',
'0335-6337333',
'JAMSHED ROAD'
);



