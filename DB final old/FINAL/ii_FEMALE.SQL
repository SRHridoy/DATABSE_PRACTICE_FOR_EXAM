-- database: :memory:
SELECT EP.Position
FROM EmployeePosition AS EP 
JOIN EmployeeInfo AS EI 
ON EP.Emp_Id = EI.Emp_Id
WHERE EI.Gender = 'F';