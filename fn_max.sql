CREATE OR REPLACE FUNCTION fn_max_marks
RETURN NUMBER
IS
    vn_max_marks NUMBER;
BEGIN
    SELECT MAX(marks)
    INTO vn_max_marks
    FROM students;

    RETURN vn_max_marks;
END;
/