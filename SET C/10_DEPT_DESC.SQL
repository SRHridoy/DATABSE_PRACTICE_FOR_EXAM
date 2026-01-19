-- database: :memory:
SELECT 
DEPARTMENT,COUNT(*) AS No_of_worker
FROM worker
GROUP BY DEPARTMENT
ORDER BY No_of_worker DESC;