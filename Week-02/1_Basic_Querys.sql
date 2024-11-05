-- select query:
select *
from countries;
select *
from departments;
select employee_id,first_name,email,salary
from employees;
-- where query:
select *
from employees
where salary > 5000;
-- arithmatic operators and "AS" query:
select employee_id, first_name, salary, salary + 5000 as Increase_salary
from employees;
-- comparision and logical operators:
select *
from employees
where salary < 5000 and department_id > 50;
-- distinct query:
select distinct country_name
from countries;
-- order by query:
select *
from jobs
order by max_salary desc;
-- LIMIT query:
select *
from employees
limit 10,5;
-- like query:
select *
from employees
where first_name like '%an%';