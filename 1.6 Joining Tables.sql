-- Joins

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT dem.employee_id, age, occupation
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
-- Outer Joins

SELECT *
FROM employee_demographics dem
RIGHT JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
-- Self Join

SELECT sal1.employee_id emp_santa,
sal1.first_name first_name_santa,
sal1.last_name last_name_santa,
sal2.employee_id emp_name,
sal2.first_name first_name_emp,
sal2.last_name last_name_emp
FROM employee_salary sal1
JOIN employee_salary sal2
	ON sal1.employee_id + 1 = sal2.employee_id;

-- Joining Multiple TABLES Together
SELECT *
FROM employee_demographics dem
RIGHT JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
JOIN parks_departments pd
	ON sal.dept_id = pd.department_id;
    
SELECT *
FROM parks_departments;
    