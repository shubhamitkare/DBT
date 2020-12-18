create database assignment3;

use assignment3;
create table Department(
dept_id int,
dept_name varchar(50),
constraint pk_key primary key(dept_id)
);
show tables;
desc department;
insert into Department values
(1,'Finance'),
(2,'Training'),
(3,'Marketing');
select  * from Department;
create table Employee(
emp_id  int not null primary key,
emp_name varchar(50),
dept_id int,
salary int,
manager varchar(50),
constraint fk_key foreign key(dept_id) references Department(dept_id));
show tables;
desc employee;
select * from Employee;
insert into Employee values
(1,'Arun',1,8000,4),
(2,'kiran',1,7000,1),
(3,'Scott',1,3000,1),
(4,'max',2,9000,null),
(5,'Jack',2,8000,4),
(6,'King',2,6000,1);
select * from Employee;
create table authors(
author_name varchar(255),
constraint pk_key primary key(author_name)
);
insert into authors values
('s shubham'),
('j jony'),
(' s scott'),     -- because of space this name is display first 
('d dev'),
('m shrivastv'),
('c sinha'),
('a rghuvir');
select * from authors;
select * from authors ORDER BY author_name ASC;
create table publishers(
publisher_name varchar(255),
constraint pk_key primary key(publisher_name)
);

insert into publishers values('chatur'),
('ram'),
('shyam'),
('Anajan'),
('sagsr'),
('Anil'),
('teja');
select * from publishers;
select * from publishers ORDER BY publisher_name DESC;
select *,sum(salary) from employee group by dept_id;
select dept_id,sum(salary) from employee where (salary > 17000) group by dept_id;
select dept_id,sum(salary) from employee where (salary > 7000) group by dept_id;
select emp_id,SUM(salary) AS totalsalary FROM employee GROUP BY emp_id HAVING  totalsalary > 18000;
select emp_id,SUM(manager) AS totalsalary FROM employee GROUP BY emp_id HAVING totalsalary < 20000;