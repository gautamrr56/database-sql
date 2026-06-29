CREATE OR REPLACE PROCEDURE proc_update_student(
    in_student_name IN students.student_name%TYPE,
    in_student_id   IN students.student_id%TYPE,
    in_age          IN students.age%TYPE
)
AS
BEGIN
    UPDATE students
    SET student_name = in_student_name,
        age = in_age
    WHERE student_id = in_student_id;

    COMMIT;
END;
/