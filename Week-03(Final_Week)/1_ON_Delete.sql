create table student(
	roll int primary key,
    name varchar(20),
    age int
);
create table course(
	course_no char(1) primary key,
    course_name varchar(20)
);
create table enroll(
	roll int,
    course_no varchar(20),
    date date,
    constraint fk foreign key (roll) references student(roll),
    constraint fk2 foreign key(course_no) references course(course_no)
);

INSERT INTO student (roll, name, age) VALUES
(1, 'Alice', 20),
(2, 'Bob', 21),
(3, 'Charlie', 22),
(4, 'David', 20),
(5, 'Eve', 23);

INSERT INTO course (course_no, course_name) VALUES
('A', 'Mathematics'),
('B', 'Physics'),
('C', 'Chemistry'),
('D', 'Biology'),
('E', 'Computer Science');

INSERT INTO enroll (roll, course_no, date) VALUES
(1, 'A', '2024-01-10'),
(2, 'B', '2024-02-15'),
(3, 'C', '2024-03-20'),
(4, 'D', '2024-04-25'),
(5, 'E', '2024-05-30');

-- delete a record from student table:
delete from student 
where roll = 2;		-- It's not working, because of forign key
-- For this we need to use "ON DELETE CASCAD/SET NULL" when we create this tables
drop database db3;
-- Again create hole database "db3" using "ON DELETE CASCAD/SET NULL".
create database db3;
use db3;

create table student(
	roll int primary key,
    name varchar(20),
    age int
);
create table course(
	course_no char(1) primary key,
    course_name varchar(20)
);
create table enroll(
	roll int,
    course_no varchar(20),
    date date,
    constraint fk foreign key (roll) references student(roll) on delete cascade,
    constraint fk2 foreign key(course_no) references course(course_no) on delete set null
);

INSERT INTO student (roll, name, age) VALUES
(1, 'Alice', 20),
(2, 'Bob', 21),
(3, 'Charlie', 22),
(4, 'David', 20),
(5, 'Eve', 23);

INSERT INTO course (course_no, course_name) VALUES
('A', 'Mathematics'),
('B', 'Physics'),
('C', 'Chemistry'),
('D', 'Biology'),
('E', 'Computer Science');

INSERT INTO enroll (roll, course_no, date) VALUES
(1, 'A', '2024-01-10'),
(2, 'B', '2024-02-15'),
(3, 'C', '2024-03-20'),
(4, 'D', '2024-04-25'),
(5, 'E', '2024-05-30');

-- delete a record from student table:
delete from student 
where roll = 2;

delete from course
where course_no = 'D';