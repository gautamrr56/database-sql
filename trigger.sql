CREATE OR REPLACE TRIGGER trg_min_marks
AFTER INSERT OR UPDATE ON students
FOR EACH ROW
BEGIN
    DECLARE
        vn_min_marks NUMBER;
    BEGIN
        SELECT MIN(marks)
        INTO vn_min_marks
        FROM students;

        DBMS_OUTPUT.PUT_LINE('Minimum marks: ' || vn_min_marks);
    END;
END;
/