CREATE TYPE mobile_array AS VARRAY(5)
OF VARCHAR2(20);
/

CREATE TABLE client_details(
    cid NUMBER,
    cname VARCHAR2(30),
    phones mobile_array
);

INSERT INTO client_details
VALUES(1,'Gautam',mobile_array('9819608363','9801234567'));

SELECT * FROM client_details;