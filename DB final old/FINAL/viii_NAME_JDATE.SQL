-- database: :memory:
SELECT CONCAT(EI.FirstName," ", EI.LastName) AS Employee_name , EP.DateOfJoining AS DateOfJoining, EI.DOB
FROM EmployeeInfo AS EI 
JOIN EmployeePosition AS EP 
ON EI.Emp_Id = EP. Emp_Id
WHERE EI.DOB < '1975-01-01';