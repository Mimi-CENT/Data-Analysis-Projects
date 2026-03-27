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
