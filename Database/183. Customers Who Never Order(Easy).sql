SELECT NAME AS CUSTOMERS
FROM CUSTOMERS C LEFT JOIN ORDERS O
ON C.ID = O.CUSTOMERID
WHERE O.ID IS NULL
