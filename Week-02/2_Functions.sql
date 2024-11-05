use dummydb;
-- upper() & lower() function query:
select upper('anisul alam');
select upper(first_name), lower(last_name)
from employees;
-- concat() function query:
select concat('Anisul ','Alam');
select concat(first_name, last_name)
from employees;

select concat('employee id- ',employee_id,' Mr/Ms. ',first_name,' salary is: ',salary) as salary_details
from employees;
-- greatest() & least() function query():
select greatest(10,20,5,-1999,-3,29);
select least(10,20,5,-1999,-3,29);
-- pow(),log(),truncate(),rand(),exp() function query:
select pow(2,3);
select log(2);
select truncate(2.3456, 2);
select truncate(log(2), 2);
select rand();
select exp(2);

select count(*)
from employees;

describe employees;
-- max() function query:
select max(salary), min(salary), sum(salary), avg(salary)
from employees;

select employee_id,first_name,salary as mx_salary
from employees
order by salary DESC
limit 1;



select salary
from employees;








