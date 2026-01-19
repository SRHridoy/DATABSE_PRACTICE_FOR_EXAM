-- database: :memory:
SELECT EI.LastName
FROM EmployeeInfo AS EI 
JOIN EmployeePosition AS EP 
ON EI.Emp_Id = EP.Emp_Id 
WHERE EI.Gender = 'M' AND EP.Position = 'Manager';
