CREATE OR REPLACE FUNCTION fn_avg_marks
RETURN NUMBER
IS
    vn_avg_marks NUMBER;
BEGIN
    SELECT AVG(marks)
    INTO vn_avg_marks
    FROM students;

    RETURN vn_avg_marks;
END;
/