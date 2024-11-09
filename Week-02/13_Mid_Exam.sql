/*
Create a table of Employees which has the following fields
Employee_Id
First Name
Last Name
Date of Birth
Department Id
Salary
*/
create database db2;
use db2;
create table Employee(
	employee_id int primary key,
    first_name varchar(50),
    last_name varchar(50),
    date_of_birth date,
    department_id int,
    salary int
);
/*
Create a table Projects with the following fields:	
Project ID
Project Name
Start Date
End Date
Budget
*/
create table projects(
	project_iD int primary key,
    project_name varchar(50),
    start_date date,
    end_date date,
    budget int
);
/*
Create a table Employee_Projects with the following fields:
Employee ID	
Project ID
*/
create table employee_projects(
	employee_id	int,
	project_id int,
    constraint pk primary key(employee_id,project_id),
    constraint fk1 foreign key(employee_id) references Employee(employee_id),
    constraint fk2 foreign key(project_id) references projects(project_id)
);
/*
Ensure that each employee can work on multiple projects and a project can have multiple employees.
*/
use dummydb;
select max(salary)
from employees
where salary < (select max(salary)
				from employees);
select *
from employees
order by salary DESC;
/*Using the dummydb, write an SQL query to get the third-highest salary in the employees table.*/
select max(salary)
from employees
where salary < (select max(salary)
				from employees
				where salary < (select max(salary)
								from employees));
/* Write a query to show the department names and the number of employees in each department. */
select department_name, count(*)
from employees join departments
on employees.department_id = departments.department_id
group by department_name;

/*
Illustrate INNER JOIN, LEFT JOIN, RIGHT JOIN, and CROSS JOIN with examples using the employees and 
departments tables.
*/
select employee_id,first_name,employees.manager_id,employees.department_id,department_name
from employees inner join departments
on employees.department_id = departments.department_id; 

-- left join:
select departments.department_id, department_name ,count(employees.employee_id) as total
from departments left join employees
on employees.department_id = departments.department_id
group by departments.department_id;

-- right join:
select departments.department_name, departments.manager_id,employees.first_name
from employees right join departments
on employees.employee_id = departments.manager_id;

-- Cross join:
select *
from employees cross join departments
on employees.department_id = departments.department_id;

/* What is a Common Table Expression (CTE)? 
Write an example query using CTE to show the names of employees whose salary is higher than the average salary.*/
with average as(
	select avg(salary) as avg_salary
	from employees
)
select first_name, last_name
from employees
where salary > (select avg_salary from average);

/*
Write a query to display the names of employees who earn a salary less than the employee "Steven King".
*/
select first_name, last_name
from employees
where salary < (select salary
				from employees
				where first_name = 'Steven' and last_name = 'King');
/*Write a query to find the department names and the names of the managers for each department.*/
select departments.department_name,employees.first_name
from employees right join departments
on employees.employee_id = departments.manager_id;

/* Write a query to display the names of all cities where departments are located.*/
select department_name, city
from departments join locations
on departments.location_id = locations.location_id;
