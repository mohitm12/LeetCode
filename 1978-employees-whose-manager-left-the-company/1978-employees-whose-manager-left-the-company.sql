# Write your MySQL query statement below
select employee_id
from employees 
where salary<30000 and manager_id is not null and employee_id not in 
    (
        select e.employee_id
        from employees e
        join employees f on e.manager_id=f.employee_id
    )
    order by employee_id
;