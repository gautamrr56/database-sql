SELECT COUNT(*) FROM student;

SELECT MAX(marks) FROM student;

SELECT MIN(marks) FROM student;

SELECT AVG(marks) FROM student;

SELECT SUM(marks) FROM student;

SELECT marks,COUNT(*)
FROM student
GROUP BY marks;

SELECT marks,COUNT(*)
FROM student
GROUP BY marks
HAVING COUNT(*) > 0;