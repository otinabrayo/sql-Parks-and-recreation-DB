-- Stored Procedures

SELECT *
FROM employee_salary
WHERE salary >= 50000;

CREATE PROCEDURE large_sal()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL large_sal();

DELIMITER $$
CREATE PROCEDURE large_sal4()
BEGIN
    SELECT * FROM employee_salary WHERE salary >= 50000;
    SELECT * FROM employee_salary WHERE salary >= 30000;
END $$
DELIMITER ;

CALL large_sal4();

DELIMITER $$

CREATE PROCEDURE large_sal9(employee_id_param INT)
BEGIN
    SELECT salary FROM employee_salary WHERE employee_id = employee_id_param;
END $$

DELIMITER ;

CALL large_sal9(1);
