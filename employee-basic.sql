create database DumDamCompany;
use DumDamCompany;
create table employee(
id int primary key,
name varchar(50),
salary int
);
insert into employee(id,name,salary)
values
(1,"adam",25000),
(2,"bob",30000),
(3,"Casey",40000);
select * from employee;

create table tmp1(
id int,
name varchar(50),
age int,
city varchar(50),
primary key(id, name)
-- here combination of id and name will be primary key. Anyone can be repeat or duplicate
-- but the combination of them can't be same!!
);

-- for foreign key:
-- cust_id int,
-- foreign key (cust_id) references customer(id) -> ekahne customer id ta holo onno table er primary key
-- ar cust_id holo foreign key er column er nam

-- default
-- salary int default 25000
-- by default salary = 25000 set hoye jabe
create table emp(
id int,
salary int default 25000
);
insert into emp(id) values(1);
select * from emp;
-- CHECK:
create table city(
id int primary key,
city varchar(50),
age int,
constraint age_check check (age>=18 and city="chittagong")

-- ekhane check diye amra limit define kore dei. jemon ei table e 3 ta column create hbe
-- id,city ar age nam e,
-- shurute constraint likhte hbe then constraint er nam; tarpor condition e dibo
-- ei column e kono value boshaite parbe na jodi na age 18 er beshi and city chittagong hoy;
);

-- arekta way holo 
-- create table newTab(
-- age int check(age>=18)
-- );
