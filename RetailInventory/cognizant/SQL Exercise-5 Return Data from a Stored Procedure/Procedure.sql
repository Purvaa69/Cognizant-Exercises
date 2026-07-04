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
('Rohit','Verma',2,65000,'2024-02-28'),
('Anjali','Deshmukh',2,58000,'2025-01-15');

DROP PROCEDURE IF EXISTS sp_GetEmployeeCountByDepartment;

DELIMITER $$

CREATE PROCEDURE sp_GetEmployeeCountByDepartment(IN p_DepartmentID INT)
BEGIN
    SELECT COUNT(*) AS TotalEmployees
    FROM Employees
    WHERE DepartmentID = p_DepartmentID;
END $$

DELIMITER ;

CALL sp_GetEmployeeCountByDepartment(1);

CALL sp_GetEmployeeCountByDepartment(2);

CALL sp_GetEmployeeCountByDepartment(3);