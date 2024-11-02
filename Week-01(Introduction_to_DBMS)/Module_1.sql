create database college;
use college;
create table students(
	Roll int primary key,
    Name varchar(50),
    Age char(2),
    Gender varchar(6),
    GPA double,
    City varchar(50),
    Phone char(4)
);
INSERT INTO students VALUES
	(1, 'Anisul Alam', 23, 'Male', 4.33, 'Chittagong', 0181),
	(2, 'Tasmia Akter', 21, 'Female', 4.12, 'Dhaka', 0182),
	(3, 'Mahmud Hasan', 22, 'Male', 3.98, 'Sylhet', 0183),
	(4, 'Rahat Hossain', 24, 'Male', 3.65, 'Rajshahi', 0184),
	(5, 'Jannatul Ferdous', 20, 'Female', 4.25, 'Khulna', 0185),
	(6, 'Sabbir Ahmed', 23, 'Male', 3.78, 'Barisal', 0186),
	(7, 'Nusrat Jahan', 21, 'Female', 4.00, 'Comilla', 0187),
	(8, 'Mizanur Rahman', 25, 'Male', 3.45, 'Mymensingh', 0188),
	(9, 'Sadia Islam', 22, 'Female', 4.05, 'Gazipur', 0189),
	(10, 'Kazi Rafiqul', 24, 'Male', 3.88, 'Narayanganj', 0190),
	(11, 'Hasibul Haque', 23, 'Male', 3.90, 'Bogra', 0191),
	(12, 'Anika Sultana', 20, 'Female', 4.18, 'Jessore', 0192),
	(13, 'Imran Hossain', 22, 'Male', 4.10, 'Narsingdi', 0193),
	(14, 'Fahmida Pervin', 21, 'Female', 3.92, 'Tangail', 0194),
	(15, 'Samiul Islam', 24, 'Male', 3.73, 'Sirajganj', 0195),
	(16, 'Nadia Akhter', 23, 'Female', 4.15, 'Pabna', 0196),
	(17, 'Rafsan Ahmed', 21, 'Male', 3.82, 'Noakhali', 0197),
	(18, 'Farhana Begum', 22, 'Female', 4.11, 'Lalmonirhat', 0198),
	(19, 'Habibullah', 25, 'Male', 3.55, 'Kushtia', 0199),
	(20, 'Maruf Alam', 23, 'Male', 4.20, 'Dinajpur', 0200);
select *
from students;
