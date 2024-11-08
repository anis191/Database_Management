/* Inner Join */
-- Inner Join and Normal join are same thing
/* Left Join */
select employee_id,first_name,employees.department_id,department_name
from employees left join departments
on employees.department_id = departments.department_id;

/* Right Join */
select employee_id,first_name,employees.department_id,department_name
from employees right join departments
on employees.department_id = departments.department_id;

/* Cross Join (All data/record from joined tables) */
select employee_id,first_name,employees.department_id,department_name
from employees cross join departments
on employees.department_id = departments.department_id;