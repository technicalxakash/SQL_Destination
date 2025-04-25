
/*
create database Destination;

use Destination;


Create table Student(
sid int,
sname varchar(10),
age int

);


SELECT DATABASE();
select * from Student;

insert into Student Values(101,"Akash",22);
insert into Student Values(102,"kishoe",23);
insert into Student Values(103,"hitish",24);
insert into Student Values(104,"muni",25);


select * from Student;


select * from Student where sid=102;

select sid from Student;

use Destination;

insert into Student Values(null,"ram",26);
select * from Student;




use Destination;

Create table Student1(
sid int unique,
sname varchar(10),
age int

);


insert into Student Values(101,"Akash",22);
insert into Student Values(102,"kishoe",23);
insert into Student Values(null,"hitish",24);
insert into Student Values(104,"muni",25);

select * from Student1;

insert into Student1 Values(101,"Akash",22);
insert into Student1 Values(102,"kishoe",23);
insert into Student1 Values(null,"hitish",24);
insert into Student1 Values(104,"muni",25);

Create table Student12(
sid int,
sname varchar(10),
age int

);


Create table Student123(
sid int unique,
sname varchar(10),
age int

);

insert into Student123 Values(101,"Akash",22);
insert into Student123 Values(102,"kishoe",23);
insert into Student123 Values(null,"hitish",24);
insert into Student123 Values(104,"muni",25);

select * from Student123;


create database company;

use company;


create table dept(
did int primary key,
dname varchar(10)
);

create table emp(
eid int primary key,
ename varchar(10) not null,
age int check(age>18),
salary int,
email varchar(10) unique,
addr varchar(10) default "Belgavi",
did int,
foreign key(did) references dept(did)
);

insert into dept values(101,"testing"),(102,"devloper"),(103,"HR"),(104,"teamLead");

insert into emp values(11,"akash",20,20000,"abc.com","jayanagar",101);


select * from dept;
select * from emp;
*/

-- Q1: WAQ to create a database ny name desr_db
create schema dest_db;
use dest_db;


-- Q2: WAQ to create a table named as employeenwhich has the following columns
/*
eid int nn pk ai,
name varchar(100) nn,
company varchar(100) nn,
salary int nn,
exp in nn
*/

create table employee(
eid int not null primary key auto_increment,
name varchar(100) not null,
company varchar(100) not null,
salary varchar(100) not null,
exp int not null
);

describe employee;



-- Q3 : WAQ to add the column phone number into employee table

alter table employee
add column phone bigint;

-- Q4 : WAQ to add the coloumn dob to the employee table after the name

alter table employee
add column dob date after name;

-- q5:- WAQ to add the following columns into the employee table
-- designation to be added after company
-- email to be added after phone
-- add_line to be added after exp
-- city to be added after add_line
-- state to be added after city
-- country to added after state
-- pincode to be added after country

alter table employee
add column designation varchar(100) after company,
add column email varchar(100) after phone,
add column add_line varchar(100) after exp,
add column city varchar(100) after add_line,
add column state varchar(100) after city,
add column country varchar(100) after state,
add column pincode varchar(100) after country;



describe employee;

use dest_db;
show tables;

-- q6:- WAQ to change the names of all the columns by preciding it with emp_

alter table employee
rename column eid to emp_eid,
rename column name to emp_name,
rename column dob to emp_dob,
rename column company to emp_company,
rename column designation to emp_designation,
rename column salary to emp_salary,
rename column exp to emp_exp,
rename column add_line to emp_add_line,
rename column city to emp_city,
rename column state to emp_state,
rename column country to emp_country,
rename column pincode to emp_pincode,
rename column phone to emp_phone,
rename column email to emp_email;

describe employee;