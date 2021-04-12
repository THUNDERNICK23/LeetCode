SELECT DISTINCT num ConsecutiveNums
FROM 
(
    SELECT num,lead(num) over(order by id) as lead,lead(num,2) over(order by id) as lead2
    FROM logs 
) decoy
WHERE num = lead 
AND   num = lead2
