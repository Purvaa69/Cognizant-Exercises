CREATE DATABASE IF NOT EXISTS CompanyDB;

USE CompanyDB;

CREATE TABLE IF NOT EXISTS Employees
(
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10,2),
    JoinDate DATE
);

INSERT INTO Employees
(FirstName, LastName, DepartmentID, Salary, JoinDate)
VALUES
('Rahul','Sharma',1,50000,'2024-01-10'),
('Priya','Patil',2,60000,'2023-05-15'),
('Amit','Joshi',1,55000,'2022-09-20'),
('Sneha','Kulkarni',3,70000,'2021-03-12'),
('Rohit','Verma',2,65000,'2024-02-28');

SELECT * FROM Employees;

DROP PROCEDURE IF EXISTS sp_GetEmployeeByDepartment;

DELIMITER $$

CREATE PROCEDURE sp_GetEmployeeByDepartment(IN p_DepartmentID INT)

BEGIN
    SELECT *
    FROM Employees
    WHERE DepartmentID = p_DepartmentID;
END $$

DELIMITER ;

CALL sp_GetEmployeeByDepartment(1);

CALL sp_GetEmployeeByDepartment(2);

CALL sp_GetEmployeeByDepartment(3);

DROP PROCEDURE IF EXISTS sp_InsertEmployee;

DELIMITER $$

CREATE PROCEDURE sp_InsertEmployee
(
    IN p_FirstName VARCHAR(50),
    IN p_LastName VARCHAR(50),
    IN p_DepartmentID INT,
    IN p_Salary DECIMAL(10,2),
    IN p_JoinDate DATE
)

BEGIN

INSERT INTO Employees
(
    FirstName,
    LastName,
    DepartmentID,
    Salary,
    JoinDate
)

VALUES
(
    p_FirstName,
    p_LastName,
    p_DepartmentID,
    p_Salary,
    p_JoinDate
);

END $$

DELIMITER ;

CALL sp_InsertEmployee(
'Anjali',
'Deshmukh',
2,
58000,
'2025-01-15'
);

SELECT * FROM Employees;