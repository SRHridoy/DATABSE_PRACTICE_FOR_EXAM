-- database: :memory:
SELECT C.c_name, SUM(P.weight) AS Total_weight
FROM CUSTOMER AS C
JOIN PACKET AS P
ON C.c_no = P.c_no
GROUP BY C.c_name
ORDER BY Total_weight DESC
LIMIT 3;