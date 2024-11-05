use dummydb;
select job_id,count(*)
from employees
group by job_id;

select *
from employees;

select department_id, count(*), sum(salary) as total, avg(salary)
from employees
group by department_id
order by total DESC;
