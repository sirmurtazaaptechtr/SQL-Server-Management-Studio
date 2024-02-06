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
ALTER TABLE STUDENTS ADD STDBLOODGROUP VARCHAR(200);
ALTER TABLE STUDENTS DROP COLUMN STDBLOODGROUP;
ALTER TABLE STUDENTS ALTER COLUMN STDDOB DATETIME;

INSERT INTO STUDENTS 
VALUES('001','MAAZ KHAWAJA','KHAWAJA MOIN UDDIN','06-09-1999','maaz.accp2020@gmail.com','0310-2749082','PIB COLONY');

SELECT *
FROM STUDENTS;

ALTER TABLE STUDENTS ALTER COLUMN STDDOB DATE;

TRUNCATE TABLE STUDENTS;

DROP TABLE STUDENTS;

DROP DATABASE STD_R;