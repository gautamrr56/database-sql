CREATE OR REPLACE PROCEDURE proc_get_student (
    in_student_id IN students.student_id%TYPE,
    out_student_name OUT students.student_name%TYPE
)
IS
BEGIN
    SELECT student_name
    INTO out_student_name
    FROM students
    WHERE student_id = in_student_id;
END;
/