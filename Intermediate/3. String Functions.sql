-- STRING FUNCTIONS

SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name) AS length
FROM employee_demographics
ORDER BY length
;

SELECT UPPER('sky');
SELECT LOWER('SKY');

SELECT first_name, UPPER(first_name) AS UPPER
FROM employee_demographics;

SELECT TRIM('       sky      ');


SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 2),
SUBSTRING(birth_date, 6, 2) AS birth_month
FROM employee_demographics;


SELECT first_name, REPLACE(first_name, 'a', 'z'), REPLACE(birth_date, '-', '/')
FROM employee_demographics;

SELECT LOCATE('r', 'Gabriel');

SELECT first_name, LOCATE('an', first_name)
FROM employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name, ' ', last_name) AS full_name
FROM employee_demographics;