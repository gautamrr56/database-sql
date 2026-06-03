CREATE OR REPLACE TYPE address_type AS OBJECT (
    country VARCHAR2(20),
    city    VARCHAR2(20)
);
/

CREATE OR REPLACE TYPE name_type AS OBJECT (
    first_name VARCHAR2(20),
    last_name  VARCHAR2(20)
);
/

CREATE TABLE student_details (
    student_name name_type,
    address      address_type,
    email        VARCHAR2(50),
    contact      NUMBER(15),
    faculty      VARCHAR2(30)
);

INSERT INTO student_details (student_name, address, email, contact, faculty)
VALUES (
    name_type('Gautam', 'Shah'), 
    address_type('Nepal', 'Pokhara'), 
    'gautam@gmail.com', 
    9819608363, 
    'Computer Science'
);