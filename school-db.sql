create database school;
use school;

create table student(
rollNo int primary key,
name varchar(50),
marks int not null,
grade varchar(5),
city varchar(20)
);
insert into student(rollNo,name,marks,grade,city)
values
(101,"Jahidul", 85,"A+","chittagong"),
(102,"Islam", 65,"B+","dhaka"),
(103,"Supto", 88,"A+","chittagong"),
(104,"Rahim", 75,"A-","cumilla"),
(105,"tanha", 85,"A+","sandwip"),
(106,"Muntaha", 73,"A-","Halishahar"),
(107,"taima", 77,"A","chittagong");

-- select * from student;
-- select name , marks from student;
-- select distinct city from student;
-- select * from student where marks>=75; -- >75 
-- select rollNo , name from student where marks>75;
-- select * from student where city = "chittagong" and marks>85;
-- select * from student where marks+10>80;
-- select * from student where marks=85;
-- select * from student where city = "dhaka" or marks>80;

-- select * from student where marks between 80 and 90;
-- select * from student where city in ("dhaka","chittagong","sandwip");
-- select * from student where city not in ("dhaka");
-- select * from student limit 3;
-- select * from student where marks>=75 limit 3;
-- select * from student order by marks asc;
-- select * from student order by marks desc;
-- select * from student order by marks desc limit 3;

-- Aggregate Function count(),max(),min(),sum(),avg();

-- select max(marks) from student;
-- select min(marks) from student;
-- select avg(marks) from student;
-- select count(city) from student where city = "chittagong";

-- group by clause

-- select city,count(rollNo) from student group by city;

-- error ashte pare je karone:
-- select city,name,count(rollNo)
-- from student group by city;
-- reason: column duita but group banacchi ekta. shob column er jnno e group banate hbe.

-- right:
-- select city,name,count(rollNo)
-- from student group by city,name;
-- select city,avg(marks)
-- from student group by city;

-- select city, avg(marks)
-- from student group by city order by city;


-- select city, avg(marks)
-- from student group by city order by avg(marks);


-- select city, max(marks)
-- from student group by city order by max(marks) desc;

-- select grade,count(rollNo)
-- from student group by grade order by count(rollNo) desc;

-- Having Clause:
-- Kaj almost WHERE er moto e kore but where shudhu row wise kaj kore but
-- Having Clause groups er upor o kaj kore
-- Where Group by er age likhte hoy
-- ar having group by er pore likhte hoy

-- select city,count(rollNo)
-- from student 
-- group by city
-- having max(marks)>82;
set sql_safe_updates = 0;
-- Update:
-- update student
-- set grade ="O"
-- where grade = "A+";

-- update student 
-- set marks = 75
-- where rollNo = 106;

-- update student 
-- set grade = "A"
-- where marks between 75 and 79;



-- update student 
-- set grade = "O"
-- where marks between 80 and 100;

-- update student 
-- set marks = marks + 1;

-- select *from student;


-- insert into student(rollNo,name,marks,grade,city)
-- values
-- (108,"silpe", 29,"F","chittagong"),
-- (109,"Nasrin", 22,"F","chittagong");


-- delete someone

-- delete from student
-- where marks<33;

-- select * from student;


-- create table dept(
-- dept_id int primary key,
-- dept_name varchar(50)
-- );

-- insert into dept values
-- (101,"CSE"),
-- (102,"EEE"),
-- (103,"ELL");
-- select * from dept;
-- create table teacher(
-- teacher_id int primary key,
-- teacher_name varchar(50),
-- dept_id int,
-- foreign key (dept_id) references dept(dept_id)
-- );
-- drop table teacher;

-- general foreign key eta
-- but jodi chai je parent table er kichu change korle child table er kichu change hote hbe
-- tahole cascade use korte hbe


-- update dept
-- set dept_id = 110
-- where dept_id = 101;

-- -- dept e change korar sathe sathe teacher o change hoi gese


-- create table teacher(
-- teacher_id int primary key,
-- teacher_name varchar(50),
-- dept_id int,
-- foreign key (dept_id) references dept(dept_id)
-- on update cascade
-- on delete cascade
-- );

-- insert into teacher
-- values
-- (101,"Zainal",101),
-- (102,"Akib",102),
-- (103,"Taiseer",103),
-- (104,"Abedin",101);
-- select * from teacher;



-- Alter (to change the schema)
-- Add column 
-- drop column
-- Rename column

-- Add column

-- alter table student
-- add column age int not null default 19;


-- drop column


-- alter table student
-- drop column age;

-- change column(rename)

-- alter table student
-- change column age newAge int;

-- alter table student
-- drop column newAge;


-- change column (modify datatype/constarint)

-- alter table student
-- modify column newAge varchar(20);


-- alter table student
-- modify column age varchar(2);


-- insert into student(rollNo,name,marks,grade,city,age)
-- values
-- (108,"silpe", 29,"F","chittagong",25),
-- (109,"Nasrin", 22,"F","chittagong",26);

-- alter table student 
-- change column age newAge int;


-- insert into student(rollNo,name,marks,grade,city,newAge)
-- values
-- (111,"silpe", 29,"F","chittagong",125);

-- rename the table name:
-- alter table student
-- rename to stu;

-- delete from student
-- where rollNo = 111;


-- Drop vs Truncate:
-- drop full table ke delete kore dey
-- ar truncate table er data gula delete kore dey, table exists kore.

-- truncate table student; ***


-- Question:
-- 1. Change the name of column "name" to "full" name;
-- 2. delete all the students who scored marks less than 80
-- 3. delete all the column for grades

-- solution:
-- create table student(
-- rollNo int primary key,
-- name varchar(50),
-- marks int not null,
-- grade varchar(5),
-- city varchar(20)
-- );
-- insert into student(rollNo,name,marks,grade,city)
-- values
-- (101,"Jahidul", 85,"A+","chittagong"),
-- (102,"Islam", 65,"B+","dhaka"),
-- (103,"Supto", 88,"A+","chittagong"),
-- (104,"Rahim", 75,"A-","cumilla"),
-- (105,"tanha", 85,"A+","sandwip"),
-- (106,"Muntaha", 73,"A-","Halishahar"),
-- (107,"taima", 77,"A","chittagong");

-- alter table student
-- change column name full_name varchar(50);

-- delete from student where marks<80;

-- alter table student
-- drop column grade;
-- select *from student;


-- Types of Joins:
-- => Inner Join -> common part colour thakbe
-- => Left Join -> left diagram + common part
-- => Right Join -> right diagram + common part
-- => Full Join -> Duita diagram er full

-- => Inner Join:
-- Returns records that have matching values in both tables
-- select columns(s)
-- from tableA
-- Inner Join TableB
-- On tableA.col_name = tableB.col_name;

select * from student;