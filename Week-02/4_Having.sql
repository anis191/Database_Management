select department_id, max(salary)
from employees
-- where department_id != 20
group by department_id
having max(salary) < 5000;

select department_id, count(*) as total
from employees
group by department_id
having total != 1;