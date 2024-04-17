# Write your MySQL query statement below
with cte as
(
    select e.id as id, e.name as name, e.salary as salary, e.departmentid as departmentid, d.name as departmentname,
    dense_rank() over(partition by e.departmentid order by salary desc) salary_rank
    from employee e 
    join department d on e.departmentid=d.id
)

select departmentname as Department, name as Employee, Salary
from cte
where salary_rank in (1,2,3);