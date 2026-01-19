-- database: :memory:
SELECT concat(EI.FirstName,' ',EI.LastName) AS Employee_name , EI.Dept,EP.Position 
FROM EmployeeInfo AS EI 
JOIN EmployeePosition AS EP 
ON EI.Emp_Id = EP.Emp_Id;
