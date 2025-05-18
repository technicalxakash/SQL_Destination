
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

-- Q:7 WAQ to change the varchar size of all the column to 300


alter table employee
modify column emp_name varchar(300) not null,
modify column emp_company varchar(300) not null,
modify column emp_designation varchar(300) not null,
modify column emp_salary varchar(300) not null,
modify column emp_exp varchar(300) not null,
modify column emp_add_line varchar(300) not null,
modify column emp_city varchar(300) not null,
modify column emp_state varchar(300) not null,
modify column emp_country varchar(300) not null,
modify column emp_pincode int not null,
modify column emp_phone varchar(300) not null,
modify column emp_email varchar(300) not null;

-- Q8 :  WAQ to change the datatype of the column pincode to varchar
alter table employee
modify column emp_pincode varchar(300) not null;

-- Q10 : WAQ to make the phone number and email as a unique
alter table employee
modify emp_phone bigint not null unique,
modify emp_email varchar(300) not null unique;

-- Q11 : WAQ add a default value for column country as'india' and make the column as nullable
alter table employee
modify column emp_country varchar(300) null default 'India';


-- Q12 : WAQ to remove the column address _line form the employee table
alter table employee
drop column emp_add_line;

alter table employee
add column emp_add_line varchar(300) not null after emp_email;

describe employee;

-- Q13  WAQ to insert the into yhe employee table
-- Apporoach 1
insert into employee values(1, "Akash","1990-10-26","TCS","senior maneger",125000,13,"bengaluru","kar","usa",56012,2345678765,"akashtcs@gmail.com","#33 4th main");

-- Approach 2
insert into employee (emp_eid,emp_name,emp_dob,emp_company,emp_designation,emp_salary,emp_exp,emp_add_line,emp_city,emp_state,emp_country,emp_pincode,emp_phone,emp_email)
values(2,"vimal","1993-11-25","infosys","manager",100000,10,"#22 5th main","mysore","kar","india",560058,1234323423,"vimalinfosysQgmail.com");

insert into employee (emp_add_line,emp_city,emp_state,emp_country,emp_pincode,emp_phone,emp_email,
emp_eid,emp_name,emp_dob,emp_company,emp_designation,emp_salary,emp_exp)
values("#43 10th main","bengaluru","kar","india",560091,9878987678,"sarantcs@gmail.com",3,"saran","1991-12-18","TCS"," Ast manager",200000,5);

select * from employee; 
insert into employee (emp_add_line,emp_city,emp_state,emp_country,emp_pincode,emp_phone,emp_email,
emp_eid,emp_name,emp_dob,emp_company,emp_designation,emp_salary,emp_exp)
values("#46 19th main","mandya","kar","india",560009,9878967876,"kusumatcs@gmail.com",4,"kusuma","2003-12-18","TCS"," manager",90000,8);
-- truncate table employee;
select * from Employee;


-- Q15 WAQ to view all the details of the employee with the id=1
select * from employee where emp_eid=1; 

-- Q16 WAQ to view all the details of the employee who  works for TCS
select * from employee where emp_company="TCS";
select * from employee where emp_company like "tcs";
select * from employee where emp_company like "tcs";
select * from employee where emp_company like "%cs";
select * from employee where emp_company like "tc%";
select * from employee where emp_company like "t%s";
select * from employee where emp_company like "t_s";

-- Q17  WAQ to print all the details of the employee who is not from tcs
select * from employee where emp_company !="TCS";
select * from employee where emp_company <> "TCS";
select * from employee where emp_company not like "TCS";

-- Q19 WAQ to print the name of all the employee from the employee table
select emp_name from employee;

-- Q20 WAQ to print id,name,dob,and company details of the employee from employee table
select emp_eid,emp_name,emp_dob,emp_company from employee;

-- Q21 WAQ to print the details of all the employee who are working with salary more than 100000
select *  from employee where emp_salary>10000;

-- Q22 WAQ to print the deatails of all the employee  who are working with salary less than 1000000
select * from employee where emp_salary<100000;

