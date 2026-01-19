-- database: :memory:
SELECT DISTINCT(EI.Project)
FROM EmployeeInfo AS EI 
JOIN EmployeePosition AS EP 
ON EI.Emp_Id = EP.Emp_Id
WHERE EI.Address = 'Delhi(DEL)';