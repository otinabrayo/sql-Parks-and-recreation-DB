-- String Functions

SELECT length('skyfall');

SELECT first_name, length(first_name)
FROM employee_demographics
ORDER BY 2;

SELECT UPPER('sky');

SELECT first_name, upper(first_name)
FROM employee_demographics;
 
 SELECT rtrim('       sky        ');

SELECT first_name, RIGHT(first_name, 4), 
LEFT(first_name, 4),
substring(first_name, 2, 3),
substring(birth_date, 6,2) birth_month
FROM employee_demographics;

SELECT first_name, 
replace(first_name,'e', 'E' ),
locate('An', first_name)
FROM employee_demographics;

SELECT locate('n','Ben');

SELECT first_name, last_name,
concat(first_name," ", last_name) full_name
FROM employee_demographics;

