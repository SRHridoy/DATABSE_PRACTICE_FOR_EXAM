-- database: :memory:
CREATE TABLE EmployeeInfo (
    Emp_Id INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Dept VARCHAR(20),
    Project VARCHAR(10),
    Address VARCHAR(50),
    DOB DATE,
    Gender CHAR(1)
);



CREATE TABLE EmployeePosition (
    Emp_Id INT,
    Position VARCHAR(30),
    DateOfJoining DATE,
    Salary INT,
    FOREIGN KEY (Emp_Id) REFERENCES EmployeeInfo(Emp_Id)
);

DELETE FROM EmployeeInfo;
DELETE FROM EmployeePosition;