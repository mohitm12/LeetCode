# Write your MySQL query statement below
select s.user_id, round(count(case when c.action='confirmed' then c.action else null end)/count(s.user_id),2) as confirmation_rate
from signups s
left join confirmations c on s.user_id=c.user_id
group by s.user_id;