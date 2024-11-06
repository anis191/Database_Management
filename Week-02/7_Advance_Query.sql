use dummydb;
/* What is the amount of second highest salary in employee table? And Who got it? */
-- Normal Way:
select employee_id
from employees
order by salary DESC
limit 1,1;

-- Using Sub Query:
select *
from employees
where employee_id = (select employee_id
					from employees
					order by salary DESC
					limit 1,1);
                    
-- Another way using sub query --
-- 1st max salary:
select max(salary)
from employees;
-- 2nd max salary:
select max(salary)
from employees
where salary < (select max(salary)
				from employees);
-- Who got it?
select *
from employees
where salary = (select max(salary)
				from employees
				where salary < (select max(salary)
								from employees))
limit 1;
/* Those employees, who get salary more then his manager */
select *
from employees as emp
where salary > (select salary
				from employees as meg
				where emp.manager_id = meg.employee_id);







