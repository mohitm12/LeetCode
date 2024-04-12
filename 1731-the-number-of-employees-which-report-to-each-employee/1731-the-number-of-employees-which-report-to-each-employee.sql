# Write your MySQL query statement below
select e.reports_to as employee_id, a.name as name, count(distinct e.employee_id) as reports_count, round(avg(e.age),0) as average_age
from employees e
join employees a on e.reports_to = a.employee_id
group by e.reports_to
having e.reports_to is not null;