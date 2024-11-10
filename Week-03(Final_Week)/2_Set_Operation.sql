use dummydb;
-- Union Query:
select employee_id, first_name,salary,department_id
from employees
where salary > 15000
UNION
select employee_id, first_name,salary,department_id
from employees
where department_id = 80;

-- Union all query:
select employee_id, first_name,salary,department_id
from employees
where salary > 10000
UNION ALL
select employee_id, first_name,salary,department_id
from employees
where department_id = 90;

-- intersect query
select employee_id, first_name,salary,department_id
from employees
where salary > 10000
intersect
select employee_id, first_name,salary,department_id
from employees
where department_id = 80;