CREATE TYPE subject_tab AS TABLE
OF VARCHAR2(30);
/

CREATE TABLE student_nt(
    sid NUMBER,
    sname VARCHAR2(30),
    subjects subject_tab
)
NESTED TABLE subjects
STORE AS subject_store;

INSERT INTO student_nt
VALUES(1,'Gautam',subject_tab('Java','Oracle','PHP')
);

SELECT s.sname,
       t.COLUMN_VALUE
FROM student_nt s,
TABLE(s.subjects) t;