-- logicaloperator
-- and
-- or
-- not
-- Q24 WAQ to print the details of the all employee who have salary more than 100000 and are not working in tcs
select * from employee where emp_salary>100000
 and emp_company!= "tcs";
 
 
 -- Q25 WAQ to print the details of all the employee who stays in either mumbai or mysuru
 
 select * from employee where emp_city = 'mumbai' or emp_city = 'mysore';
 select emp_city from employee;

 -- Q26 WAQ to print the deatails of all the employee who do not stay in either mumbai or mysore
 select * from employee where emp_city!="mumbai" and emp_city !="mysore";
 
 
 --   means check conitions if one condition is check print another condition chek than it prints
 select * from employee where emp_city in("mumbai","mysore");
 
 
-- Q28 WAQ to print the details of all the employee whoes name ends with a vowel

select * from employee 
where emp_name like '%a' 
or  emp_name like '%e' 
or emp_name like '%i' 
or emp_name like '%o' 
or emp_name like '%u';

--  WAQ to print the details of all the employee whoes name starts with a vowel

select * from employee 
where emp_name like 'a%' 
or  emp_name like 'e%' 
or emp_name like 'i%' 
or emp_name like 'o%' 
or emp_name like 'u%';

-- Q29 :WAQ to print the details of all the employee who have the salary within the range of 50000 to 100000

select * from employee where emp_salary > 50000 and emp_salary < 100000;

select * from employee where emp_salary between 50000 and  100000; 


-- Q30 :WAQ to print the details of all the employee who is born on or before 1st jan 1994
select * from employee where emp_dob < '1994-01-1';

-- Q31 : WAQ to print the details of all the employee who is born after 1st june 1990 1st jan 1997
select * from employee where emp_dob between '1990-06-1' and  '1997-01-1'; 
select * from employee where emp_dob > '1990-06-1' and  emp_dob <'1997-01-1'; 

-- Q32 : WAQ to change the name of the employee from vimal to kamal
set sql_safe_updates=false;
update employee set emp_name='kamal' where emp_name='vimal';
select * from employee;


-- Q33:WAQ to update the salary of all the employee by 10%
update employee set emp_salary =emp_salary+(emp_salary*0.1);


-- Q34:WAQ to print the details of the employee who stays in main road

 select* from employee where emp_add_line like '%main';



-- Q35:WAQ to update the city of the employee from  mumbai to Navi Mumbai

update employee set emp_city ='Navi Mumbai' where emp_city='mysore';

-- Q36: WAQ to update the state from kar to karnataka

update employee set emp_state='karnataka' where emp_state='kar';

-- Q37 : WAQ to update the salary by decrementing by 27% for all the employee who is working in tcs
update employee set emp_salary =emp_salary+(emp_salary*2.7) where emp_company='tcs';


-- Q38 : WAQ to update the designation of all manegrs to senior manager and all senior managers to directors
update employee set emp_designation='director'where emp_designation='senior maneger';
update employee set emp_designation='senior maneger'where emp_designation='manager';


-- Q39: WAQ to delete the employee with the id 3;
delete  from employee where emp_eid=3;

select * from employee;
/* aggregrates
  1 min(col) : finds the minimun values from the given column
  2 max(col) : finds the maxmimun values from the given column
  3 count(col) : count the total number of entries in the given column
  4 avg(col) : finds the avg values from the given column
  5 sum(col) : find the sum of all the values in the given column
  */
  
  -- Q40 WAQ to fetch the highest salary from the employee table
  select max(emp_salary) as max_salary from employee;
  
  -- Q41 WAQ to fetch the lowest salary from the employee table
  select min(emp_salary) as min_salary from employee;
  
  -- Q42 WAQ to fetch the avg salary from the employee table
  select avg(emp_salary) as avg_salary from employee;
  
  -- Q43 WAQ to count the total number of employee in the given table
  select count(emp_salary) as count_salary from employee;
  select * from employee;
  
  -- Q44 WAQ to find the sum of all the salaies from employe table
  select sum(emp_salary) as sum_salary from employee;
  
  -- Q45 WAQ to find the details of the employee with highest salary
  select * from employee
  order by emp_salary desc
  limit 1;
  
  select * from employee
  where emp_salary=(select max(emp_salary) from employee);
  
  -- Q46 WAQ to find the details of the employee with lowest salary
  select * from employee
  where emp_salary=(select min(emp_salary) from employee);
  
  -- Q47 WAQ to find the details of the employee with second highest salary using subquries
    select * from employee
  order by emp_salary desc
  limit 1 offset 1;
  
  -- Q47 WAQ to find the details of the employee with second highest salary using subquries
  select * from employee
  order by emp_salary desc
  limit 1 offset 1;
  
