-- database: :memory:
SELECT EI.Dept, MAX(Salary) AS Max_salary
FROM EmployeePosition AS EP 
JOIN EmployeeInfo AS EI 
ON EP.Emp_Id = EI.Emp_Id
GROUP BY EI.Dept;