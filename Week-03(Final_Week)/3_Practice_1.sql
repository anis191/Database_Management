/*
Questions:
1.Create three tables named Student, Course, Enroll
	a.In Enroll Table use foreign key of Student table and Course table
	b.Use ON DELETE CASCADE for Student
	c.Use ON DELETE SET NULL for Course
2.Write differences between UNION and UNION ALL
3.Design an ERD for Student, Course, Enroll, Teacher
*/
create database school;
use school;
create table Student(
	std_id int primary key,
    name varchar(50),
    age char(2)
);
create table Course(
	course_id int primary key,
    course_name varchar(20),
    credit int
);
create table Enroll(
	std_id int,
    course_id int,
    Date date,
    -- constraint pk primary key (std_id,course_id),
    constraint fk1 foreign key(std_id) references Student(std_id) on delete cascade,
    constraint fk2 foreign key(course_id) references Course(course_id) on delete set null
);
/*
Q:3 ans- diagram link: https://lucid.app/lucidchart/73b7e423-7587-4d28-8023-ac70d5a80bab/edit?viewport_loc=-1177%2C-1112%2C1480%2C671%2C0_0&invitationId=inv_ab864520-b798-4ba7-8988-f5e74949bba0
*/