select max(emp_salary) as SecondHighestSalary from employee where emp_salary < (select max(emp_salary) from employee);

 -- Q48 WAQ to find the details of the employee with second lowest salary using subquries
 
 select min(emp_salary) as SecondLowestSalary from employee where emp_salary > (select min(emp_salary) from employee);
 
 
 select * from employee;
-- Q49 WAQ to insert minimum of 6 records into the employee table
 INSERT INTO employee 
VALUES (7, 'Ravi', '1988-05-14', 'Infosys', 'senior manager', 130000, 14, 'Hyderabad', 'TS', 'India', 500081, 9876543210, 'ravi@infosys.com', '#12 Tech Park');

INSERT INTO employee 
VALUES (8, 'Sneha', '1992-09-30', 'Wipro', 'senior manager', 127000, 12, 'Chennai', 'TN', 'India', 600018, 9876543222, 'sneha@wipro.com', '#7 Anna Salai');

INSERT INTO employee 
VALUES (9, 'Manoj', '1991-11-11', 'Accenture', 'senior manager', 135000, 15, 'Pune', 'MH', 'India', 411001, 9876543233, 'manoj@accenture.com', 'Flat 10, Kothrud');

INSERT INTO employee 
VALUES (10, 'Priya', '1989-04-25', 'IBM', 'senior manager', 140000, 13, 'Delhi', 'DL', 'India', 110001, 9876543244, 'priya@ibm.com', 'C-35 CP Area');

INSERT INTO employee 
VALUES (11, 'Karan', '1993-08-19', 'TCS', 'senior manager', 125000, 14, 'Mumbai', 'MH', 'India', 400001, 9876543255, 'karan@tcs.com', 'Bandra East');


-- 50) WAQ to find details of the employee with 3rd highest salary
select * from employee order by emp_salary desc limit 1 offset 2;


-- Q51: WAQ to find the details of the employee with 3rd lowest salary;
select*from employee order by emp_salary asc limit 1 offset 2;

-- Q52: WAQ to find the details of the employee 6th highest salary
select * from employee order by emp_salary desc limit 1 offset 5;


-- Q53: WAQ to find the deatils of the employee with 8th lowest salary
select*from employee order by emp_salary desc limit 1 offset 7;


-- Q54: WAQ to find the details of the employee with 5th largets lowest salary

select * from employee order by emp_salary desc limit 1 offset 4;

-- Q55: WAQ to find details of the employee with 4th lowest salary
select * from employee order by emp_salary asc limit 1 offset 3;

-- Q56: WAQ to find details of the employee whose name is 5th in the attendance
select * from employee order by emp_name asc limit 1 offset 4;


-- Q57: WAQ to find the details of the employee who belongs to the city which is second as per the alphabatical order in the table;
select * from employee order by emp_city asc limit 1 offset 1;

-- 

-- Q58 : write a query to view all details of employee
USE `dest_db`;
DROP procedure IF EXISTS `selectAll`;

DELIMITER $$
USE `dest_db`$$
CREATE PROCEDURE `selectAll` ()
BEGIN

END$$

DELIMITER ;

call selectAll();

-- Q 59)WAQ to create a procedure which accepts the eid as the parameter and prints the employee details 

USE `dest_db`;
DROP procedure IF EXISTS `selectByID`;

USE `dest_db`;
DROP procedure IF EXISTS `dest_db`.`selectByID`;
;

DELIMITER $$
USE `dest_db`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `selectByID`(id int)
BEGIN
select * from employee where emp_eid=id;
END$$

DELIMITER ;
;

-- 60 : WAQ to create a procedure which accepts the salary as the parameter and prints the employee etails who has the salary more than specified

USE `dest_db`;
DROP procedure IF EXISTS `emp_salary`;

DELIMITER $$
USE `dest_db`$$
CREATE PROCEDURE `emp_salary` (salary float)
BEGIN
select * from employee where emp_salary > salary;
END$$

