-- Create a school database
CREATE DATABASE school;
USE school;

-- Create a studnets table that contains student_id, name, age, subject, and grade
CREATE TABLE students(
	student_id INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	age INT NOT NULL,
	subject VARCHAR(100) NOT NULL,
	grade INT NOT NULL
);

-- Insert sample data into the students table
INSERT INTO students(student_id, name, age, subject, grade)
VALUES
(1, 'Amy Bon', 18, 'Math', 85),
(2, 'Jane Smith', 19, 'Math', 92),
(3, 'Sara Lee', 18, 'History', 78),
(4, 'Emily Davis', 19, 'History', 91),
(5, 'Olivia Wilson', 20, 'Math', 95),
(6, 'Sophia Thomas', 19, 'Math', 80),
(7, 'Ashley Clark', 18, 'History', 83),
(8, 'Eve Brown', 18, 'Math', 95),
(9, 'Sonia Martin', 20, 'History', 76),
(10, 'Lisa Thomas', 19, 'Math', 88);
