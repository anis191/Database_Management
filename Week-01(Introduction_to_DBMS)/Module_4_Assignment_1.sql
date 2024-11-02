-- https://docs.google.com/document/d/1QnMnU0D0F7_vWx9eaGruQ-78s5XYDIypMmJ1k1Zz_IQ/edit?tab=t.0
create table student(
	Roll int primary key,
    Name varchar(50) not null,
    department varchar(20) not null
);
create table Library(
	Book_name varchar(50) primary key,
    Roll int,
    constraint fk foreign key(Roll) references student(Roll)
);
create table Fees(
	Roll int,
	Total_fee int not null,
    constraint fk foreign key(Roll) references student(Roll)
);
use versity;
create table Employee(
	EmployeeID int primary key,
    FirstName varchar(50) not null,
    LastName varchar(50),
    Age int,
    Department varchar(50)
);

INSERT INTO Employee VALUES
    (1, 'John', 'Doe', 28, 'Sales'),
    (2, 'Jane', 'Smith', 32, 'Marketing'),
    (3, 'Michael', 'Johnson', 35, 'Finance'),
    (4, 'Sarah', 'Brown', 30, 'HR'),
    (5, 'William', 'Davis', 25, 'Engineering'),
    (6, 'Emily', 'Wilson', 28, 'Sales'),
    (7, 'Robert', 'Lee', 33, 'Marketing'),
    (8, 'Laura', 'Hall', 29, 'Finance'),
    (9, 'Thomas', 'White', 31, 'HR'),
    (10, 'Olivia', 'Clark', 27, 'Engineering');

-- Write a query to show the distinct department names
select distinct Department
from Employee;
-- Write a query to show the LastNames of the employees sorted by  descending ages:
select LastName
from Employee
order by Age DESC;
-- Write a query to show the employee LastName whose age is greater than 30 and works in Marketing department:
select LastName
from Employee
where (Age > 30) and (Department = 'Marketing');
-- Write a query to select all the employees:
select *
from Employee;
-- Write a query to get the engineers:
select *
from Employee
where Department = 'Engineering';
-- Write a query to get employees whose names includes ‘son’:
select *
from Employee
where FirstName like '%son%' or  LastName like '%son%';