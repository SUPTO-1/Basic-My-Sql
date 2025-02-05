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
use school;
create table educators(
id int primary key,
name varchar(50)
);

insert into educators (id,name)
values
(101, "adams"),
(102,"Bob"),
(103,"casey");

select * from educators;
create table course(
id int primary key,
course varchar(50)
);

insert into course (id,course)
values
(102, "CSE-1"),
(105,"Math"),
(103,"EEE-1"),
(107, "IT");
select * from course;

select *
from educators as s
inner join course as c
on s.id = c.id; -- educators.id = course.id


-- => Left Join
-- Returns all records from the left table, and the matched records from the right table

-- select column(s)
-- from table tableA
-- left join tableB
-- on tableA.col_name = tableB.col_name;

select *
from educators as s
left join course as c
on s.id = c.id;

-- => Right Join
-- Returns all records from the right table, and the matched records from the left table

-- select column(s)
-- from table tableA
-- right join tableB
-- on tableA.col_name = tableB.col_name;

select *
from educators as s
right join course as c
on s.id = c.id;


-- => Full Join
-- Returns all records when there is a match either left or right table
-- MYSQL e full join er kono function nai but oracle e ache

select *
from educators as s
left join course as c
on s.id = c.id
UNION
select *
from educators as s
right join course as c
on s.id = c.id;


-- => left exclusive join
select *
from educators as s
left join course as c
on s.id = c.id
where c.id is null;

-- => right exclusive join
select *
from educators as s
right join course as c
on s.id = c.id
where s.id is null;


-- => Full exclusive join

select *
from educators as s
left join course as c
on s.id = c.id
where c.id is null
union
select *
from educators as s
right join course as c
on s.id = c.id
where s.id is null;

-- => self Join
-- it is a regular join but the table is joined with itself
-- select column(s)
-- from tableA as a
-- join tableB as b
-- on a.col_name = b.col_name;
