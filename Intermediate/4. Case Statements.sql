-- CASE STATEMENTS

SELECT first_name,
last_name,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'Old'
    WHEN age >= 50 THEN "On Death's Door"
END AS age_category
FROM employee_demographics;


-- Pay Increase and Bonus
-- <50000 = 5%
-- >50000 = 7%
-- Finance = 10% bonus

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 50000 THEN salary + (salary * 0.05)
    WHEN salary > 50000 THEN salary + (salary * 0.07)
END AS salary_increment_bonus,
CASE
	WHEN dept_id = 6 THEN salary + (salary * 0.10)
    WHEN dept_id != 6 THEN 'No Bonus'
END AS bonus
FROM employee_salary
ORDER BY first_name
;

SELECT *
FROM employee_salary;
SELECT *
FROM parks_departments;