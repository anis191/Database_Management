create database Online_Course_Management_System;
use Online_Course_Management_System;
CREATE TABLE Instructor (	
    InstructorID INT AUTO_INCREMENT PRIMARY KEY,	
    Name VARCHAR(255) NOT NULL,	
    Email VARCHAR(255) NOT NULL UNIQUE,	
    Phone VARCHAR(15),	
    Department VARCHAR(50)	
);	

CREATE TABLE Course (	
    CourseID INT AUTO_INCREMENT PRIMARY KEY,	
    Title VARCHAR(255) NOT NULL,	
    Credits INT NOT NULL,	
    InstructorID INT,	
    FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)	
);	
CREATE TABLE Student (	
    StudentID INT AUTO_INCREMENT PRIMARY KEY,	
    Name VARCHAR(255) NOT NULL,	
    Email VARCHAR(255) NOT NULL UNIQUE,	
    Phone VARCHAR(15)	
);
CREATE TABLE Enrollment (	
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,	
    StudentID INT,	
    CourseID INT,	
    EnrollmentDate DATE NOT NULL,	
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),	
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)	
);	

INSERT INTO Instructor (Name, Email, Phone, Department) VALUES
('Dr. Alice Smith', 'alice.smith@university.edu', '123-456-7890', 'Computer Science'),
('Dr. Bob Johnson', 'bob.johnson@university.edu', '234-567-8901', 'Mathematics'),
('Dr. Clara Taylor', 'clara.taylor@university.edu', '345-678-9012', 'Physics'),
('Dr. David Wilson', 'david.wilson@university.edu', '456-789-0123', 'Biology'),
('Dr. Emma Brown', 'emma.brown@university.edu', '567-890-1234', 'Chemistry'),
('Dr. Frank Adams', 'frank.adams@university.edu', '678-901-2345', 'History');

INSERT INTO Course (Title, Credits, InstructorID) VALUES
('Introduction to Programming', 3, 1),
('Data Structures', 4, 1),
('Calculus I', 3, 2),
('Linear Algebra', 4, 2),
('Quantum Mechanics', 3, 3),
('Classical Mechanics', 3, 3),
('Molecular Biology', 3, 4),
('Organic Chemistry', 4, 5),
('World History', 3, 6),
('Modern History', 4, 6);

INSERT INTO Student (Name, Email, Phone) VALUES
('John Doe', 'john.doe@student.edu', '111-222-3333'),
('Jane Smith', 'jane.smith@student.edu', '222-333-4444'),
('Michael Brown', 'michael.brown@student.edu', '333-444-5555'),
('Emily Davis', 'emily.davis@student.edu', '444-555-6666'),
('Sarah Wilson', 'sarah.wilson@student.edu', '555-666-7777'),
('James Taylor', 'james.taylor@student.edu', '666-777-8888'),
('Sophia Johnson', 'sophia.johnson@student.edu', '777-888-9999'),
('Matthew White', 'matthew.white@student.edu', '888-999-0000'),
('Olivia Martin', 'olivia.martin@student.edu', '999-000-1111'),
('Benjamin Lee', 'benjamin.lee@student.edu', '000-111-2222');

INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES
(1, 1, '2024-01-15'),
(1, 2, '2024-01-16'),
(2, 3, '2024-01-17'),
(2, 4, '2024-01-18'),
(3, 1, '2024-01-19'),
(3, 5, '2024-01-20'),
(4, 6, '2024-01-21'),
(4, 7, '2024-01-22'),
(5, 8, '2024-01-23'),
(5, 9, '2024-01-24'),
(6, 10, '2024-01-25'),
(7, 2, '2024-01-26'),
(8, 3, '2024-01-27'),
(9, 4, '2024-01-28'),
(10, 5, '2024-01-29'),
(1, 6, '2024-01-30'),
(2, 7, '2024-02-01'),
(3, 8, '2024-02-02'),
(4, 9, '2024-02-03'),
(5, 10, '2024-02-04');

/*Write an SQL query to insert a new enrollment record for a student
 (e.g., StudentID 5) into the course with the highest credit hours.*/
-- with high_credit as(
-- 	select courseid
-- 	from course
-- 	where credits = (select max(credits) from course)
-- 	limit 1
-- )
insert into enrollment(studentid,courseid,enrollmentdate)
	values
		(5, (select courseid
			from course
			where credits = (select max(credits) from course)
			limit 1), '2024-02-14');

/*Write an SQL UPDATE query to assign a new instructor to a course (e.g., CourseID 3) by updating the 
InstructorID.*/
update course
set instructorid = 4
where courseid = 3;
/*Write an SQL query to find the names of instructors who teach the most credits (total).*/
with mx_credit as(
	select instructorid, sum(credits) as total
	from course
	group by instructorid
),
id as(
	select instructorid
	from mx_credit
	where total = (select max(total)
					from mx_credit)
)
select name
from instructor
where instructorid in (select instructorid from id);
/*Write an SQL query to list all students who are enrolled in more than two courses.*/
-- select studentid
-- from enrollment
-- group by studentid
-- having count(*) > 2

select *
from student
where studentid in (select studentid
					from enrollment
					group by studentid
					having count(*) > 2);
use db2;
create table instructor(
    instructor_id int primary key,
    name varchar(50),
    department varchar(50)
);
create table course(
    course_id int primary key,
    course_name varchar(50),
    instructor_id int,
    constraint fk foreign key(instructor_id) references instructor(instructor_id) on delete cascade
);