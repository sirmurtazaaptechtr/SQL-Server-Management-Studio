create database abc_db;

use abc_db;

create table users (
id int identity(1,1) primary key,
name varchar(50) not null,
email varchar(50) not null unique,
dob date,
address varchar(100),
city varchar(30) default 'Karachi',
country varchar(30) default 'Pakistan'
);

insert into users(name,email,dob,address)
values
('Saad Khurram','saadkhurram9@gmail.com','02-May-2006','Jamshed Road');

select * from users;