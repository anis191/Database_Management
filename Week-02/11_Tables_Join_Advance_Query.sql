/* Show employees name and her/his manager name */
/* Show those department name, which department have no employees */
use dummydb;
select departments.department_name
from departments left join employees
on departments.department_id = employees.department_id
where employees.department_id is null;

/* Show employee first name, his salary, avg(his departments all employee salary)-his salary*/
select first_name,
		salary, 
        (select avg(salary) from employees where department_id = employees.department_id) - salary as abc
from employees join departments
on employees.department_id = departments.department_id;

/* Show those department name, whose employees minimum salary is greater then 5000 */
select department_name
from employees join departments 
on employees.department_id = departments.department_id
group by department_name 
having min(salary) > 8000;
