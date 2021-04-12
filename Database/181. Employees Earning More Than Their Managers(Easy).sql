SELECT Employee
FROM (
SELECT e1.name as Employee, e1.id,e1.salary as sal,e2.salary as msal
FROM Employee e1 LEFT JOIN Employee e2
ON e1.ManagerId = e2.Id )
WHERE sal > msal
