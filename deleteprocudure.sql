CREATE OR REPLACE PROCEDURE proc_delete_student(
    in_student_id IN students.student_id%TYPE
)
AS
BEGIN
    DELETE FROM students
    WHERE student_id = in_student_id;

    COMMIT;
END;
/