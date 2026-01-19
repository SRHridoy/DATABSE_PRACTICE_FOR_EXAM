-- database: :memory:
SELECT DISTINCT(C.c_name)
FROM CUSTOMER AS C
JOIN PACKET P 
ON C.c_no = P.c_no
WHERE P.weight > 1 AND P.destination = 'BOMBAY';