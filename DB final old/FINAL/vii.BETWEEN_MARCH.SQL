-- database: :memory:
SELECT CONCAT(EI.FirstName , " " , EI.LastName) AS Employee_name , EP.DateOfJoining AS JoiningDate
FROM EmployeeInfo AS EI 
JOIN EmployeePosition AS EP 
ON EI.Emp_Id = EP.Emp_Id
WHERE EP.DateOfJoining BETWEEN '2022-03-01' AND '2022-06-30';