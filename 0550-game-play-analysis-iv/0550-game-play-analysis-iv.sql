# Write your MySQL query statement below
select round(
    (
        select count(a.player_id)
        from activity a
        join activity b on a.player_id=b.player_id 
            and (a.player_id,a.event_date) in (
                select player_id,min(event_date) from activity group by player_id
            )
            and datediff(a.event_date,b.event_date)=-1
    )/ count(distinct player_id),2) as fraction
from activity
;