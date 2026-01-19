-- database: :memory:
INSERT INTO EmployeeInfo 
(Emp_Id, FirstName, LastName, Dept, Project, Address, DOB, Gender)
VALUES
(1, 'Sanjay', 'Mehra', 'HR', 'P1', 'Hyderabad(HYD)', '1976-12-01', 'M'),
(2, 'Ananya', 'Mishra', 'Admin', 'P2', 'Delhi(DEL)', '1968-05-02', 'F'),
(3, 'Rohan', 'Diwan', 'Account', 'P3', 'Mumbai(BOM)', '1980-01-01', 'M'),
(4, 'Sonia', 'Kulkarni', 'HR', 'P1', 'Hyderabad(HYD)', '1992-05-02', 'F'),
(5, 'Ankit', 'Kapoor', 'Admin', 'P2', 'Delhi(DEL)', '1994-07-03', 'M');


INSERT INTO EmployeePosition
(Emp_Id, Position, DateOfJoining, Salary)
VALUES
(1, 'Manager',   '2022-03-01', 500000),
(2, 'Executive', '2022-05-02', 75000),
(3, 'Manager',   '2022-04-01', 90000),
(2, 'Lead',      '2022-06-02', 85000),
(1, 'Executive', '2022-09-01', 300000);
