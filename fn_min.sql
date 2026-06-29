CREATE OR REPLACE FUNCTION fn_min_marks
RETURN NUMBER
IS
    vn_min_marks NUMBER;
BEGIN
    SELECT MIN(marks)
    INTO vn_min_marks
    FROM students;

    RETURN vn_min_marks;
END;
/