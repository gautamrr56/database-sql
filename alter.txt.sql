ALTER TABLE personal ADD (
    person_id NUMBER(5) PRIMARY KEY,
    first_name VARCHAR2(25),
    last_name VARCHAR2(25),
    gender VARCHAR2(10),
    date_of_birth DATE,
    phone VARCHAR2(15),
    email VARCHAR2(50),
    blood_group VARCHAR2(5),
    marital_status VARCHAR2(10)
);

ALTER TABLE addresses ADD (
    address_id NUMBER(5) PRIMARY KEY,
    person_id NUMBER(5),
    country VARCHAR2(25),
    state VARCHAR2(25),
    district VARCHAR2(25),
    city VARCHAR2(25),
    street_name VARCHAR2(25),
    postal_code VARCHAR2(10),
    address_type VARCHAR2(15)
);

ALTER TABLE addresses ADD CONSTRAINT fk_person
    FOREIGN KEY (person_id) REFERENCES personal(person_id);

ALTER TABLE academic ADD (
    academic_id NUMBER(5) PRIMARY KEY,
    person_id NUMBER(5),
    degree VARCHAR2(50),
    institution VARCHAR2(100),
    year_of_complete DATE,
    grade VARCHAR2(5),
    duration_year NUMBER(2),
    major_subject VARCHAR2(50)
);

ALTER TABLE academic ADD CONSTRAINT fk_person_academic
    FOREIGN KEY (person_id) REFERENCES personal(person_id);