create function dept_count(dept_name varchar(20)) 
	returns integer
	reads sql data
	deterministic
	begin
	declare d_count integer;
			select count(*) into d_count 
			from instructor 
			where instructor.dept_name  = dept_name;
	return d_count;
	end;

#A table function that doesn't work in MySQL
create function instructors_of(dept_name char(20))
	returns table(
		id char(5), 
		name varchar(20),
		dept_name varchar(20),
		salary decimal(8,2))
	return table (select id, name, dept_name, salary 
		from instructor
		where instructor.dept_name = instructors_of.dept_name)


select name from department where dept_count(name) > 2