DELIMITER ;
call emp_salary(150000);

-- Q61 : WAQ to create a procedure which accepts the city as the parameter and prints the employee details belongs to that city;


USE `dest_db`;
DROP procedure IF EXISTS `emp_city`;

DELIMITER $$
USE `dest_db`$$
CREATE PROCEDURE `emp_city` (city varchar(100))
BEGIN
select * from employee where emp_city=city;
END$$

DELIMITER ;

call emp_city('Delhi');

-- Q62 : WAQ to create a procedure which accepts the salary as the parameter along with the company name and prints the employee details who has the salary more than specified 
-- salary and works in specified company;
USE `dest_db`;
DROP procedure IF EXISTS `salary_comapny`;

DELIMITER $$
USE `dest_db`$$
CREATE PROCEDURE `salary_comapny` (salary float, company varchar(100))
BEGIN
select * from employee where emp_salary=salary and emp_company=company;
END$$

DELIMITER ;

call salary_comapny(133100,'infosys');

-- Q63 : WAQ to update the salary of the employee by specified amount for the employee who is from specified company


-- Q64 :waq to convert the given character into its respective ascii value
select ascii('a');
select ascii('A');

-- Q65 :waq to convert the names of employee into upper
select upper(emp_name) from employee;

-- Q66 :waq to convert the names of employee into lower
select lower(emp_name) from employee;

-- Q67 :waq to to count the total noof characters in employee name
select length(emp_name) from employee;

-- Q68:waq to print the name of the employee along with the reverse of the name
select emp_name , reverse(emp_name) from employee;

-- Q69:waq to check if the names of empoyee are palindrome or not
set sql_safe_updates=false;
update employee set emp_name='Markram' where emp_name='Akash';
select emp_name,
case 
     when lower(emp_name)=lower(reverse(emp_name)) then 'palindrome'
     else 'Not Palindrome'
end as palindrome_status
from employee;

-- Q70 : 
select emp_name,emp_company,concat (emp_company,'_company') from employee;

-- 	Q71 waq to find sqrroot of number
select sqrt(25);
select sqrt(49);
-- 	Q72 waq to find ceiling value of number
select ceiling(23.23);

-- 	Q73 waq to find floor value of number
select floor(3.2333);

-- 	Q74 waq to print cos teta value of number
select cos(90);

-- 	Q75 waq to print sin teta value of number
SELECT SIN(90);

-- 	Q76 waq to print tan teta value of number
select tan(90);


-- 	Q77 waq to print cos teta value of number
select acos(1);
select acos(0.2);
-- acos , asin, atan range 0 to 1

-- 	Q78 waq to print sin teta value of number
SELECT aSIN(0.9);

-- 	Q79 waq to print tan teta value of number
select atan(0.23);

-- 	Q80 waq to find power of given number
select power(3,2);
select power(3, 3);

-- 	Q81 waq to find log2 value  of given number
select log2(34);

-- 	Q82 waq to find log10 value  of given number
select log10(34);

-- 	Q83 waq to print pi value
select pi();

-- 	Q84 waq  to print a random number
select rand();

--  waq  to print square of number  ( not exist in recent server)

-- 	Q85 waq  to print current date and time
select current_timestamp();

-- 	Q86 waq  to print current date
select date(current_timestamp());

-- 	Q87 waq  to print date from the dob of employee
select day(emp_dob) from employee1;

-- 	Q88  waq  to print day name from the dob of employee
select dayname(emp_dob) from employee1;

-- 	Q89  waq  to print month from the dob of employee
select month(emp_dob) from employee1;

-- 	Q90  waq  to print monthname from the dob of employee
select monthname(emp_dob) from employee1;

-- 	Q91  waq  to print year from the dob of employee
select year(emp_dob) from employee1;

-- 	Q92  waq  to print weeknumber from the dob of employee
select yearweek(emp_dob) from employee1;



create table product(
prid int ,
pname varchar(50),
availability varchar(50)
);

INSERT INTO product (prid, pname, availability) VALUES
(1, 'Laptop', 'In Stock'),
(2, 'Smartphone', 'Out of Stock'),
(3, 'Tablet', 'In Stock'),
(4, 'Headphones', 'Limited Stock'),
(5, 'Smartwatch', 'In Stock');

