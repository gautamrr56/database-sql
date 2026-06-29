CREATE OR REPLACE FUNCTION fn_count_students
RETURN NUMBER
IS
    vn_student_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO vn_student_count
    FROM students;

    RETURN vn_student_count;
END;
/