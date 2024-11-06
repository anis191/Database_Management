use dummydb;
select avg(salary)
from employees;

select *
from employees
where salary > 6461
order by salary;

-- Sub Query:
select *
from employees
where salary > (select avg(salary) from employees);

/* How much high salary in this table? And which employee salary is this? */
select *
from employees
where salary = (select max(salary)
				from employees);
/* Total salary of all programmer employee? */
-- Normal Way:
select sum(salary)
from employees
where job_id = 'IT_PROG';

-- Using Group By:
select job_id,sum(salary)
from employees
where job_id = 'IT_PROG'
group by job_id;

-- Using Sub Query:
select sum(salary)
from employees
where department_id = (select department_id
						from employees
						where job_id = 'IT_PROG'
                        limit 1);