UPDATE product SET availability = '50' WHERE prid = 1;
UPDATE product SET availability = '60' WHERE prid = 2;
UPDATE product SET availability = '70' WHERE prid = 3;
UPDATE product SET availability = '80' WHERE prid = 4;
UPDATE product SET availability = '90' WHERE prid = 5;


select * from product;

DELIMITER $$

CREATE TRIGGER update_availability_after_purchase
AFTER INSERT ON purchase
FOR EACH ROW
BEGIN
    UPDATE product
    SET availability = availability - NEW.quantity
    WHERE prid = NEW.prid;
END$$

DELIMITER ;


create table purchase(
pid int,
cid int,
cname varchar(50),
prid int ,
pname varchar(50),
quantity int
);

select * from purchase;


INSERT INTO purchase (pid, cid, cname, prid, pname, quantity)
VALUES (101, 1, 'Alice', 1, 'Laptop', 2);



create database akashHome;

use akashHome;

create table employee(

empid int,
empname varchar(300),
empdid int,
empaddr varchar(300),
empphone int

);
select * from employee;

alter table employee add column location varchar(300);

alter table employee add column city varchar(100) after location;

alter table employee add column empsalary varchar(100) after empdid;


alter table employee rename column empid to emp_empid ;

describe employee;

alter table employee add column emp_gender varchar(100);

alter table employee add column emp_parents varchar(100) after empaddr;

alter table employee rename column city to emp_city;

alter table employee modify  emp_empid varchar(400) primary key;

alter table employee modify  empname varchar(400) not null;

alter table employee add column emp_pincode int after empsalary;

alter table employee rename column empaddr to emp_addr;

alter table employee modify column emp_addr varchar (500);


alter table employee modify column empdid int not null unique;

alter table employee drop column emp_parents;
alter table employee drop column location;
alter table employee drop column empdid;
alter table employee modify column empphone bigint;
alter table employee add column emp_did bigint after empname;

truncate employee;
alter table employee modify column empdid int not null ;
describe employee;

alter table employee rename column emp_empid to emp_id;

insert into employee(emp_id,empname,emp_did,empsalary,emp_pincode,emp_addr,empphone,emp_city,emp_gender)values(101,"akash",1001,50000,560060,"#17,4th cross",6361770988,"banglore","male");

INSERT INTO employee(emp_id, empname, emp_did, empsalary, emp_pincode, emp_addr, empphone, emp_city, emp_gender) VALUES

(102, "megha", 1002, 52000, 560061, "#12, 2nd main", 7896541230, "mysore", "female"),
(103, "ravi", 1003, 48000, 560062, "#23, 1st street", 9876543210, "hubli", "male"),
(104, "sneha", 1001, 60000, 560063, "#45, park lane", 9123456789, "mangalore", "female"),
(105, "arun", 1004, 47000, 560064, "#56, new layout", 9988776655, "shimoga", "male"),
(106, "priya", 1002, 55000, 560065, "#33, gandhi nagar", 8123456709, "tumkur", "female"),
(107, "rahul", 1003, 53000, 560066, "#88, 5th block", 9012345678, "belgaum", "male"),
(108, "divya", 1001, 61000, 560067, "#66, lake view", 7001234567, "hassan", "female"),
(109, "sachin", 1004, 49000, 560068, "#11, MG road", 6009876543, "davanagere", "male"),
(110, "anita", 1002, 58000, 560069, "#99, temple street", 8800123456, "chikmagalur", "female"),
(111, "vijay", 1003, 50000, 560070, "#77, market road", 9600112233, "udupi", "male");

select * from employee;

alter table employee add column emp_ggg varchar(20) after emp_phone;

alter table employee drop column emp_ggg;

select * from employee where emp_id=101;

use akashhome;

select * from employee where emp_gender="male";

select empname from employee ; 

select empname,emp_did,empsalary,empphone from employee ; 

select * from employee where empsalary>60000;

select * from employee where empsalary<50000;

select * from employee where emp_city="mysore" or emp_city="banglore";

select * from employee where emp_city!="mysore" and emp_city!="banglore";


select * from employee where empname like "%a" or "%e" or "%i" or "%o" or "%u";

