create table employee (
employee_id int,
employee_name char(50),
employee_address varchar(100),
joining_date date,
retirement_date date,
descriptions text
)sys;

select * from employee;

describe employee;

drop database kanpurwriters;

alter table employee add contact_no text;

alter table employee rename column contact_no to Mobile_No;

select * from employee;

alter table employee rename column employee_id to Employee_ID;
alter table employee rename column employee_name to Employee_Name;
alter table employee rename column employee_address to Employee_Address;
alter table employee rename column joining_date to Joining_Date;
alter table employee rename column retirement_date to Retirement_Date;
alter table employee rename column descriptions to Descriptions;

select * from employee;

create table Employee 1

insert into employee value (1,"Pradeep Vishwakarma","Shyam Nagar","1990-01-01","2023-01-01","Manager","7860029519");
insert into employee value (2,"Desh Kumar","Yashoda Nagar","1990-02-02","2023-02-02","Superviser","9005256352");

use kanpur_writers;

create table Employee_2(
E_id int,
E_name char(50),
primary key (e_id)
);

create table LI_Employee (
Employeeid int,
Employee_name char(50) not null,
Employee_address varchar (100) unique,
joining_date date default ('1990-01-01'),
employee_id int,
primary key (Employeeid),
foreign key (employee_id) references Employee_2(E_id));

describe employee_2;

use kanpur_writers;
select * from employee_2;

update employee_2 set E_name = 'Chandramohan' WHERE E_id = 1;

show databases;

show tables;

use kanpur_writers;

select * from employee;

insert into employee value (9,"Shiv Kumar Sharma","Barra - 7","1990-01-01","2023-10-25","Tool Room","9795824632");

insert into employee value (10,"Ram Prasad Verma","Dabauli", "1995-12-22","2023-01-25","Tool Room", "9852631478");

select * from employee;

use mavenmovies;

select * from film_actor;

select title , description from film limit 10;

-- operations - from, join , where , group by , having , select , order by , limit

select title , description from film limit 10;

select film_id , title from film order by title desc;

-- comparison operator - < , > , <= , >=, !=

select customer_id , first_name from customer where customer_id = 5;

-- logical operator - and or not

select * from payment where amount > 2.99 and customer_id = 100 or staff_id = 1;

-- arithmatic operator = + - * / select 2*2;

select amount, amount*2 from payment;

select * from mavenmovies;

-- Arithmatic Oprators -- +, -, *, /, %

select * from payment;

select amount, amount%2 from payment;

select amount from payment where amount = 2*amount/2;

select amount, amount * 2 as duabled_amount from payment;

-- comparison Operator - <> = <> <= >=

select * from film;

select * from film where replacement_cost >20;

select * from film where rating = 'PG';

-- Logical Operator -- and, or, not, in, Between

select * from film where rating! ='PG' and replacement_cost >20;

select * from film where not rating != 'PG';

select * from film where length = 80 or length = 90 or length = 100;

select * from film where length between 80 and 100;

select amount, amount-2 from payment;

select amount from payment where amount = 2*amount/2;

select amount, amount*2 as doubled_amount from payment;

-- comparison operator - <> = <> <= >=

select * from film;

select * from film where replacement_cost>10;

select * from film where rating !='PG';



 -- retrieve the titles of films that have a rental_rate greater than $4:00 --
 
 select * from film;
 
 select title from film where rental_rate > 4
 
 -- logical operator -- and, or, not, in, between --
 
 select * from film where rating != 'PG' and replace_cost>20;
 
  select * from film where rating !='PG' and replace_cost>20;
  
   select * from film where not rating != 'PG' and replace_cost>20;
   
   select * from film where length in (80,90,100);
   
   select * from film where length = 80 or length =90 or length=100;
   
   SELECT 
    *
FROM
    film
WHERE
    length BETWEEN 80 AND 90;
    
    -- Retrieve the titles of films that have a rental rate greater than 4:00 --
    
select * from film;

select title from film where rental_rate >4;

-- List the customer names and emails of those who live in the city with the ID 300 --

select first_name, last_name, email, address_id from customer where address_id = 150;

-- find the films with a length between 120 and 150 minutes (inclusive). Display the title and length --

select title, length from film where length between 100 and 150;

-- wildcard operator - like_%

-- retrieve the first and last names of customers whose last name starts with the letter 'S'

select first_name, last_name from customer where first_name like "d%";

-- Retrieve the first and last name of customer whose first name should start with 'e' and end with 'a' --

select first_name, last_name from customer where first_name like "s%t";
select first_name, last_name from customer where last_name like "s%y";

-- Retrieve the first and last name of customer whose first name where letter a is on second position --

select first_name, last_name from customer where first_name like "___a%";

-- Retrieve the first and last name of customer whose first name have letter is on second position and e on 4th position --

select first_name, last_name from customer where first_name like "_a_e%";
SELECT 
    first_name, last_name
FROM
    customer
WHERE
    last_name LIKE '_e_a%';

-- Retrieve the first name and last name of customer whose first name have letter 'a' is on 2nd position and last name have letter 'e' on 4th position -- 

select first_name, last_name from customer where first_name like "__a%" and last_name like "_e%";
