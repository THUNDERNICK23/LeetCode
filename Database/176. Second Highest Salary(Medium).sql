select max(salary) as SecondHighestSalary
from
(select salary , dense_rank() over(order by salary desc) rk
from employee)
where rk = 2
