create database versity;
use versity;

-- constraint:(unique, not null, check, default)
create table students(
	Roll int primary key,
    Name varchar(20) not null,
    Email varchar(50) unique,
    Age int check(Age > 18),
    Address varchar(50) default 'Not given'
);
insert into students values
	(1,'Anisul alam','anus11@gmail.com',23,'Chittagong'),
    (2,'Ariful islam','arif22@gmail.com',25,'Dhaka');

insert into students (Roll,Name,Email,Age)
values (3,'Akib Jabed','akib22@gmail.com',19);

-- Advance Syntax:-
create table std2(
	Roll int,
    Name varchar(20) not null,
    Email varchar(50),
    Age int,
    Address varchar(50) default 'Not given',
    constraint pk primary key(Roll),
    constraint unique_email_ck unique(Email),
    constraint age_ck check(Age > 18)
    
);
insert into std2 values
	(1,'Anisul alam','anus11@gmail.com',23,'Chittagong'),
    (2,'Ariful islam','arif22@gmail.com',25,'Dhaka');

insert into std2 (Roll,Name,Email,Age)
values (3,'akib','akib22@gmail.com',19);
