-- GROUP BY

SELECT *
FROM employee_demographics;

SELECT gender
FROM employee_demographics
GROUP BY gender
;

SELECT gender, AVG(age) AS avg_age, MAX(age) AS oldest, MIN(age) AS youngest, COUNT(age) AS total_gender
FROM employee_demographics
GROUP BY gender
;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;

-- ORDER BY
SELECT *
FROM employee_demographics
ORDER BY gender, age DESC
;