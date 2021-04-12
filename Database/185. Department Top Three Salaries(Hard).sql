select d.name as Department,e.name as Employee,e.salary as Salary
from 
(select emp.*,dense_rank() over(partition by departmentid order by salary desc) as rank
from employee emp) e join department d
on e.departmentid = d.id
where rank <= 3
