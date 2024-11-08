use dummydb;
/*
Question:
1.Show the employee names and corresponding job_titles without using JOIN query.
2.Do the question no 1 using JOIN query.
3.Show the name of the employee and the job_title who receives the maximum salary.
4.Show the list of employee name and corresponding manager names.
*/
-- Ans to the question no:1
select first_name,job_title
from employees, jobs
where employees.job_id = jobs.job_id
order by employee_id;

-- Ans to the question no:2
select first_name,job_title
from employees join jobs
on employees.job_id = jobs.job_id
order by employee_id;

-- Ans to the question no:3
select *
from employees
where salary = (select max(salary)
				from employees);

-- Ans to the question no:4
select emp.first_name, mng.first_name
from employees as emp join employees as mng
on emp.manager_id = mng.employee_id;