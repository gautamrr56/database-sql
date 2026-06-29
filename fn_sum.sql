CREATE OR REPLACE FUNCTION fn_sum_marks
RETURN NUMBER
IS
    vn_total_marks NUMBER;
BEGIN
    SELECT SUM(marks)
    INTO vn_total_marks
    FROM students;

    RETURN vn_total_marks;
END;
/