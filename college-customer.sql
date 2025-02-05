use college;
create table customer(
customer_id int primary key,
customer varchar(50),
card varchar(20),
city varchar(20)
);

insert into customer(customer_id,customer,card,city)
values
(101,"Jahidul","Brac Bank","Chittagong"),
(102,"Islam","City Bank","Chittagong"),
(103,"Supto","IFC Bank","Brahmanbaria"),
(104,"Taima","Brac Bank","Sandwip"),
(105,"Montaha","Dutch Bank","Halishahar"),
(106,"Tanha","Credit Card","Chittagong"),
(107,"Siple","Debit Card","Gazipur"),
(108,"Begum","Credit Card","Chittagong"),
(109,"Jahangir","Islami Bank","Chittagong"),
(110,"Alam","Brac Bank","Brahmanbaria");

select card, count(customer_id)
from customer group by card order by count(customer_id) asc;

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

alter table student
change column name full_name varchar(50);

delete from student where marks<80;

alter table student
drop column grade;
select *from student;