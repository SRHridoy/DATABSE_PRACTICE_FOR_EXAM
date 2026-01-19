-- database: :memory:
SELECT destination
FROM PACKET
GROUP BY destination
HAVING COUNT(p_no) > 10;