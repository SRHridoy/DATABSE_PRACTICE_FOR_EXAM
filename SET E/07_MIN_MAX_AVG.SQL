-- database: :memory:
SELECT MAX(Salary) AS MaxSalary, MIN(Salary) AS MinSalary,
AVG(Salary) AS AvgSalary FROM Employee;