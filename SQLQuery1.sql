create database form
use form

create table register(
fname varchar(15),
lname varchar(20),
age int,
city varchar(30),
mail varchar(60) primary key,
pass varchar(40),
phone varchar(20),
lang varchar(30),
adb int,
html int,
js int,
php int,
gender varchar(10)
)
select *from register
