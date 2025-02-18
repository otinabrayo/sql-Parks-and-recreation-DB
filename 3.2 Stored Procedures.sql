-- Stored Procedures

-- SELECT *
-- FROM employee_salary
-- WHERE salary >= 50000;

-- CREATE PROCEDURE large_sal()
-- SELECT *
-- FROM employee_salary
-- WHERE salary >= 50000;

-- CALL large_sal();

DELIMITER $$
CREATE PROCEDURE large_sal3()
BEGIN
    SELECT * FROM employee_salary WHERE salary >= 50000;
    SELECT * FROM employee_salary WHERE salary >= 10000;
END $$
DELIMITER ;

CALL large_sal2();
