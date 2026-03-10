---A company database contains one tables: Employee(EmpID, EmpName, Salary) .
---Write an SQL query to create a VIEW named HighSalaryEmployees that displays EmpID, EmpName, 
---and Salary from the Employee table where the Salary is greater than 50000.

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(40),
    Salary INT
);

INSERT INTO Employee VALUES (1, 'Swayam', 45000);
INSERT INTO Employee VALUES (2, 'Anindita', 60000);
INSERT INTO Employee VALUES (3, 'Riya', 75000);
INSERT INTO Employee VALUES (4, 'Roshan', 50000);
INSERT INTO Employee VALUES (5, 'Sanchit', 90000);

CREATE VIEW HighSalaryEmployees AS
SELECT EmpID, EmpName, Salary
FROM Employee
WHERE Salary > 50000;

SELECT*FROM HighSalaryEmployees;