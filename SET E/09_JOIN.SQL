-- database: :memory:
SELECT * FROM Employee e1
INNER JOIN Employee e2
ON e1.Employee_num = e2.Employee_num;