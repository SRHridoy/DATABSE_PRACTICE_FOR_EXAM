-- database: :memory:
SELECT * FROM Employee E1
LEFT JOIN Employee E2
ON E1.Employee_num = E2.Employee_num
WHERE E2.Employee_num IS NULL;