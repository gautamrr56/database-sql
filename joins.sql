CREATE TABLE course_department(
    deptid NUMBER,
    deptname VARCHAR2(30)
);

INSERT INTO course_department VALUES(1,'Computer');
INSERT INTO course_department VALUES(2,'Management');

CREATE TABLE student_info(
    sid NUMBER,
    firstname VARCHAR2(30),
    marks NUMBER,
    deptid NUMBER
);

INSERT INTO student_info VALUES(1,'Git',75,1);
INSERT INTO student_info VALUES(2,'Ram',65,2);
INSERT INTO student_info VALUES(3,'Sita',85,1);

SELECT s.firstname,d.deptname
FROM student_info s
INNER JOIN course_department d
ON s.deptid=d.deptid;

CREATE TABLE python_students(
    sid NUMBER
);

INSERT INTO python_students VALUES(1);
INSERT INTO python_students VALUES(2);

CREATE TABLE web_students(
    sid NUMBER
);

INSERT INTO web_students VALUES(2);
INSERT INTO web_students VALUES(3);

SELECT sid FROM python_students
UNION
SELECT sid FROM web_students;

SELECT sid FROM python_students
INTERSECT
SELECT sid FROM web_students;

SELECT sid FROM python_students
MINUS
SELECT sid FROM web_students;

SELECT * FROM student_info
WHERE marks BETWEEN 60 AND 80;