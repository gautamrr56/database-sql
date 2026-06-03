CRATE TABLE personals(
	person_id NUMBER(8) PRIMARY KEY,
	first_name VARCHAR2(15),
	last_name VARCHAR2(10),
	gender VARCHAR2(5),
	date_of_birth DATE,
	phone_number NUMBER(10),
	email VARCHAR2(15)
);

CREATE TABLE addresses(
    address_id NUMBER(7) PRIMARY KEY,
    person_id NUMBER(8) FOREIGN KEY,
    country VARCHAR2(15),
    state VARCHAR2(10),
    city VARCHAR2(10),
    street_name(12)
);

CREATE TABLE academic(
    academic_id NUMBER(10) PRIMARY KEY,
    person_id NUMBER(12) FOREIGN KEY,
    degree VARCHAR2(20),
    institute VARCHAR2(30),
    year_of_complete YEAR,
    grade VARCHAR2(5),
    duration_year YEAR,
);

CREATE TABLE documentation(
    document_id NUMBER(20),
    person_id NUMBER(10) FOREGIN KEY,
    document_type VARCHAR2(20),
    document_number VARCHAR2(22),
    issue_date DATE,
    expiry_date DATE,
);