select * from employee where empname like "s%";


select * from employee where empsalary between 50000 and 60000;


alter table employee add column emp_dob varchar(50) after emp_gender;
set sql_safe_updates=false;
update employee set emp_dob = '1991-01-11' where emp_id=101;
update employee set emp_dob='1991-02-13' where  emp_id=102;
UPDATE employee SET emp_dob = '1993-03-13' WHERE emp_id = 103;
UPDATE employee SET emp_dob = '1994-04-14' WHERE emp_id = 104;
UPDATE employee SET emp_dob = '1995-05-15' WHERE emp_id = 105;
UPDATE employee SET emp_dob = '1996-06-16' WHERE emp_id = 106;
UPDATE employee SET emp_dob = '1997-07-17' WHERE emp_id = 107;
UPDATE employee SET emp_dob = '1998-08-18' WHERE emp_id = 108;
UPDATE employee SET emp_dob = '1999-09-19' WHERE emp_id = 109;
UPDATE employee SET emp_dob = '2000-10-20' WHERE emp_id = 110;
UPDATE employee SET emp_dob = '2001-11-21' WHERE emp_id = 111;

update employee set empname="sahana" where emp_id = 103;


update employee set empname="sahana" where empnname="ravi";

use akashhome;

select * from employee where emp_gender != 'male';

select * from employee where empname like '%a';

select * from employee where emp_gender like 'male';

set sql_safe_updates=false;

update employee set emp_city='malaysia' where emp_id=105;


update employee set empsalary=empsalary+(empsalary*0.9);


update employee set emp_city='bombay' where emp_id=102;


update employee set empsalary =empsalary+(empsalary*2.7) where emp_gender='male';

drop column empsalary;


set sql_safe_updates=false;

update employee set emp_city='malaysia' where emp_id=105;


update employee set empsalary=empsalary+(empsalary*0.9);


update employee set emp_city='bombay' where emp_id=102;


update employee set empsalary =empsalary+(empsalary*2.7) where emp_gender='male';

alter table employee drop column empsalary;

alter table employee add column emp_salary bigint after emp_did;

update employee set emp_salary = 100000 where emp_id=101;
update employee set emp_salary = 200000 where emp_id=102;
update employee set emp_salary = 250000 where emp_id=103;
update employee set emp_salary = 190000 where emp_id=104;
update employee set emp_salary = 180000 where emp_id=105;
update employee set emp_salary = 300000 where emp_id=106;
update employee set emp_salary = 400000 where emp_id=107;
update employee set emp_salary = 230000 where emp_id=108;
update employee set emp_salary = 150000 where emp_id=109;
update employee set emp_salary = 130000 where emp_id=110;
update employee set emp_salary = 170000 where emp_id=111;

select * from employee where empname like '%a';

update employee set emp_salary=emp_salary+(emp_salary*0.1);

update employee set emp_salary=emp_salary-(emp_salary*0.1);

select * from employee where emp_city like 'banglore';

set sql_safe_updates=false;

update employee set emp_salary=100000 where emp_id=101;


delete from employee where emp_id=101;

insert into employee(emp_id,empname, emp_did ,emp_salary ,emp_pincode ,emp_addr ,empphone ,emp_city, emp_gender, emp_dob)Values (101,"akash",1001,100000,560060,"#11,1st main",63616740676,"banglore","male","1990-01-12");

update employee set emp_salary=emp_salary-(emp_salary*0.27) where emp_id=102;

select max(emp_salary) as max_salary from employee;


select min(emp_salary) as  min_salary from employee;



select avg(emp_salary) as avg_salary from employee;

select count(emp_gender) as tottal_count from employee;

update employee set emp_gender='male' where emp_id=101;

select sum(emp_salary) as sum_salary from employee;

select * from employee order by emp_salary asc;

select * from employee order by emp_salary desc;

select * from employee order by emp_salary desc limit 1;

select * from employee where emp_salary=(select max(emp_salary) as max_salary from employee);


select * from employee where emp_salary=(select min(emp_salary) as min_salary from employee);


select * from employee order by emp_salary desc limit 1 offset 1;


select max(emp_salary) as second_highest from employee where emp_salary  <(select max(emp_salary) as emp_salary from employee);