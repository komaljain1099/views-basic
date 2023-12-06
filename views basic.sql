use customers;
select * from student;
drop table student;
create table student(
studentid int auto_increment,
first_name varchar (25) not null,
last_name varchar (25) not null,
age int,
primary key (studentid)
);
select * from student;
insert into student values (1,"komal","jain",31),
(2,"komal1","jain1",30),
(3,"komal2","jain2",31);

create table department (
student_id int auto_increment,
department_name varchar (25) not null,
foreign key (student_id) references student(studentid)
);

desc department;

insert into department values (1,"Computer science "),
(2,"Electronics"),
(3,"Mechanical");

select * from department;
select * from student;

create view student_info as
select first_name , last_name , age from 
student inner join department using (studentid) ;

select * from student_info;

drop view student_info;

use customers;


##SQL JOINS
/*
1. Inner Join
2. Left Join
3. Right Join
4. Natural Join
6. Cross Join
*/
use customers;

select * from student;
insert into student values(5,"Ramesh","Singh",27);


select * from department;

##Inner join
select student.first_name ,student.last_name,student.age,department.department_name
from student inner join department 
on student.studentid = department.studentid;

##LEFT Join
select student.first_name ,student.last_name,student.age,department.department_name
from student left join department 
on student.studentid = department.studentid;

##RIGHT Join
select student.first_name ,student.last_name,student.age,department.department_name
from student left join department 
on student.studentid = department.studentid;

##Full Outer Join
select student.first_name ,student.last_name,student.age,department.department_name
from student left join department 
on student.studentid = department.studentid
union
select student.first_name ,student.last_name,student.age,department.department_name
from student left join department 
on student.studentid = department.studentid;

##Cross join
select student.first_name ,student.last_name,student.age,department.department_name
from student cross join department ;

##Natural join
select student.first_name ,student.last_name,student.age,department.department_name
from student natural join department ;


/*Interview Question
What is the difference between an SQL INNER JOIN and a SQL LEFT JOIN?
What is the difference between a LEFT JOIN and a FULL JOIN?
Write a query that will JOIN these two tables so that so that all rows from table 1 
are in the result.
*/ 









































