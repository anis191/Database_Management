/*
Questions:
1.Make an Employee2 Table where the fields are
a.EmpId
b.EmpName
c.Joining Year
d.Birthday (not after 2000)
e.Designation
f.Salary
Make this table with proper constraints
2.How to make composite primary key constraint? Show with example.
3.Can LIMIT+OFFSET features can be done using only LIMIT Syntax? How?
*/
-- Solution:
use db;
create table Employee2(
	EmpId int primary key, 
    EmpName varchar(50) not null,
    Joining_Year year,
    Birthday date,
    Designation varchar(50),
    Salary int,
    constraint Birthday_ck check(Birthday <= '2000-12-31')
);
insert into Employee2 values
	(101,'Abu Noman',2005,'1995-03-01','Junior dev.',12000);
    
insert into Employee2(EmpId,EmpName,Joining_Year,Birthday,Designation,Salary) values
	(102,'Arif Khan',2005,'2000-02-01','Senior dev.',52000);





