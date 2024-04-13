# Write your MySQL query statement below
select q.person_name from 
    (select person_name, weight, turn, sum(weight) over (order by turn) as total
    from queue
    order by turn) as q
where q.total <=1000
order by q.total desc
limit 1;