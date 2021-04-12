SELECT Email
FROM Person
HAVING COUNT(email) > 1
GROUP BY email
