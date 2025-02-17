-- Case Statements

SELECT first_name, 
last_name, 
age,
CASE
	WHEN age <= 30 THEN "Young"
    WHEN age BETWEEN 31 and 50 THEN "Old"
	WHEN age >= 50 THEN "Death is 👀 near"
END Age_Bracket

FROM employee_demographics;

-- Pay Increasee and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% bonus
SELECT first_name, 
last_name, 
salary,
dept_id,
CASE 
	WHEN salary <= 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
END New_Salary,
CASE
	WHEN dept_id = 6 THEN salary * .10
END Bonus
FROM employee_salary;

SELECT *
FROM parks_departments;
