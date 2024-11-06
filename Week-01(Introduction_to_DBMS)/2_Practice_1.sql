/*
Create a table named Employee with EmployeeId, EmployeeName, EmployeeSalary and JoiningDate
a.Create table
b.Insert 2 employee data
c.Delete 1 employee data
*/
create database db;
use db;

-- Task:a
create table Employee(
	EmployeeId int primary key,
    EmployeeName varchar(20),
    EmployeeSalary int,
    JoiningDate date
);

-- Task:b
insert into Employee values
	(101,'Nur Alam',25000,'2024-01-01'),
    (102,'Imam Hassan',22000,'2024-02-03');

-- See all data:
select *
from Employee;

-- Task:c
set sql_safe_updates = 0; -- OFF
delete from Employee
where EmployeeId = 102;
set sql_safe_updates = 1; -- ON