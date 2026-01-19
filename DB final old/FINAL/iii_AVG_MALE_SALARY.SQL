-- database: :memory:
SELECT AVG(EP.Salary) AS Avg_male_salary
FROM EmployeePosition AS EP 
JOIN EmployeeInfo AS EI 
ON EP.Emp_Id = EI.Emp_Id
WHERE EI.Gender = 'M';