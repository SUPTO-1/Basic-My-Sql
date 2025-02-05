create database college;
USE college;
create table students(
rollNo int primary key,
name varchar(50)
);
-- insert into students values(1, "Supto");
-- insert into students values(2,"Jahidul");

insert into students(rollNo,name)
values
(101,"Jahidul"),
(102,"Islam"),
(103,"Supta");
insert into students values(104,"Bolod");
select * from students;
