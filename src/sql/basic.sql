#insertion query
insert into instructor values('10', 'Lance Stroll', 'Aston Martin F1', 50000)

#selects all data from a table
select * from instructor 

#select all instructors who earn between 50000 and 100000 inclusive
select name from instructor where salary between 50000 and 100000

#groups every function and finds their average salary
select dept_name, avg(salary) as avg_salary from instructor group by dept_name 
#tracks total instructors added
select count(*) as total_instructors from instructor

#creates a new table
create table department(departmentid int not null, name varchar(20), primary key(departmentid))
insert into department values(5, 'Aston Martin F1')
select * from courses

#Selects all courses from Fall 2017, but not in Spring 2018
select distinct name from courses where semester = 'Fall' and year = 2017 and name not in (select name from courses where semester = 'Spring' and year = 2018)
select name from instructor where dept_name not in ('Red Bull F1')
#Selects all instructors who earn more than every single individual who is in the department of McLaren
select name from instructor where salary > all(select salary from instructor where dept_name  = 'McLaren F1')
alter table courses add coursecode varchar(10)
update courses set coursecode = "Formula314" where courseid =  5
#Selects all the departments with an average salary over 100000
select dept_name, avg_salary from(select dept_name, avg(salary) as avg_salary from instructor group by dept_name ) as tempalias where avg_salary >100000
select name, (
	select count(*)  
	from instructor 
	where department.name = instructor.dept_name) as num_instructors 
from department 
