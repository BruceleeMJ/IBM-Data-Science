--Query 1: Retrieve all employees whose address is in Elgin,IL
select 	*
from 	EMPLOYEES
where 	address like '%Elgin,IL'
;

--Query 2: Retrieve all employees who were born during the 1970's.
select 	*
from 	EMPLOYEES
where 	b_date like '197%'
;

--Query 3: Retrieve all employees in department 5 whose salary is between 60000 and 70000
select 	*
from 	EMPLOYEES
where 	salary between 60000 and 70000
			and dep_id = 5
;

--Query 4A: Retrieve a list of employees ordered by department ID.
select 	*
from 	EMPLOYEES
order by dep_id
;

--Query 4B: Retrieve a list of employees ordered in descending order by department ID and within each department ordered alphabetically in descending order by last name.
select 	*
from 	EMPLOYEES
order by dep_id desc, l_name desc
;

--Query 5A: For each department ID retrieve the number of employees in the department.
select 	dep_id
			,count(*)
from 	EMPLOYEES
group by dep_id
;

--Query 5B: For each department retrieve the number of employees in the department, and the average employees salary in the department.
select 	dep_id
			,count(*)
			,avg(salary)
from 	EMPLOYEES
group by dep_id
;

--Query 5C: Label the computed columns in the result set of Query 5B as“NUM_EMPLOYEES” and “AVG_SALARY”.
select 	dep_id
			,count(*) as NUM_EMPLOYEES
			,avg(salary) as AVG_SALARY
from 	EMPLOYEES
group by dep_id
;

--Query 5D: In Query 5C order the result set by Average Salary
select 	dep_id
			,count(*) as NUM_EMPLOYEES
			,avg(salary) as AVG_SALARY
from 	EMPLOYEES
group by dep_id
order by 3
;

--Query 5E: In Query 5D limit the result to departments with fewer than 4 employees.
select 	dep_id
			,count(*) as NUM_EMPLOYEES
			,avg(salary) as AVG_SALARY
from 	EMPLOYEES
group by dep_id
having count(*) < 4
order by 3
;




