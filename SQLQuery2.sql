-- Create the Employee table
CREATE TABLE Employee (
    EmpId INT PRIMARY KEY IDENTITY(1, 1),
    EmpName VARCHAR(50) NOT NULL,
    EmpSalary MONEY NOT NULL,
    EmpManagerID INT
);

-- Create index on EmpId column
CREATE INDEX idx_Employee_EmpId ON Employee(EmpId);

-- Create index on EmpManagerID column
CREATE INDEX idx_Employee_EmpManagerID ON Employee(EmpManagerID);

-- Insert data into the Employee table
INSERT INTO Employee (EmpName, EmpSalary, EmpManagerID)
VALUES ('Rohit', 20000, 3),
       ('Sangeeta', 12000, 5),
       ('Sanjay', 10000, 5),
       ('Arun', 25000, 3),
       ('Zaheer', 30000, NULL);


SELECT e1.EmpName AS Emp, e2.EmpName AS Mgr
FROM Employee e1
LEFT JOIN Employee e2 ON e1.EmpManagerID = e2.EmpId;