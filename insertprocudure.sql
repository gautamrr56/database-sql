CREATE OR REPLACE PROCEDURE proc_add_student(
    in_student_name IN students.student_name%TYPE,
    in_student_id   IN students.student_id%TYPE,
    in_age          IN students.age%TYPE
)
AS
BEGIN
    INSERT INTO students(
        student_name,
        student_id,
        age
    )
    VALUES(
        in_student_name,
        in_student_id,
        in_age
    );

    COMMIT;
END;
/