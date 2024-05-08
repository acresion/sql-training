create table courseAcademic(course_id varchar(20), name varchar(20), dept_name varchar(20), credits int)
create table prereq(course_id varchar(20), prereq_id varchar(20))

insert into prereq values('BIO-301', 'BIO-101')
select name, course_id from student natural join takes

select * from courseacademic natural left outer join prereq 
select * from courseacademic natural right outer join prereq 
select * from courseacademic inner join prereq on courseacademic.course_id = prereq.course_id 

select * from instructor 

#A view. This is akin to alias in Linux
create view mclaren_drivers as select * from instructor where dept_name = 'McLaren F1'

#Select query using this view
insert into mclaren_drivers values('12', 'tester', 'Ferrari F1', 4334)
select * from instructor  

create table person(ID char(10), name char(20), name)