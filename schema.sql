CREATE TABLE Advisors ( advisor_id INT PRIMARY KEY, advisor_name VARCHAR(100) NOT NULL, advisor_email VARCHAR(100) UNIQUE );

CREATE TABLE Instructors ( instructor_id INT PRIMARY KEY, instructor_name VARCHAR(100) NOT NULL, instructor_email VARCHAR(100) UNIQUE );

CREATE TABLE Courses ( course_code VARCHAR(10) PRIMARY KEY, course_name VARCHAR(100) NOT NULL, instructor_id INT NOT NULL, );

CREATE TABLE Students ( student_id INT PRIMARY KEY, student_name VARCHAR(100) NOT NULL, department VARCHAR(100) NOT NULL, advisor_id INT, );

CREATE TABLE Enrollments ( student_id INT, course_code VARCHAR(10), enrollment_year INT DEFAULT 2025, marks_obtained DECIMAL(5,2), );