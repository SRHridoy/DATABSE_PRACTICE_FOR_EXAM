-- database: :memory:
SELECT EP.DateOfJoining
FROM EmployeePosition AS EP
JOIN EmployeeInfo AS EI 
ON EP.Emp_id = EI.Emp_id
WHERE FirstName LIKE 'R%';