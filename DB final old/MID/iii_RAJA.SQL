-- database: :memory:
SELECT DISTINCT(C.c_name)
FROM CUSTOMER AS C
JOIN PACKET AS P
ON C.c_no = P.c_no
JOIN TRUCK AS T
ON T.t_no = P.t_no
WHERE T.driver_name = 'RAJA';