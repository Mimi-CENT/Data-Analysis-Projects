-- Use aggregate functions to get some insights from the students table 
USE school

SELECT *
FROM students;

SELECT COUNT(*) FROM students;

SELECT COUNT(grade) FROM students;

SELECT SUM(age) FROM students;
SELECT SUM(grade) FROM students;

SELECT AVG(age) FROM students;
SELECT AVG(grade) FROM students;

SELECT MIN(age) FROM students;
SELECT MIN(grade) FROM students;

SELECT MAX(age) FROM students;
SELECT MAX(grade) FROM students;

-- Filter students with grade above 90
SELECT *
FROM students
WHERE grade > 90;

-- Filter students in Math with grade above 85, sorted by grade descending
SELECT *
FROM students
WHERE subject = 'Math' AND grade > 85
ORDER BY grade DESC;

-- List all students sorted by age ascending, then grade descending
SELECT *
FROM students
ORDER BY age ASC, grade DESC;

-- Count number of students in each subject who scored above 80
SELECT subject, COUNT(*) AS num_students
FROM students
WHERE grade > 80
GROUP BY subject;
