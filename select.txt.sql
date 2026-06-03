SELECT * FROM personals;

SELECT * FROM addresses;

SELECT * FROM academic;

SELECT * FROM documentation;

SELECT first_name, last_name, gender
FROM personals;

SELECT country, city
FROM addresses;

SELECT degree, institute, grade
FROM academic;

SELECT document_type, document_number
FROM documentation;

SELECT p.first_name,
       p.last_name,
       a.country,
       a.city
FROM personals p
INNER JOIN addresses a
ON p.person_id = a.person_id;

SELECT p.first_name,
       ac.degree,
       ac.institute
FROM personals p
INNER JOIN academic ac
ON p.person_id = ac.person_id;

SELECT p.first_name,
       d.document_type,
       d.document_number
FROM personals p
INNER JOIN documentation d
ON p.person_id = d.person_id;