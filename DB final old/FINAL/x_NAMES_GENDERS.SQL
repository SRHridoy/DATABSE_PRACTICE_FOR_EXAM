-- database: :memory:
SELECT CONCAT(EI.FirstName, " ", EI.LastName) AS Emp_name, EI.Gender AS Emp_gender
FROM EmployeeInfo AS EI 
JOIN EmployeePosition AS EP 
ON EI.Emp_Id = EP.Emp_Id 
WHERE EP.Position = 'Lead';