CREATE TABLE student_record(
    sid NUMBER,
    firstname VARCHAR2(30),
    marks NUMBER
);

INSERT INTO student_record VALUES(1,'Gautam',88);
INSERT INTO student_record VALUES(2,'Rohan',72);
INSERT INTO student_record VALUES(3,'Bibek',65);

SELECT * FROM student_record
WHERE firstname LIKE 'G%';

SELECT * FROM student_record
WHERE firstname NOT LIKE 'G%';

SELECT * FROM student_record
WHERE marks BETWEEN 60 AND 80;

SELECT * FROM student_record
WHERE sid IN (1,3);